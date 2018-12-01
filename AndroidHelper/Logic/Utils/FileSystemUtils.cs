using System.IO;
using JetBrains.Annotations;

namespace AndroidHelper.Logic.Utils
{
    internal static class FileSystemUtils
    {
        public static void DeleteFile([CanBeNull] string fileName)
        {
            if (string.IsNullOrEmpty(fileName))
                return;
            
            if (File.Exists(fileName))
                File.Delete(fileName);
        }

        public static void DeleteDirectory([CanBeNull] string directoryPath)
        {
            if (string.IsNullOrEmpty(directoryPath))
                return;
            
            if (Directory.Exists(directoryPath))
                Directory.Delete(directoryPath, true);
        }
    }
}
