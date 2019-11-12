using AndroidHelper.Logic;
using JetBrains.Annotations;

namespace AndroidHelper.Interfaces
{
    public interface IZipEntry
    {
        [NotNull]
        string Name { get; }
        
        [NotNull]
        string PathInArchive { get; }
        
        CompressionType CompressionType { get; }

        bool IsFile { get; }
    }
}
