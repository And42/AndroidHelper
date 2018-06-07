using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using AndroidHelper.Interfaces;
using ICSharpCode.SharpZipLib.Zip;

namespace AndroidHelper.Logic.SharpZip
{
    public class SharpZipFile : IZipFile
    {
        public enum ZipFileMode
        {
            Open, Create
        }

        public string PathOnDisk { get; }

        private readonly ZipFile _internalZip;

        public SharpZipFile(string fileName, ZipFileMode mode = ZipFileMode.Open)
        {
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

            PathOnDisk = fileName;          
        }

        public void Dispose()
        {
             _internalZip.Close();
        }

        public void ExtractEntryByPath(string pathInArchive, string outputFile)
        {
            var entry = _internalZip.GetEntry(pathInArchive);

            var output = File.Create(outputFile);

            var buffer = new byte[4096];

            using (var entryStream = _internalZip.GetInputStream(entry))
                ICSharpCode.SharpZipLib.Core.StreamUtils.Copy(entryStream, output, buffer);

            output.Close();
        }

        public void AddToArchive(string filePath, string fullNameInArchive)
        {
            using (UpdateDisposable())
            {
                _internalZip.Add(filePath, fullNameInArchive);
            }
        }

        public void AddToArchive(string filePath, string fullNameInArchive, CompressionType compressionType)
        {
            using (UpdateDisposable())
            {
                _internalZip.Add(new StaticDiskDataSource(filePath), fullNameInArchive, 
                    compressionType == CompressionType.Deflate ? CompressionMethod.Deflated : CompressionMethod.Stored
                );
            }
        }

        public void Delete(IZipEntry entry)
        {
            using (UpdateDisposable())
            {
                _internalZip.Delete(entry.PathInArchive);
            }
        }

        public void Delete(IEnumerable<IZipEntry> entries)
        {
            using (UpdateDisposable())
            {
                foreach (var entry in entries)
                    _internalZip.Delete(entry.PathInArchive);
            }
        }

        public void DeleteDirectory(string pathInArchive)
        {
            if (string.IsNullOrEmpty(pathInArchive))
                throw new ArgumentException($"{nameof(pathInArchive)} is empty");

            if (!pathInArchive.EndsWith("/"))
                pathInArchive += "/";

            var entries = GetEntries().Where(_ => _.PathInArchive.StartsWith(pathInArchive));

            Delete(entries);
        }

        public IEnumerable<IZipEntry> GetEntries()
        {
            return _internalZip.Cast<ZipEntry>().Select(entry => new SharpZipEntry(entry));
        }

        public void AddToArchive(IEnumerable<string> files, string directoryInArchive = null)
        {
            using (UpdateDisposable())
            {
                var pathCreation =
                    directoryInArchive == null
                        ? (Func<string, string>)(file => file)
                        : file => Path.Combine(directoryInArchive, file);

                foreach (var file in files)
                {
                    if (!File.Exists(file))
                        throw new FileNotFoundException("One of the files was not found", file);

                    _internalZip.Add(file, pathCreation(Path.GetFileName(file)));
                }
            }
        }

        public void ReplaceFile(IZipEntry entry, string filePath)
        {
            if (entry == null)
                throw new ArgumentNullException(nameof(entry));
            if (filePath == null)
                throw new ArgumentNullException(nameof(filePath));

            var sharpEntry = entry as SharpZipEntry ?? throw new ArgumentException($"{nameof(entry)} must be of type {nameof(SharpZipEntry)}");

            using (UpdateDisposable())
            {
                _internalZip.Delete(sharpEntry.ZipEntry);
                _internalZip.Add(new StaticDiskDataSource(filePath), entry.PathInArchive, sharpEntry.ZipEntry.CompressionMethod);
            }
        }

        public void Save() { }

        public IZipEntry GetEntry(string entryName)
        {
            var entry = _internalZip.GetEntry(entryName);

            if (entry == null)
                return null;

            return new SharpZipEntry(entry);
        }

        private IDisposable UpdateDisposable()
        {
            return new SharpZipUpdateDisposable(_internalZip);
        }
    }
}