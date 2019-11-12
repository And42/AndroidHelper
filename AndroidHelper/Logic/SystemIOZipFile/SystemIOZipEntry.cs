using System.IO.Compression;
using AndroidHelper.Interfaces;
using JetBrains.Annotations;

namespace AndroidHelper.Logic.SystemIOZipFile
{
    public class SystemIOZipEntry : IZipEntry
    {
        public string Name { get; }

        public string PathInArchive { get; }

        public CompressionType CompressionType { get; }

        public bool IsFile { get; }

        public SystemIOZipEntry([NotNull] ZipArchiveEntry zipEntry)
        {
            Name = zipEntry.Name;
            PathInArchive = zipEntry.FullName;
            // not really accurate solution, but as a close one works ok
            CompressionType = zipEntry.CompressedLength == zipEntry.Length ? CompressionType.Store : CompressionType.Deflate;
            IsFile = true;
        }
    }
}
