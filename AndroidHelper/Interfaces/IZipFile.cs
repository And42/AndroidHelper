using System;
using System.Collections.Generic;

namespace AndroidHelper.Interfaces
{
    public interface IZipFile : IDisposable
    {
        string PathOnDisk { get; }

        void ExtractEntryByPath(string pathInArchive, string outputFile);

        void AddToArchive(string filePath, string fullNameInArchive);

        void Delete(IZipEntry entry);

        void Delete(IEnumerable<IZipEntry> entries);

        void DeleteDirectory(string pathInArchive);

        IEnumerable<IZipEntry> GetEntries();
    }
}
