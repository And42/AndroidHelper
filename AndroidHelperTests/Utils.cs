using System.IO;

namespace AndroidHelperTests
{
    internal static class Utils
    {
        internal static string MakeTempName(string name)
        {
            return Path.Combine(Paths.StartCopy, Path.GetFileName(name));
        }
    }
}
