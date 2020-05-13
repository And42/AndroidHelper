using System;
using System.Collections.Generic;
using System.IO.Compression;
using System.Linq;
using AndroidHelper.Interfaces;
using AndroidHelper.Logic.Utils;
using AndroidHelper.Logic.Zip;
using JetBrains.Annotations;

namespace AndroidHelper.Logic.SystemIOZipFile
{
    public class SystemIOZipFile : IZipFile
    {
        private bool _isDisposed;
        [NotNull]
        private readonly ZipArchive _zipArchive;

        public void Dispose()
        {
            if (_isDisposed)
                return;

            _zipArchive.Dispose();
            _isDisposed = true;
        }

        public string PathOnDisk { get; }

        public SystemIOZipFile([NotNull] string filePath, ZipFileMode mode)
        {
            PathOnDisk = filePath;
            ZipArchiveMode archiveMode;
            switch (mode)
            {
                case ZipFileMode.Read:
                    archiveMode = ZipArchiveMode.Read;
                    break;
                case ZipFileMode.Update:
                    archiveMode = ZipArchiveMode.Update;
                    break;
                case ZipFileMode.Create:
                    archiveMode = ZipArchiveMode.Create;
                    break;
                default:
                    throw new ArgumentOutOfRangeException(nameof(mode), mode, null);
            }
            _zipArchive = ZipFile.Open(filePath, archiveMode);
        }

        public void ExtractEntryByPath(string pathInArchive, string outputFile)
        {
            CheckIfDisposed();

            var entry = _zipArchive.GetEntry(pathInArchive);
            if (entry == null)
                throw new EntryNotFoundException($"Entry \"{pathInArchive}\" not found");

            entry.ExtractToFile(outputFile, overwrite: true);
        }

        public void AddToArchive(string filePath, string fullNameInArchive, CompressionType compressionType = CompressionType.Deflate)
        {
            CheckIfDisposed();

            _zipArchive.CreateEntryFromFile(
                sourceFileName: filePath,
                entryName: fullNameInArchive,
                compressionLevel: compressionType == CompressionType.Deflate ? CompressionLevel.Optimal : CompressionLevel.NoCompression
            );
        }

        public void Delete(IZipEntry entry)
        {
            CheckIfDisposed();

            _zipArchive.GetEntry(entry.PathInArchive)?.Delete();
        }

        public void Delete(IEnumerable<IZipEntry> entries)
        {
            CheckIfDisposed();

            var filePaths = new HashSet<string>(entries.Select(it => it.PathInArchive));
            foreach (var zipEntry in _zipArchive.Entries)
                if (filePaths.Contains(zipEntry.FullName))
                    zipEntry.Delete();
        }

        public void ReplaceFile(IZipEntry entry, string filePath)
        {
            CheckIfDisposed();

            Delete(entry);
            AddToArchive(filePath, entry.PathInArchive, entry.CompressionType);
        }

        public void DeleteDirectory(string pathInArchive)
        {
            CheckIfDisposed();

            var dirPath = pathInArchive.EndsWith("/", StringComparison.Ordinal) ? pathInArchive : pathInArchive + "/";
            _zipArchive.Entries
                .ToList()
                .Where(it => it.FullName.StartsWith(dirPath, StringComparison.Ordinal))
                .ForEach(it => it.Delete());
        }

        public void Save()
        {
            CheckIfDisposed();
            // saved in dispose
        }

        public IEnumerable<IZipEntry> GetEntries()
        {
            CheckIfDisposed();

            return _zipArchive.Entries.Select(it => new SystemIOZipEntry(it));
        }

        public IZipEntry GetEntry(string entryName)
        {
            CheckIfDisposed();

            var zipEntry = _zipArchive.GetEntry(entryName);
            return zipEntry != null ? new SystemIOZipEntry(zipEntry) : null;
        }

        private void CheckIfDisposed()
        {
            if (_isDisposed)
                throw new ObjectDisposedException(nameof(SystemIOZipFile));
        }
    }
}
