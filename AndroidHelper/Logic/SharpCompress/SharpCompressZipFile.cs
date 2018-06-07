/*
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using AndroidHelper.Interfaces;
using SharpCompress.Archives;
using SharpCompress.Archives.Zip;
using SharpCompress.Common;
using SharpCompress.Readers;
using SharpCompress.Writers;

namespace AndroidHelper.Logic.SharpCompress
{
    /// <summary>
    /// This class will cause errors as it can not handle different compression types for items
    /// </summary>
    internal class SharpCompressZipFile : IZipFile
    {
        public enum ZipFileMode
        {
            Open, Create
        }

        private readonly ZipArchive _internalZip;
        private readonly MemoryStream _zipFileStream;

        public string PathOnDisk { get; }

        public SharpCompressZipFile(string fileName, ZipFileMode mode = ZipFileMode.Open)
        {
            if (mode == ZipFileMode.Open)
            {
                if (!File.Exists(fileName))
                    throw new FileNotFoundException("Zip file was not found", fileName);

                _zipFileStream = new MemoryStream(File.ReadAllBytes(fileName));
                _internalZip = ZipArchive.Open(_zipFileStream, new ReaderOptions {LeaveStreamOpen = false});
            }
            else
            {
                _internalZip = ZipArchive.Create();
            }

            PathOnDisk = fileName;
        }

        public void ExtractEntryByPath(string pathInArchive, string outputFile)
        {
            var zipEntry = _internalZip.Entries.First(en => en.Key == pathInArchive);

            zipEntry.WriteToFile(outputFile);
        }

        public void AddToArchive(string filePath, string fullNameInArchive)
        {
            _internalZip.AddEntry(fullNameInArchive, File.OpenRead(filePath), true);
        }

        public void Delete(IZipEntry entry)
        {
            var zipEntry = _internalZip.Entries.First(en => en.Key == entry.PathInArchive);

            _internalZip.RemoveEntry(zipEntry);
        }

        public void Delete(IEnumerable<IZipEntry> entries)
        {
            var zipEntries = _internalZip.Entries;

            var entriesDict = zipEntries.ToDictionary(it => it.Key, it => it);

            foreach (var entry in entries)
                _internalZip.RemoveEntry(entriesDict[entry.PathInArchive]);
        }

        public void DeleteDirectory(string pathInArchive)
        {
            if (string.IsNullOrEmpty(pathInArchive))
                throw new ArgumentException($"{nameof(pathInArchive)} is null or empty");

            if (!pathInArchive.EndsWith("/"))
                pathInArchive += "/";

            var entries = _internalZip.Entries.Where(entry => entry.Key.StartsWith(pathInArchive)).ToList();

            entries.ForEach(entry => _internalZip.RemoveEntry(entry));
        }

        public IEnumerable<IZipEntry> GetEntries()
        {
            return _internalZip.Entries.Select(it => new SharpCompressZipEntry(it));
        }

        public void Save()
        {
            using (var stream = File.Create(PathOnDisk))
                _internalZip.SaveTo(stream, new WriterOptions(CompressionType.Deflate) {LeaveStreamOpen = true});
        }

        public void Dispose()
        {
            _internalZip.Dispose();
            _zipFileStream?.Dispose();
        }
    }
}
*/