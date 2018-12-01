using JetBrains.Annotations;

namespace AndroidHelper.Logic.Interfaces
{
    public interface ITempFolderProvider
    {
        /// <summary>
        /// Creates a temp folder on the disk and returns the path to it
        /// </summary>
        [NotNull]
        string CreateTempFolder();
    }
}