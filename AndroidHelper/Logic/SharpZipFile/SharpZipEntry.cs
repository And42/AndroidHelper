using Alphaleonis.Win32.Filesystem;
using AndroidHelper.Interfaces;
using ZipEntry = ICSharpCode.SharpZipLib.Zip.ZipEntry;

namespace AndroidHelper.Logic.SharpZipFile
{
    public class SharpZipEntry : IZipEntry
    {
        public string Name { get; }
        public string PathInArchive { get; }
        public bool IsFile { get; }
        public ZipEntry ZipEntry { get; }

        public SharpZipEntry(ZipEntry entry)
        {
            Name = Path.GetFileName(entry.Name);
            PathInArchive = entry.Name;
            IsFile = entry.IsFile;
            ZipEntry = entry;
        }
    }
}
