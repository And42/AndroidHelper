using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using AndroidHelper.Logic;
using AndroidHelper.Logic.Interfaces;
using AndroidHelper.Logic.Utils;
using JetBrains.Annotations;
using Xunit;
using Xunit.Abstractions;

namespace AndroidHelperTests.Logic
{
    public class CustomTests
    {
        [NotNull]
        private static readonly ITempFileProvider TempFileProvider = Utils.CreateTempFileProvider();
        [NotNull]
        private static readonly ITempFolderProvider TempFolderProvider = Utils.CreateTempFolderProvider();

        [NotNull]
        private readonly ITestOutputHelper _testOutputHelper;

        public CustomTests([NotNull] ITestOutputHelper testOutputHelper)
        {
            if (testOutputHelper == null)
                throw new ArgumentNullException(nameof(testOutputHelper));

            _testOutputHelper = testOutputHelper;
        }

        [Fact]
        public void ApkAsZip()
        {
            IApktool apktool = new Apktool.Builder()
                .JavaPath(Paths.Java)
                .ApktoolPath(Paths.Apktool)
                .Build();

            using (var tempManifest = TempUtils.UseTempFile(TempFileProvider))
            {
                apktool.ExtractSimpleManifest(Paths.OpenZipTestApk, tempManifest.TempFile, TempFolderProvider);

                var fileInfo = new FileInfo(tempManifest.TempFile);

                Assert.True(fileInfo.Exists);
                Assert.NotEqual(0, fileInfo.Length);
            }
        }

        [Fact]
        public void BaksmaliMultiDex()
        {
            IApktool apktool = new Apktool.Builder()
                .JavaPath(Paths.Java)
                .BaksmaliPath(Paths.Baksmali)
                .Build();
            
            using (var apkCopy = TempUtils.UseTempFile(TempFileProvider))
            using (var decompiledFolder = TempUtils.UseTempFolder(TempFolderProvider))
            {
                File.Copy(Paths.MultiDexApk, apkCopy.TempFile, true);

                apktool.Baksmali(
                    apkCopy.TempFile,
                    decompiledFolder.TempFolder,
                    TempFolderProvider,
                    Utils.CreateDataWriter(_testOutputHelper)
                );

                string[] directoriesToExist = { "smali", "smali_classes2", "smali_classes3", "smali_classes4" };

                var expected = new HashSet<string>(directoriesToExist);
                var actual = new HashSet<string>(Directory.EnumerateDirectories(decompiledFolder.TempFolder).Select(Path.GetFileName));

                Assert.Equal(expected, actual);
            }
        }

        [Fact]
        public void BaksmaliAndSmaliMultiDex()
        {
            IApktool baksmaliApktool = new Apktool.Builder()
                .JavaPath(Paths.Java)
                .BaksmaliPath(Paths.Baksmali)
                .Build();

            IApktool smaliApktool = new Apktool.Builder()
                .JavaPath(Paths.Java)
                .SmaliPath(Paths.Smali)
                .Build();

            using (var apkCopy = TempUtils.UseTempFile(TempFileProvider))
            using (var decompiledFolder = TempUtils.UseTempFolder(TempFolderProvider))
            using (var compiledFolder = TempUtils.UseTempFolder(TempFolderProvider))
            {
                File.Copy(Paths.MultiDexApk, apkCopy.TempFile, true);

                baksmaliApktool.Baksmali(
                    apkCopy.TempFile,
                    decompiledFolder.TempFolder,
                    TempFolderProvider,
                    Utils.CreateDataWriter(_testOutputHelper)
                );

                smaliApktool.Smali(
                    decompiledFolder.TempFolder,
                    compiledFolder.TempFolder,
                    Utils.CreateDataWriter(_testOutputHelper)
                );

                string[] filesToExist = { "classes.dex", "classes2.dex", "classes3.dex", "classes4.dex" };

                var expected = new HashSet<string>(filesToExist);
                var actual = new HashSet<string>(Directory.EnumerateFiles(compiledFolder.TempFolder).Select(Path.GetFileName));

                Assert.Equal(expected, actual);
            }
        }
    }
}
