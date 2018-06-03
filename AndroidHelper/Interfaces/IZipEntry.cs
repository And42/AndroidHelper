namespace AndroidHelper.Interfaces
{
    public interface IZipEntry
    {
        string Name { get; }
        string PathInArchive { get; }
        bool IsFile { get; }
    }
}
