using System;
using System.Diagnostics;
using System.IO;
using System.Linq;
using AndroidHelper.Logic;
using AndroidHelper.Logic.Interfaces;
using AndroidHelper.Properties;
using Xunit.Abstractions;

namespace AndroidHelperTests
{
    internal static class Utils
    {
        private static readonly object ProviderLock = new object();
        private static readonly string TempFolder = Paths.TempFolder;
        
        private class TempFolderProvider : ITempFolderProvider
        {
            public string CreateTempFolder()
            {
                return CreateElement(index => $"temp_folder_{index}", folderPath => Directory.CreateDirectory(folderPath));
            }
        }
        
        private class TempFileProvider : ITempFileProvider
        {
            public string CreateTempFile()
            {
                return CreateElement(index => $"temp_file_{index}", filePath => File.Create(filePath).Close());
            }
        }
        
        [NotNull]
        public static ITempFolderProvider CreateTempFolderProvider()
        {
            return new TempFolderProvider();
        }

        [NotNull]
        public static ITempFileProvider CreateTempFileProvider()
        {
            return new TempFileProvider();
        }

        [NotNull]
        public static IProcessDataHandler CreateDataWriter([NotNull] ITestOutputHelper testOutputHelper)
        {
            if (testOutputHelper == null)
                throw new ArgumentNullException(nameof(testOutputHelper));

            return new ProcessDataCombinedHandler(data =>
            {
                if (data != null)
                    testOutputHelper.WriteLine(data);
            });
        }

        [NotNull]
        private static string CreateElement([NotNull] Func<int, string> nameProvider, [NotNull] Action<string> elementCreator)
        {
            if (nameProvider == null)
                throw new ArgumentNullException(nameof(nameProvider));
            if (elementCreator == null)
                throw new ArgumentNullException(nameof(elementCreator));

            lock (ProviderLock)
            {
                if (!Directory.Exists(TempFolder))
                    Directory.CreateDirectory(TempFolder);

                string[] existingEntries = Directory.EnumerateFileSystemEntries(TempFolder).Select(Path.GetFileName).ToArray();

                for (int index = 1; ; index++)
                {
                    string fileName = nameProvider(index);

                    if (existingEntries.Contains(fileName))
                        continue;

                    string filePath = Path.Combine(TempFolder, fileName);
                    elementCreator(filePath);
                    return filePath;
                }
            }
        }
    }
}
