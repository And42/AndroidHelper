using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using AndroidHelper.Interfaces;
using ICSharpCode.SharpZipLib.Zip;
using JetBrains.Annotations;

namespace AndroidHelper.Logic.SharpZip
{
    public class SharpZipFile : IZipFile
    {
        private static class SharpZipLibReflectionFixes
        {
            private static readonly MethodInfo CheckUpdatingMethod; // () -> void
            private static readonly MethodInfo GetTransformedFileNameMethod; // (string) -> string
            private static readonly MethodInfo GetTransformedDirectoryNameMethod; // (string) -> string

            private static readonly FieldInfo ContentsEditedField; // bool
            private static readonly FieldInfo UpdatesField;     // List<ZipUpdate>
            private static readonly FieldInfo UpdateCountField; // long
            private static readonly FieldInfo UpdateIndexField; // Dictionary<string, int>

            static SharpZipLibReflectionFixes()
            {
                Type zipFileType = typeof(ZipFile);

                CheckUpdatingMethod = GetPrivateMethod(zipFileType, "CheckUpdating");
                GetTransformedFileNameMethod = GetPrivateMethod(zipFileType, "GetTransformedFileName");
                GetTransformedDirectoryNameMethod = GetPrivateMethod(zipFileType, "GetTransformedDirectoryName");

                ContentsEditedField = GetPrivateField(zipFileType, "contentsEdited_");
                UpdatesField = GetPrivateField(zipFileType, "updates_");
                UpdateCountField = GetPrivateField(zipFileType, "updateCount_");
                UpdateIndexField = GetPrivateField(zipFileType, "updateIndex_");
            }

            // see: https://github.com/icsharpcode/SharpZipLib/issues/82
            public static void DeleteEntry([NotNull] ZipFile zipFile, [NotNull] ZipEntry zipEntry)
            {
                if (zipFile == null)
                    throw new ArgumentNullException(nameof(zipFile));
                if (zipEntry == null)
                    throw new ArgumentNullException(nameof(zipEntry));

                CheckUpdatingMethod.Invoke(zipFile, Array.Empty<object>());

                int index = FindExistingUpdate(zipFile, zipEntry);
                if (index >= 0)
                {
                    ContentsEditedField.SetValue(zipFile, true);
                    ((IList) UpdatesField.GetValue(zipFile))[index] = null;
                    UpdateCountField.SetValue(zipFile, (long)UpdateCountField.GetValue(zipFile) - 1);
                }
                else
                {
                    throw new ZipException("Cannot find entry to delete");
                }
            }

            private static int FindExistingUpdate([NotNull] ZipFile zipFile, [NotNull] ZipEntry entry)
            {
                int result = -1;

                string convertedName;
                if (entry.IsDirectory)
                    convertedName = (string)GetTransformedDirectoryNameMethod.Invoke(zipFile, new object[] {entry.Name});
                else
                    convertedName = (string)GetTransformedFileNameMethod.Invoke(zipFile, new object[] {entry.Name});

                var updateIndex = (Dictionary<string, int>)UpdateIndexField.GetValue(zipFile);
                if (updateIndex.ContainsKey(convertedName))
                {
                    result = updateIndex[convertedName];
                }

                return result;
            }

            [CanBeNull]
            private static MethodInfo GetPrivateMethod(Type elementType, string method)
            {
                return elementType.GetMethod(method, BindingFlags.NonPublic | BindingFlags.Instance);
            }

            [CanBeNull]
            private static FieldInfo GetPrivateField(Type elementType, string field)
            {
                return elementType.GetField(field, BindingFlags.NonPublic | BindingFlags.Instance);
            }
        }

        public string PathOnDisk { get; }

        [NotNull]
        // can be `null` only after `Dispose` is called
        private ZipFile _internalZip;

        private bool _isDisposed;

        public SharpZipFile(
            [NotNull] string fileName,
            ZipFileMode mode = ZipFileMode.Open
        )
        {
            if (fileName == null)
                throw new ArgumentNullException(nameof(fileName));
            
            PathOnDisk = fileName;  
            
            if (mode == ZipFileMode.Open)
            {
                if (!File.Exists(fileName))
                    throw new FileNotFoundException("Zip file was not found", fileName);

                _internalZip = new ZipFile(fileName);
            }
            else
            {
                _internalZip = ZipFile.Create(fileName);
            }    
        }

        public void ExtractEntryByPath(
            string pathInArchive,
            string outputFile
        )
        {
            CheckIfDisposed();

            if (pathInArchive == null)
                throw new ArgumentNullException(nameof(pathInArchive));
            if (outputFile == null)
                throw new ArgumentNullException(nameof(outputFile));
            
            ZipEntry entry = _internalZip.GetEntry(pathInArchive);

            using (FileStream output = File.Create(outputFile))
            {
                var buffer = new byte[4096];

                using (Stream entryStream = _internalZip.GetInputStream(entry))
                    ICSharpCode.SharpZipLib.Core.StreamUtils.Copy(entryStream, output, buffer);
            }
        }

