/*
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using AndroidHelper.Interfaces;
using ICSharpCode.SharpZipLib.Zip;

namespace AndroidHelper.Logic.SharpZipFile
{
    internal class SharpZipFile : IZipFile
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
                    throw new System.IO.FileNotFoundException("Zip file was not found", fileName);

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
            _internalZip.BeginUpdate();

            _internalZip.Add(filePath, fullNameInArchive);

            _internalZip.CommitUpdate();
        }

        public void Delete(IZipEntry entry)
        {
            _internalZip.BeginUpdate();

            _internalZip.Delete(entry.PathInArchive);

            _internalZip.CommitUpdate();
        }

        public void Delete(IEnumerable<IZipEntry> entries)
        {
            _internalZip.BeginUpdate();

            foreach (var entry in entries)
                _internalZip.Delete(entry.PathInArchive);

            _internalZip.CommitUpdate();
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
            _internalZip.BeginUpdate();

            var pathCreation =
                directoryInArchive == null
                    ? (Func<string, string>)(file => file)
                    : file => Path.Combine(directoryInArchive, file);

            foreach (var file in files)
            {
                if (!File.Exists(file))
                    throw new System.IO.FileNotFoundException("One of the files was not found", file);

                _internalZip.Add(file, pathCreation(Path.GetFileName(file)));
            }

            _internalZip.CommitUpdate();
        }
    }
}
*/