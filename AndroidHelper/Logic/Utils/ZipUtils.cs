using AndroidHelper.Interfaces;
using AndroidHelper.Logic.SharpZip;

namespace AndroidHelper.Logic.Utils
{
    internal static class ZipUtils
    {
        public static IZipFile OpenZipFile(string filePath)
        {
            //return new SharpCompressZipFile(filePath);
            return new SharpZipFile(filePath);
        }

        public static IZipFile CreateZipFile(string filePath)
        {
            //return new SharpCompressZipFile(filePath, SharpCompressZipFile.ZipFileMode.Create);
            return new SharpZipFile(filePath, ZipFileMode.Create);
        }
    }
}
