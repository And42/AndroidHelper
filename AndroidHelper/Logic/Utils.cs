using Alphaleonis.Win32.Filesystem;
using AndroidHelper.Interfaces;
using AndroidHelper.Logic.SharpCompress;

namespace AndroidHelper.Logic
{
    internal static class Utils
    {
        public static void DeleteFile(string fileName)
        {
            if (File.Exists(fileName))
                File.Delete(fileName);
        }

        public static void DeleteDirectory(string directoryPath)
        {
            if (Directory.Exists(directoryPath))
                Directory.Delete(directoryPath, true);
        }

        public static IZipFile OpenZipFile(string filePath)
        {
            return new SharpCompressZipFile(filePath);
            //return new SharpZipFile(filePath);
        }

        public static IZipFile CreateZipFile(string filePath)
        {
            return new SharpCompressZipFile(filePath, SharpCompressZipFile.ZipFileMode.Create);
            //return new SharpZipFile(filePath, SharpZipFile.ZipFileMode.Create);
        }
    }
}
