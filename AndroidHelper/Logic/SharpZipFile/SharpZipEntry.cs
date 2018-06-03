/*
using System.IO;
using AndroidHelper.Interfaces;

using ZipEntry = ICSharpCode.SharpZipLib.Zip.ZipEntry;

namespace AndroidHelper.Logic.SharpZipFile
{
    public class SharpZipEntry : IZipEntry
    {
        /// <summary>
        /// Entry name
        /// </summary>
        public string Name { get; }

        /// <summary>
        /// Entry path in archive
        /// </summary>
        public string PathInArchive { get; }

        /// <summary>
        /// Is entry a file
        /// </summary>
        public bool IsFile { get; }

        /// <summary>
        /// Zip entry associated to the current one
        /// </summary>
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
*/