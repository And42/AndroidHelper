using AndroidHelper.Interfaces;
using SharpCompress.Common.Zip;

namespace AndroidHelper.Logic.SharpCompress
{
    internal class SharpCompressZipEntry : IZipEntry
    {
        public string Name { get; }
        public string PathInArchive { get; }
        public bool IsFile { get; }

        public SharpCompressZipEntry(ZipEntry entry)
        {
            Name = entry.Key;
            PathInArchive = entry.Key;
            IsFile = !entry.IsDirectory;
        }
    }
}
