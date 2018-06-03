using System.IO;
using System.IO.Compression;
using System.Linq;
using AndroidHelper.Logic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AndroidHelperTests
{
    [TestClass]
    public class ApktoolsTests
    {
        private readonly string _apktoolsTestsFolder = Path.Combine(Paths.FilesFolder, "Apktools");

        [TestMethod]
        public void RemoveMetaInf_Tests()
        {
            var testFolder = Path.Combine(_apktoolsTestsFolder, "RemoveMetaInf");

            string[] files = {"1", "2"};

            foreach (var file in files)
                RemoveMetaInfTest(Path.Combine(testFolder, file + ".apk"));
        }

        [TestMethod]
        public void Baksmali_Test()
        {
            var apkFile = Path.Combine(_apktoolsTestsFolder, "Baksmali", "launcherpp.apk");

            var tempFile = MakeTempName(apkFile);

            var apktools = new Apktools(tempFile, Paths.ApktoolResources);

            try
            {
                apktools.Baksmali();
            }
            finally
            {
                File.Delete(tempFile);
                Directory.Delete(apktools.FolderOfProject, true);
            }
        }

        [TestMethod]
        public void Sign_Test()
        {
            var apkFile = Path.Combine(_apktoolsTestsFolder, "Sign", "launcherpp.apk");

            var tempFile = MakeTempName(apkFile);

            var apktools = new Apktools(tempFile, Paths.ApktoolResources);

            string signed = null;

            try
            {
                Assert.AreEqual(true, apktools.Sign(tempFile, out signed));
            }
            finally
            {
                File.Delete(tempFile);

                if (!string.IsNullOrEmpty(signed))
                    File.Delete(signed);

                if (!string.IsNullOrEmpty(apktools.SignedApk))
                    File.Delete(apktools.SignedApk);

                if (Directory.Exists(apktools.FolderOfProject))
                    Directory.Delete(apktools.FolderOfProject, true);
            }
        }


        private static void RemoveMetaInfTest(string apkFile)
        {
            var tempFile = MakeTempName(apkFile);

            try
            {
                using (var zip = ZipStorer.Open(tempFile, FileAccess.Read))
                {
                    Assert.AreEqual(true,
                        zip.ReadCentralDir().Any(entry => entry.FilenameInZip.StartsWith("META-INF/")));
                }

                Apktools.RemoveMetaInf(tempFile);

                using (var zip = ZipStorer.Open(tempFile, FileAccess.Read))
                {
                    Assert.AreEqual(true,
                        zip.ReadCentralDir().TrueForAll(entry => !entry.FilenameInZip.StartsWith("META-INF/")));
                }
            }
            finally
            {
                File.Delete(tempFile);
            }
        }

        private static string MakeTempName(string name)
        {
            var fileInfo = new FileInfo(name);

            var tempFile = Path.Combine(fileInfo.DirectoryName ?? "", $"{fileInfo.Name.Remove(fileInfo.Name.Length - fileInfo.Extension.Length)}_temp{fileInfo.Extension}");

            File.Copy(name, tempFile, true);

            return tempFile;
        }
    }
}
