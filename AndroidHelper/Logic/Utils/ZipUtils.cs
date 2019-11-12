using AndroidHelper.Interfaces;
using JetBrains.Annotations;

namespace AndroidHelper.Logic.Utils
{
    internal static class ZipUtils
    {
        public static IZipFile OpenZipFile([NotNull] string filePath)
        {
            return new SystemIOZipFile.SystemIOZipFile(filePath);
        }

        public static IZipFile CreateZipFile([NotNull] string filePath)
        {
            return new SystemIOZipFile.SystemIOZipFile(filePath, ZipFileMode.Create);
        }
    }
}
