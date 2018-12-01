using System;
using System.Collections.Generic;
using AndroidHelper.Logic;
using AndroidHelper.Logic.Zip;
using JetBrains.Annotations;

namespace AndroidHelper.Interfaces
{
    public interface IZipFile : IDisposable
    {
        [NotNull]
        string PathOnDisk { get; }

        void ExtractEntryByPath(
            [NotNull] string pathInArchive,
            [NotNull] string outputFile
        );

        void AddToArchive(
            [NotNull] string filePath,
            [NotNull] string fullNameInArchive,
            CompressionType compressionType = CompressionType.Deflate
        );

        /// <summary>
        /// Удаляет запись из архива
        /// </summary>
        /// <param name="entry">Запись для удаления</param>
        /// <exception cref="EntryNotFoundException">При отсутствии записи в архиве</exception>
        void Delete([NotNull] IZipEntry entry);

        void Delete([NotNull] IEnumerable<IZipEntry> entries);

        void ReplaceFile(
            [NotNull] IZipEntry entry,
            [NotNull] string filePath
        );

        void DeleteDirectory([NotNull] string pathInArchive);

        void Save();

        [NotNull]
        IEnumerable<IZipEntry> GetEntries();

        [CanBeNull]
        IZipEntry GetEntry([NotNull] string entryName);
    }
}
