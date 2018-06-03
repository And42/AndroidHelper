using System.IO;
using AndroidHelper.Logic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AndroidHelperTests
{
    [TestClass]
    public class ApkModiferTest
    {
        private readonly AndroidManifestTest _manifestTest;

        public ApkModiferTest()
        {
            var apktools = new Apktools(Paths.EmpireApk, Paths.ApktoolResources);
            _manifestTest = new AndroidManifestTest(apktools.GetSimpleManifest());
        }

        [TestMethod]
        public void ApkModifer_PackageName()
        {
            _manifestTest.AndroidManifest_PackageName();
        }

        [TestMethod]
        public void ApkModifer_Activities()
        {
            _manifestTest.AndroidManifest_Activities();
        }

        [TestMethod]
        public void ApkModifer_Permissions()
        {
            _manifestTest.AndroidManifest_Permissions();
        }

        [ClassCleanup]
        public static void Cleenup()
        {
            var directories = new[]
            {
                "Empire_VS_Orcs"
            };
            foreach (var dir in directories)
            {
                string fullDir = Paths.TestFilesFolder + "\\" + dir;

                if (Directory.Exists(fullDir))
                    Directory.Delete(fullDir, true);
            }
        }
    }
}
