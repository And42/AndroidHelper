using System.IO;
using System.Reflection;

namespace AndroidHelperTests
{
    static class Paths
    {
#if DEBUG
        private const string Folder = @"G:\Programming\MyLang\Libs\AndroidLibsTest\bin\Release";
#else
        private static readonly string Folder = 
            Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);
#endif

        private static readonly string Start = Folder + "\\Test files origin\\";

        public static readonly string FilesFolder = Path.Combine(Folder, "Test files");

        public static readonly string StartCopy = Path.GetDirectoryName(Path.GetDirectoryName(Start)) + @"\Test files copy";
        public static readonly string EmpireManifest = Start + "Empire_VS_Orcs_dcmp\\AndroidManifest.xml";
        public static readonly string EmpireApk = Start + "Empire_VS_Orcs.apk";
        public static readonly string OpenZipTestApk = Start + "open zip test.apk";
        public static readonly string RemoveMetaInfApk = Start + "remove meta inf test.apk";
        public static readonly string RemoveMetaInfErrorApk = Start + "remove meta inf zip error test.apk";
        public static readonly string SigningApk = Start + "signing test.apk";
        public static readonly string SigningCorruptedApk = Start + "signing corrupted zip test.apk";
        public static readonly string ApktoolResources = Start + "apktool_resources";
        public static readonly string TestFilesFolder = Start.Remove(Start.Length - 1);
        public static readonly string AdditFilesFolder = $"{Path.GetDirectoryName(TestFilesFolder)}\\Test addit files";
        public static readonly string MultiDexApk = Start + "multi dex test.apk";
    }
}