        public void AddToArchive(
            [NotNull] string filePath,
            [NotNull] string fullNameInArchive
        )
        {
            CheckIfDisposed();

            if (filePath == null)
                throw new ArgumentNullException(nameof(filePath));
            if (fullNameInArchive == null)
                throw new ArgumentNullException(nameof(fullNameInArchive));
            
            using (UpdateDisposable())
                _internalZip.Add(filePath, fullNameInArchive);
        }

        public void AddToArchive(
            string filePath,
            string fullNameInArchive,
            CompressionType compressionType
        )
        {
            CheckIfDisposed();

            if (filePath == null)
                throw new ArgumentNullException(nameof(filePath));
            if (fullNameInArchive == null)
                throw new ArgumentNullException(nameof(fullNameInArchive));
            
            using (UpdateDisposable())
            {
                _internalZip.Add(new StaticDiskDataSource(filePath), fullNameInArchive, 
                    compressionType == CompressionType.Deflate ? CompressionMethod.Deflated : CompressionMethod.Stored
                );
            }
        }

        public void Delete(IZipEntry entry)
        {
            CheckIfDisposed();

            if (entry == null)
                throw new ArgumentNullException(nameof(entry));

            using (UpdateDisposable())
            {
                SharpZipLibReflectionFixes.DeleteEntry(_internalZip, CastEntry(entry).ZipEntry);
            }
        }

        public void Delete(IEnumerable<IZipEntry> entries)
        {
            CheckIfDisposed();

            if (entries == null)
                throw new ArgumentNullException(nameof(entries));
            
            using (UpdateDisposable())
                foreach (SharpZipEntry entry in entries.Select(CastEntry))
                    SharpZipLibReflectionFixes.DeleteEntry(_internalZip, entry.ZipEntry);
        }

        public void DeleteDirectory(string pathInArchive)
        {
            CheckIfDisposed();

            if (pathInArchive == null)
                throw new ArgumentNullException(nameof(pathInArchive));

            if (!pathInArchive.EndsWith("/"))
                pathInArchive += "/";

            IEnumerable<IZipEntry> entries = GetEntries().Where(_ => _.PathInArchive.StartsWith(pathInArchive));

            Delete(entries);
        }

        public IEnumerable<IZipEntry> GetEntries()
        {
            CheckIfDisposed();

            return _internalZip.Cast<ZipEntry>().Select(entry => new SharpZipEntry(entry));
        }

        public void AddToArchive(
            [NotNull] IEnumerable<string> files,
            [CanBeNull] string directoryInArchive = null
        )
        {
            CheckIfDisposed();

            if (files == null)
                throw new ArgumentNullException(nameof(files));
            
            using (UpdateDisposable())
            {
                Func<string, string> pathCreation =
                    directoryInArchive == null
                        ? (Func<string, string>)(file => file)
                        : file => Path.Combine(directoryInArchive, file);

                foreach (string file in files)
                {
                    if (!File.Exists(file))
                        throw new FileNotFoundException("One of the files was not found", file);

                    _internalZip.Add(file, pathCreation(Path.GetFileName(file)));
                }
            }
        }

        public void ReplaceFile(IZipEntry entry, string filePath)
        {
            CheckIfDisposed();

            if (entry == null)
                throw new ArgumentNullException(nameof(entry));
            if (filePath == null)
                throw new ArgumentNullException(nameof(filePath));

            SharpZipEntry sharpEntry = CastEntry(entry);

            using (UpdateDisposable())
            {
                _internalZip.Delete(sharpEntry.ZipEntry);
                _internalZip.Add(new StaticDiskDataSource(filePath), entry.PathInArchive, sharpEntry.ZipEntry.CompressionMethod);
            }
        }

        public void Save()
        {
            CheckIfDisposed();
        }

        public IZipEntry GetEntry(string entryName)
        {
            CheckIfDisposed();

            if (entryName == null)
                throw new ArgumentNullException(entryName);

            ZipEntry entry = _internalZip.GetEntry(entryName);

            if (entry == null)
                return null;

            return new SharpZipEntry(entry);
        }

        public void Dispose()
        {
            if (_isDisposed)
                return;

            _isDisposed = true;
            _internalZip.Close();
            // ReSharper disable once AssignNullToNotNullAttribute
            _internalZip = null;
        }

        [NotNull]
        private SharpZipEntry CastEntry([NotNull] IZipEntry zipEntry)
        {
            if (zipEntry == null)
                throw new ArgumentNullException(nameof(zipEntry));

            return zipEntry as SharpZipEntry ?? throw new ArgumentException($"`{nameof(zipEntry)}` must be of type `{nameof(SharpZipEntry)}`");
        }

        private void CheckIfDisposed()
        {
            if (_isDisposed)
                throw new ObjectDisposedException(nameof(SharpZipFile));
        }

        [NotNull]
        private IDisposable UpdateDisposable()
        {
            return new SharpZipUpdateDisposable(_internalZip);
        }
    }
}