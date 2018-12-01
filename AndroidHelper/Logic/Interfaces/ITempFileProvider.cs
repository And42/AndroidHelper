using JetBrains.Annotations;

namespace AndroidHelper.Logic.Interfaces
{
    public interface ITempFileProvider
    {
        /// <summary>
        /// Creates a temp file on the disk and returns the path to it
        /// </summary>
        [NotNull]
        string CreateTempFile();
    }
}