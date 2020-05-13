using System;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Text;
using AndroidHelper.Logic;
using AndroidHelper.Logic.Interfaces;
using AndroidHelper.Logic.Utils;
using Xunit;
using Xunit.Abstractions;

namespace AndroidHelperTests.Logic
{
    public class ApktoolTests
    {
        private static readonly ITempFolderProvider TempFolderProvider = Utils.CreateTempFolderProvider();
        private static readonly ITempFileProvider TempFileProvider = Utils.CreateTempFileProvider();

        private static readonly string StartFolder = Path.Combine(Paths.Start, nameof(ApktoolTests));

        private readonly ITestOutputHelper _output;

        public ApktoolTests(ITestOutputHelper output)
        {
            _output = output;
        }

        [Fact]
        public void Baksmali()
        {
            CheckAllInDir(Path.Combine(StartFolder, nameof(Baksmali)), CheckApkBaksmali);
        }

        [Fact]
        public void Sign()
        {
            Encoding.RegisterProvider(CodePagesEncodingProvider.Instance);
            CheckAllInDir(Path.Combine(StartFolder, nameof(Sign)), CheckApkSigning);
        }

        [Fact]
        public void RemoveMetaInf()
        {
            Encoding.RegisterProvider(CodePagesEncodingProvider.Instance);
            CheckAllInDir(Path.Combine(StartFolder, nameof(RemoveMetaInf)), CheckApkRemoveMetaInf);
        }

        private void CheckAllInDir(string directory, Action<string> checker)
        {
            foreach (string file in Directory.EnumerateFiles(directory))
            {
                _output.WriteLine($"Checking file: `{file}`\n");
                checker(file);
            }
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
                File.Copy(fileToProcess, apkCopy.TempFile, true);

                apktool.Baksmali(apkCopy.TempFile, tempFolderWrapper.TempFolder, TempFolderProvider, null);
            }
        }

        private static void CheckApkSigning(string fileToProcess)
        {
            Assert.True(File.Exists(fileToProcess));

            IApktool apktool = new Apktool.Builder()
                .JavaPath(Paths.Java)
                .SignApkPath(Paths.SignApk)
                .DefaultKeyPemPath(Paths.KeyPemPath)
                .DefaultKeyPkPath(Paths.KeyPkPath)
                .Build();

            using (var apkCopy = TempUtils.UseTempFile(TempFileProvider))
            using (var apkSigned = TempUtils.UseTempFile(TempFileProvider))
            {
                File.Copy(fileToProcess, apkCopy.TempFile, true);

                apktool.Sign(apkCopy.TempFile, apkSigned.TempFile, TempFileProvider, null, true);

                var signedApkInfo = new FileInfo(apkSigned.TempFile);

                Assert.True(signedApkInfo.Exists);
                Assert.NotEqual(0, signedApkInfo.Length);
                
                using (var sourceZip = ZipStorer.Open(apkCopy.TempFile, FileAccess.Read))
                using (var signedZip = ZipStorer.Open(apkSigned.TempFile, FileAccess.Read))
                {
                    var sourceEntries =
                        sourceZip.ReadCentralDir().ToDictionary(it => it.FilenameInZip, it => it.Method);
                    foreach (var signedEntry in signedZip.ReadCentralDir())
                    {
                        if (signedEntry.FilenameInZip.StartsWith("META-INF/"))
                            continue;
                    
                        ZipStorer.Compression sourceCompression;
                        Assert.True(sourceEntries.TryGetValue(signedEntry.FilenameInZip, out sourceCompression));
                        Assert.Equal(sourceCompression, signedEntry.Method);
                    }
                }
            }
        }

        private static void CheckApkRemoveMetaInf(string fileToProcess)
        {
            IApktool apktool = new Apktool.Builder().Build();

            using (var apkCopy = TempUtils.UseTempFile(TempFileProvider))
            {
                File.Copy(fileToProcess, apkCopy.TempFile, true);

                apktool.RemoveMetaInf(apkCopy.TempFile);

                using (var zip = ZipStorer.Open(apkCopy.TempFile, FileAccess.Read))
                {
                    Assert.True(zip.ReadCentralDir().TrueForAll(entry => !entry.FilenameInZip.StartsWith("META-INF/")));
                }
            }
        }
    }
}
