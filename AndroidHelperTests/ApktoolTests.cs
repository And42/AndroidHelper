using System;
using System.IO;
using System.IO.Compression;
using AndroidHelper.Logic;
using AndroidHelper.Logic.Interfaces;
using AndroidHelper.Logic.Utils;
using LongPaths.Logic;
using Xunit;

namespace AndroidHelperTests
{
    public class ApktoolTests
    {
        private static readonly ITempFolderProvider TempFolderProvider = Utils.CreateTempFolderProvider();
        private static readonly ITempFileProvider TempFileProvider = Utils.CreateTempFileProvider();

        private static readonly string StartFolder = Path.Combine(Paths.Start, nameof(ApktoolTests));

        [Fact]
        public void Baksmali()
        {
            CheckAllInDir(Path.Combine(StartFolder, nameof(Baksmali)), CheckApkBaksmali);
        }

        [Fact]
        public void Sign()
        {
            CheckAllInDir(Path.Combine(StartFolder, nameof(Sign)), CheckApkSigning);
        }

        [Fact]
        public void RemoveMetaInf()
        {
            CheckAllInDir(Path.Combine(StartFolder, nameof(RemoveMetaInf)), CheckApkRemoveMetaInf);
        }

        private static void CheckAllInDir(string directory, Action<string> checker)
        {
            foreach (string file in Directory.EnumerateFiles(directory))
                checker(file);
        }

        private static void CheckApkBaksmali(string fileToProcess)
        {
            IApktool apktool = new Apktool.Builder()
                .JavaPath(Paths.Java)
                .BaksmaliPath(Paths.Baksmali)
                .Build();

            using (var apkCopy = TempUtils.UseTempFile(TempFileProvider))
            using (var tempFolderWrapper = TempUtils.UseTempFolder(TempFolderProvider))
            {
                LFile.Copy(fileToProcess, apkCopy.TempFile, true);

                apktool.Baksmali(apkCopy.TempFile, tempFolderWrapper.TempFolder, TempFolderProvider, null);
            }
        }

        private static void CheckApkSigning(string fileToProcess)
        {
            Assert.True(LFile.Exists(fileToProcess));

            IApktool apktool = new Apktool.Builder()
                .JavaPath(Paths.Java)
                .SignApkPath(Paths.SignApk)
                .DefaultKeyPemPath(Paths.KeyPemPath)
                .DefaultKeyPkPath(Paths.KeyPkPath)
                .Build();

            using (var apkCopy = TempUtils.UseTempFile(TempFileProvider))
            using (var apkSigned = TempUtils.UseTempFile(TempFileProvider))
            {
                LFile.Copy(fileToProcess, apkCopy.TempFile, true);

                apktool.Sign(apkCopy.TempFile, apkSigned.TempFile, TempFileProvider, null, true);

                var signedApkInfo = new FileInfo(apkSigned.TempFile);

                Assert.True(signedApkInfo.Exists);
                Assert.NotEqual(0, signedApkInfo.Length);
            }
        }

        private static void CheckApkRemoveMetaInf(string fileToProcess)
        {
            IApktool apktool = new Apktool.Builder().Build();

            using (var apkCopy = TempUtils.UseTempFile(TempFileProvider))
            {
                LFile.Copy(fileToProcess, apkCopy.TempFile, true);

                apktool.RemoveMetaInf(apkCopy.TempFile);

                using (var zip = ZipStorer.Open(apkCopy.TempFile, FileAccess.Read))
                {
                    Assert.True(zip.ReadCentralDir().TrueForAll(entry => !entry.FilenameInZip.StartsWith("META-INF/")));
                }
            }
        }
    }
}
