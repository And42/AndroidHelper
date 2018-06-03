using System.IO;
using System.IO.Compression;
using System.Linq;
using AndroidHelper.Logic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AndroidHelperTests
{
    [TestClass]
    public class CustomTests
    {
        [ClassInitialize]
        public static void Initialize(TestContext testContext)
        {
            if (!Directory.Exists(Paths.StartCopy))
                Directory.CreateDirectory(Paths.StartCopy);

            File.Copy(Paths.RemoveMetaInfApk, Utils.MakeTempName(Paths.RemoveMetaInfApk), true);
            File.Copy(Paths.RemoveMetaInfErrorApk, Utils.MakeTempName(Paths.RemoveMetaInfErrorApk), true);
            File.Copy(Paths.MultiDexApk, Utils.MakeTempName(Paths.MultiDexApk), true);
        }

        [TestMethod]
        public void ApkAsZipTest()
        {
            Apktools wrapper = new Apktools(Paths.OpenZipTestApk, Paths.ApktoolResources);

            wrapper.GetSimpleManifest();
        }

        [TestMethod]
        public void SigningTest()
        {
            var apktool = new Apktools(null, Paths.ApktoolResources);

            Assert.AreEqual(true, apktool.Sign(Paths.SigningApk, out string signedPath));
        }

        [TestMethod]
        public void SigningCorruptedTest()
        {
            var apktool = new Apktools(null, Paths.ApktoolResources);

            Assert.AreEqual(true, apktool.Sign(Paths.SigningCorruptedApk, out string signedPath));
        }

        [TestMethod]
        public void RemoveMetaInfErrorTest()
        {
            var tempFile = Utils.MakeTempName(Paths.RemoveMetaInfErrorApk);

            using (var zip = ZipStorer.Open(tempFile, FileAccess.Read))
            {
                Assert.AreEqual(true, zip.ReadCentralDir().Any(entry => entry.FilenameInZip.StartsWith("META-INF/")));
            }

            Apktools.RemoveMetaInf(tempFile);

            using (var zip = ZipStorer.Open(tempFile, FileAccess.Read))
            {
                Assert.AreEqual(true, zip.ReadCentralDir().TrueForAll(entry => !entry.FilenameInZip.StartsWith("META-INF/")));
            }
        }

        [TestMethod]
        public void BaksmaliMultiDexTest()
        {
            var tempFile = Utils.MakeTempName(Paths.MultiDexApk);

            var apk = new Apktools(tempFile, Paths.ApktoolResources);

            var decompiled = apk.Baksmali();

            Assert.AreEqual(true, decompiled.All(Directory.Exists), "Not all directories exist");

            Assert.AreEqual(true, Directory.Exists(Path.Combine(apk.FolderOfProject, "smali")), "Directory not exists 'smali'");
            Assert.AreEqual(true, Directory.Exists(Path.Combine(apk.FolderOfProject, "smali_classes2")), "Directory not exists 'smali_classes2'");
            Assert.AreEqual(true, Directory.Exists(Path.Combine(apk.FolderOfProject, "smali_classes3")), "Directory not exists 'smali_classes3'");
            Assert.AreEqual(true, Directory.Exists(Path.Combine(apk.FolderOfProject, "smali_classes4")), "Directory not exists 'smali_classes4'");
        }

        [ClassCleanup]
        public static void CleanUp()
        {
            var dir = Paths.OpenZipTestApk.Remove(Paths.OpenZipTestApk.Length - 4);

            if (Directory.Exists(dir))
                Directory.Delete(dir, true);

            File.Delete(Paths.RemoveMetaInfApk + ".temp");
            File.Delete(Paths.RemoveMetaInfErrorApk + ".temp");

            File.Delete(Paths.SigningApk + ".signed");
            File.Delete(Paths.SigningCorruptedApk + ".signed");

            File.Delete(Utils.MakeTempName(Paths.MultiDexApk));

            if (Directory.Exists(Paths.StartCopy))
                Directory.Delete(Paths.StartCopy, true);

            Directory.CreateDirectory(Paths.StartCopy);
        }
    }
}
