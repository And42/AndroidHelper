using JetBrains.Annotations;

namespace AndroidHelper.Interfaces
{
    public interface IZipEntry
    {
        [NotNull]
        string Name { get; }
        
        [NotNull]
        string PathInArchive { get; }
        
        bool IsFile { get; }
    }
}
