using System.IO;
using System.Reflection;

namespace AndroidHelperTests.Logic
{
    internal static class Paths
    {
        // url doesn't work with # signs in path:
        // https://stackoverflow.com/a/28319367
        public static readonly string Start =
            Path.GetFullPath(
                Path.Combine(
                    Path.GetDirectoryName(
                        Assembly.GetExecutingAssembly().CodeBase.Substring("file:///".Length)
                    ) ?? string.Empty,
                    "..", "..", "Resources"
                )
            );

        private static readonly string ApktoolResources = Path.Combine(Start, "apktool_resources");
        public static readonly string Original = Path.Combine(Start, "original");

        public static readonly string TempFolder = Path.Combine(Start, "temp");

        public static readonly string EmpireManifest = Path.Combine(Original, "Empire_VS_Orcs_dcmp", "AndroidManifest.xml");
        public static readonly string EmpireApk = Path.Combine(Original, "Empire_VS_Orcs.apk");
        public static readonly string OpenZipTestApk = Path.Combine(Original, "open zip test.apk");
        public static readonly string TestFilesFolder = Original;
        public static readonly string AdditFilesFolder = Path.Combine(Path.GetDirectoryName(TestFilesFolder), "Test addit files");
        public static readonly string MultiDexApk = Path.Combine(Original, "multi dex test.apk");
        public static readonly string MainSmali = Path.Combine(Start, "main_smali");

        public static readonly string Java = Path.Combine(ApktoolResources, "jre", "bin", "java.exe");
        public static readonly string Apktool = Path.Combine(ApktoolResources, "apktool.jar");
        public static readonly string Baksmali = Path.Combine(ApktoolResources, "baksmali.jar");
        public static readonly string Smali = Path.Combine(ApktoolResources, "smali.jar");
        public static readonly string SignApk = Path.Combine(ApktoolResources, "signapk.jar");
        public static readonly string KeyPemPath = Path.Combine(ApktoolResources, "testkey.x509.pem");
        public static readonly string KeyPkPath = Path.Combine(ApktoolResources, "testkey.pk8");
    }
}
