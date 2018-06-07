using System;
using System.Collections.Generic;
using AndroidHelper.Logic;

namespace AndroidHelper.Interfaces
{
    public interface IZipFile : IDisposable
    {
        string PathOnDisk { get; }

        void ExtractEntryByPath(string pathInArchive, string outputFile);

        void AddToArchive(string filePath, string fullNameInArchive, CompressionType compressionType = CompressionType.Deflate);

        void Delete(IZipEntry entry);

        void Delete(IEnumerable<IZipEntry> entries);

        void ReplaceFile(IZipEntry entry, string filePath);

        void DeleteDirectory(string pathInArchive);

        void Save();

        IEnumerable<IZipEntry> GetEntries();

        IZipEntry GetEntry(string entryName);
    }
}
