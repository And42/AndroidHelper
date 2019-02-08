using System.Reflection;
using static System.IO.Path;

namespace AndroidHelperTests
{
    internal static class Paths
    {
        // url doesn't work with # signs in path:
        // https://stackoverflow.com/a/28319367
        public static readonly string Start =
            GetFullPath(
                Combine(
                    GetDirectoryName(
                        Assembly.GetExecutingAssembly().CodeBase.Substring("file:///".Length)
                    ) ?? string.Empty,
                    "..", "..", "Resources"
                )
            );

        private static readonly string ApktoolResources = Combine(Start, "apktool_resources");
        public static readonly string Original = Combine(Start, "original");

        public static readonly string TempFolder = Combine(Start, "temp");

        public static readonly string EmpireManifest = Combine(Original, "Empire_VS_Orcs_dcmp", "AndroidManifest.xml");
        public static readonly string EmpireApk = Combine(Original, "Empire_VS_Orcs.apk");
        public static readonly string OpenZipTestApk = Combine(Original, "open zip test.apk");
        public static readonly string TestFilesFolder = Original;
        public static readonly string AdditFilesFolder = Combine(GetDirectoryName(TestFilesFolder), "Test addit files");
        public static readonly string MultiDexApk = Combine(Original, "multi dex test.apk");
        public static readonly string MainSmali = Combine(Start, "main_smali");

        public static readonly string Java = Combine(ApktoolResources, "jre", "bin", "java.exe");
        public static readonly string Apktool = Combine(ApktoolResources, "apktool.jar");
        public static readonly string Baksmali = Combine(ApktoolResources, "baksmali.jar");
        public static readonly string Smali = Combine(ApktoolResources, "smali.jar");
        public static readonly string SignApk = Combine(ApktoolResources, "signapk.jar");
        public static readonly string KeyPemPath = Combine(ApktoolResources, "testkey.x509.pem");
        public static readonly string KeyPkPath = Combine(ApktoolResources, "testkey.pk8");
    }
}
