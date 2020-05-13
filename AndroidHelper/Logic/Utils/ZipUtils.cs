using AndroidHelper.Interfaces;
using JetBrains.Annotations;

namespace AndroidHelper.Logic.Utils
{
    public static class ZipUtils
    {
        public static IZipFile OpenZipFile([NotNull] string filePath, ZipFileMode mode)
        {
            return new SystemIOZipFile.SystemIOZipFile(filePath, mode);
        }
    }
}
