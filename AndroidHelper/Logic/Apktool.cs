using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Xml;
using AndroidHelper.Interfaces;
using AndroidHelper.Logic.Interfaces;
using AndroidHelper.Logic.Utils;
using JetBrains.Annotations;

namespace AndroidHelper.Logic
{
    /// <summary>
    /// Класс для работы с андроид приложениями
    /// </summary>
    public class Apktool : IApktool
    {
        public class Builder
        {
            [CanBeNull] private string _javaPath;
            [CanBeNull] private string _apktoolPath;
            [CanBeNull] private string _signApkPath;
            [CanBeNull] private string _baksmaliPath;
            [CanBeNull] private string _smaliPath;
            [CanBeNull] private string _defaultKeyPemPath;
            [CanBeNull] private string _defaultKeyPkPath;
            
            /// <summary>
            /// Задаёт путь к java.exe
            /// </summary>
            /// <param name="path">Путь</param>
            public Builder JavaPath([CanBeNull] string path)
            {
                _javaPath = path;
                return this;
            }
            
            /// <summary>
            /// Задаёт путь к apktools.jar
            /// </summary>
            /// <param name="path">Путь</param>
            public Builder ApktoolPath([CanBeNull] string path)
            {
                _apktoolPath = path;
                return this;
            }
            
            /// <summary>
            /// Задаёт путь к signapk.jar
            /// </summary>
            /// <param name="path">Путь</param>
            public Builder SignApkPath([CanBeNull] string path)
            {
                _signApkPath = path;
                return this;
            }
            
            /// <summary>
            /// Задаёт путь к baksmali.jar
            /// </summary>
            /// <param name="path">Путь</param>
            public Builder BaksmaliPath([CanBeNull] string path)
            {
                _baksmaliPath = path;
                return this;
            }
            
            /// <summary>
            /// Задаёт путь к smali.jar
            /// </summary>
            /// <param name="path">Путь</param>
            public Builder SmaliPath([CanBeNull] string path)
            {
                _smaliPath = path;
                return this;
            }
            
            /// <summary>
            /// Задаёт путь к key.x509.pem
            /// </summary>
            /// <param name="path">Путь</param>
            public Builder DefaultKeyPemPath([CanBeNull] string path)
            {
                _defaultKeyPemPath = path;
                return this;
            }
            
            /// <summary>
            /// Задаёт путь к key.pk8
            /// </summary>
            /// <param name="path">Путь</param>
            public Builder DefaultKeyPkPath([CanBeNull] string path)
            {
                _defaultKeyPkPath = path;
                return this;
            }

            public Apktool Build()
            {
                return new Apktool(
                    _javaPath,
                    _apktoolPath,
                    _signApkPath,
                    _baksmaliPath,
                    _smaliPath,
                    _defaultKeyPemPath,
                    _defaultKeyPkPath
                );
            }
        }
        
        [NotNull]
        private static readonly Regex ErrorFileRegex = new Regex(@"[A-Z][A-Z]*:\\");
        [NotNull]
        private static readonly Regex ClassesDexRegex = new Regex(@"^classes(?<index>[\d]*).dex$");
        [NotNull]
        private static readonly Regex SmaliDexRegex = new Regex(@"^smali(_classes(?<index>[1-9]+[\d]*))?$");

        /// <inheritdoc />
        [CanBeNull]
        public string JavaPath { get; }

        /// <inheritdoc />
        [CanBeNull]
        public string ApktoolPath { get; }

        /// <inheritdoc />
        [CanBeNull]
        public string SignApkPath { get; }

        /// <inheritdoc />
        [CanBeNull]
        public string BaksmaliPath { get; }

        /// <inheritdoc />
        [CanBeNull]
        public string SmaliPath { get; }

        /// <inheritdoc />
        [CanBeNull]
        public string DefaultKeyPemPath { get; }

        /// <inheritdoc />
        [CanBeNull]
        public string DefaultKeyPkPath { get; }
        
        /// <summary>
        /// Создаёт новый экземпляр класса <see cref="Apktool"/>
        /// </summary>
        /// <param name="javaPath">Путь к java.exe</param>
        /// <param name="apktoolPath">Путь к apktools.jar</param>
        /// <param name="signApkPath">Путь к signapk.jar</param>
        /// <param name="baksmaliPath">Путь к baksmali.jar</param>
        /// <param name="smaliPath">Путь к smali.jar</param>
        /// <param name="defaultKeyPemPath">Путь к key.x509.pem</param>
        /// <param name="defaultKeyPkPath">Путь к key.pk8</param>
        private Apktool(
            [CanBeNull] string javaPath,
            [CanBeNull] string apktoolPath,
            [CanBeNull] string signApkPath,
            [CanBeNull] string baksmaliPath,
            [CanBeNull] string smaliPath,
            [CanBeNull] string defaultKeyPemPath,
            [CanBeNull] string defaultKeyPkPath
        )
        {
            JavaPath = javaPath;
            ApktoolPath = apktoolPath;
            SignApkPath = signApkPath;
            BaksmaliPath = baksmaliPath;
            SmaliPath = smaliPath;
            DefaultKeyPemPath = defaultKeyPemPath;
            DefaultKeyPkPath = defaultKeyPkPath;

            TraceWriter.WriteLine($"Apktool constructor: {nameof(javaPath)} = \"{javaPath}\"");
            TraceWriter.WriteLine($"Apktool constructor: {nameof(apktoolPath)} = \"{apktoolPath}\"");
            TraceWriter.WriteLine($"Apktool constructor: {nameof(signApkPath)} = \"{signApkPath}\"");
            TraceWriter.WriteLine($"Apktool constructor: {nameof(baksmaliPath)} = \"{baksmaliPath}\"");
            TraceWriter.WriteLine($"Apktool constructor: {nameof(smaliPath)} = \"{smaliPath}\"");
            TraceWriter.WriteLine($"Apktool constructor: {nameof(defaultKeyPemPath)} = \"{defaultKeyPemPath}\"");
            TraceWriter.WriteLine($"Apktool constructor: {nameof(defaultKeyPkPath)} = \"{defaultKeyPkPath}\"");
        }

        /// <inheritdoc />
        public void Decompile(
            [NotNull] string apkPath,
            [NotNull] string destinationFolder,
            [CanBeNull] IProcessDataHandler dataHandler
        )
        {
            if (apkPath == null)
                throw new ArgumentNullException(nameof(apkPath));
            if (destinationFolder == null)
                throw new ArgumentNullException(nameof(destinationFolder));
            
            if (ApktoolPath == null)
                throw new InvalidOperationException($"`{nameof(ApktoolPath)}` has to be set");

            TraceWriter.WriteLine("Decompiling...");

            bool isNewVersion = string.Compare(GetApktoolVersion(), "1.5.2", StringComparison.Ordinal) > 0;

            RunJava(
                ApktoolPath,
                string.Format(isNewVersion ? "d -f -o\"{0}\" \"{1}\"" : "d -f \"{1}\" \"{0}\"", destinationFolder, apkPath),
                dataHandler
            );
        }

        /// <inheritdoc />
        public void Compile(
            [NotNull] string projectFolderPath,
            [NotNull] string destinationApkPath,
            [CanBeNull] IProcessDataHandler dataHandler,
            out List<Error> errors
        )
        {
            if (projectFolderPath == null)
                throw new ArgumentNullException(nameof(projectFolderPath));
            if (destinationApkPath == null)
                throw new ArgumentNullException(nameof(destinationApkPath));
            
            errors = new List<Error>();
            var log = new StringBuilder();
            
            File.Delete(destinationApkPath);

            RunJava(
                ApktoolPath,
                $"b \"{projectFolderPath}\" -o \"{destinationApkPath}\"",
                new ProcessDataHandlerDefault(
                    data =>
                    {
                        log.AppendLine(data);
                        dataHandler?.OnOutputDataReceived(data);
                    },
                    errorData =>
                    {
                        log.AppendLine(errorData);
                        dataHandler?.OnErrorDataReceived(errorData);
                    }
                )
            );

            var lines = log.ToString().Split(new[] {'\n'}, StringSplitOptions.RemoveEmptyEntries);
            // ReSharper disable once LoopCanBeConvertedToQuery
            foreach (var line in lines)
            {
                var spl = line.Split(new[] {": error: "}, StringSplitOptions.RemoveEmptyEntries);
                if (spl.Length != 2)
                    continue;

                var fileAndLine = spl[0];
                var message = spl[1];

                string file = null;
                int lineNum = 0;

                switch (fileAndLine.Count(it => it == ':'))
                {
                    case 2:
                        file = fileAndLine.Split(':')[1].Trim();

                        break;
                    case 3:
                        int ind = fileAndLine.LastIndexOf(':');

                        file = fileAndLine.Substring(0, ind);
                        int filePathIndex = ErrorFileRegex.Match(file).Index;
                        file = file.Substring(filePathIndex);

                        lineNum = int.Parse(fileAndLine.Remove(0, ind + 1));

                        break;
                } 

                errors.Add(new Error(file, lineNum, message));
            }
        }

        /// <inheritdoc />
        public void Sign(
            [NotNull] string sourceApkPath,
            [NotNull] string signedApkPath,
            [NotNull] ITempFileProvider tempFileProvider,
            [CanBeNull] IProcessDataHandler dataHandler,
            bool deleteMetaInf
        )
        {
            if (sourceApkPath == null)
                throw new ArgumentNullException(nameof(sourceApkPath));
            if (signedApkPath == null)
                throw new ArgumentNullException(nameof(signedApkPath));
            if (tempFileProvider == null)
                throw new ArgumentNullException(nameof(tempFileProvider));

            if (SignApkPath == null)
                throw new InvalidOperationException($"`{nameof(SignApkPath)}` has to be set");
            if (DefaultKeyPemPath == null)
                throw new InvalidOperationException($"`{nameof(DefaultKeyPemPath)}` has to be set");
            if (DefaultKeyPkPath == null)
                throw new InvalidOperationException($"`{nameof(DefaultKeyPkPath)}` has to be set");

            using (var tempApk = TempUtils.UseTempFile(tempFileProvider))
            {
                File.Copy(sourceApkPath, tempApk.TempFile, true);

                if (deleteMetaInf)
                    RemoveMetaInf(tempApk.TempFile);

                RunJava(
                    SignApkPath,
                    $"\"{DefaultKeyPemPath}\" \"{DefaultKeyPkPath}\" \"{tempApk.TempFile}\" \"{signedApkPath}\"",
                    dataHandler
                );
            }
        }

        /// <inheritdoc />
        public void InstallFramework(
            [NotNull] string pathToFramework,
            [CanBeNull] IProcessDataHandler dataHandler
        )
        {
            if (pathToFramework == null)
                throw new ArgumentNullException(nameof(pathToFramework));

            if (ApktoolPath == null)
                throw new InvalidOperationException($"`{nameof(ApktoolPath)}` has to be set");

            RunJava(ApktoolPath, $"if \"{pathToFramework}\"", dataHandler);
        }

        /// <inheritdoc />
        public void Baksmali(
            [NotNull] string apkPath,
            [NotNull] string resultFolder,
            [NotNull] ITempFolderProvider tempFolderProvider,
            [CanBeNull] IProcessDataHandler dataHandler
        )
        {
            if (apkPath == null)
                throw new ArgumentNullException(nameof(apkPath));
            if (resultFolder == null)
                throw new ArgumentNullException(nameof(resultFolder));
            if (tempFolderProvider == null)
                throw new ArgumentNullException(nameof(tempFolderProvider));

            if (BaksmaliPath == null)
                throw new InvalidOperationException($"`{nameof(BaksmaliPath)}` has to be set");

            using (var zip = ZipUtils.OpenZipFile(apkPath))
            {
                using (var tempFolder = TempUtils.UseTempFolder(tempFolderProvider))
                {
                    foreach (IZipEntry entry in zip.GetEntries().Where(entry => ClassesDexRegex.IsMatch(entry.PathInArchive)))
                    {
                        string tempFile = Path.Combine(tempFolder.TempFolder, entry.Name);

                        zip.ExtractEntryByPath(entry.PathInArchive, tempFile);

                        string index = ClassesDexRegex.Match(entry.PathInArchive).Groups["index"].Value;
                        string folderName = "smali" + (string.IsNullOrEmpty(index) ? "" : $"_classes{index}");
                        string targetDir = Path.Combine(resultFolder, folderName);

                        RunJava(BaksmaliPath, $"disassemble \"{tempFile}\" -o \"{targetDir}\"", dataHandler);
                    }
                }
            }
        }

        /// <inheritdoc />
        public void Smali(
            [NotNull] string folderWithSmali,
            [NotNull] string resultFolder,
            [CanBeNull] IProcessDataHandler dataHandler
        )
        {
            if (folderWithSmali == null)
                throw new ArgumentNullException(nameof(folderWithSmali));
            if (resultFolder == null)
                throw new ArgumentNullException(nameof(resultFolder));

            if (SmaliPath == null)
                throw new InvalidOperationException($"`{nameof(SmaliPath)}` has to be set");

            var smaliFolders = 
                Directory.EnumerateDirectories(folderWithSmali)
                    .Select(dir => (dir: dir, dirName: Path.GetFileName(dir) ?? string.Empty))
                    .Where(it => SmaliDexRegex.IsMatch(it.dirName));

            foreach (var (smaliFolder, folderName) in smaliFolders)
            {
                string index = SmaliDexRegex.Match(folderName).Groups["index"].Value;
                string targetFile = Path.Combine(resultFolder, $"classes{index}.dex");

                RunJava(SmaliPath, $"assemble \"{smaliFolder}\" -o \"{targetFile}\"", dataHandler);
            }
        }

        /// <inheritdoc />
        public void ExtractSimpleManifest(
            string apkPath,
            string resultManifestPath,
            ITempFolderProvider tempFolderProvider
        )
        {
            if (apkPath == null)
                throw new ArgumentNullException(nameof(apkPath));
            if (resultManifestPath == null)
                throw new ArgumentNullException(nameof(resultManifestPath));
            if (tempFolderProvider == null)
                throw new ArgumentNullException(nameof(tempFolderProvider));

            TraceWriter.WriteLine("Extracting manifest...");

            using (var tempFolderWrapper = TempUtils.UseTempFolder(tempFolderProvider))
            {
                const string manifestFileName = "AndroidManifest.xml";

                string tempManifestFile = Path.Combine(tempFolderWrapper.TempFolder, manifestFileName);
                string tempManifestApk = Path.Combine(tempFolderWrapper.TempFolder, "AndroidManifest.apk");
                string tempManifestFolder = Path.Combine(tempFolderWrapper.TempFolder, "manifest");

                Directory.CreateDirectory(tempManifestFolder);

                // DotNetZip
                //{
                //    using (var zip = new Ionic.Zip.ZipFile(apkPath))
                //    {
                //        zip.ExtractSelectedEntries("name = AndroidManifest.xml", "", FolderOfProject);
                //    }

                //    using (var zip = new Ionic.Zip.ZipFile(manifestApk))
                //    {
                //        zip.AddFile(manifestFile, "");
                //        zip.Save();
                //    }
                //}

                // SharpZipLib
                {
                    using (var zip = ZipUtils.OpenZipFile(apkPath))
                    {
                        zip.ExtractEntryByPath(manifestFileName, tempManifestFile);
                    }

                    using (var zip = ZipUtils.CreateZipFile(tempManifestApk))
                    {
                        zip.AddToArchive(tempManifestFile, manifestFileName);
                        zip.Save();
                    }
                }

                // ZipStorer
                //{
                //    using (var zip = System.IO.Compression.ZipStorer.Open(apkPath, FileAccess.Read))
                //    {
                //        var manifestEntry = zip.ReadCentralDir().Find(entry => entry.FilenameInZip == manifestFileName);
                //        zip.ExtractFile(manifestEntry, manifestFile);
                //    }

                //    using (var zip = System.IO.Compression.ZipStorer.Create(manifestApk, string.Empty))
                //    {
                //        zip.AddFile(System.IO.Compression.ZipStorer.Compression.Store, manifestFile, manifestFileName,
                //            string.Empty);
                //    }
                //}


                Decompile(tempManifestApk, tempManifestFolder, null);
                File.Delete(resultManifestPath);
                File.Move(Path.Combine(tempManifestFolder, manifestFileName), resultManifestPath);
            }
        }

        /// <inheritdoc />
        public void FixErrors(IEnumerable<Error> errors)
        {
            if (errors == null)
                throw new ArgumentNullException(nameof(errors));
            
            foreach (var error in errors)
            {
                if (error == null)
                    throw new ArgumentNullException(nameof(error));
                
                if (error.Type == Error.ErrorType.None) continue;

                switch (error.Type)
                {
                    case Error.ErrorType.No_resource_identifier_found:
                        {
                            var match = Regex.Matches(error.Message, "'([^']*)'");
                            //TraceWriter.WriteLine(match[1].Groups[1].Value + " - " + match[0].Groups[1].Value + ":");
                            File.WriteAllText(error.File,
                                File.ReadAllText(error.File, Encoding.UTF8)
                                    .Replace(match[1].Groups[1].Value + ":" + match[0].Groups[1].Value,
                                        match[0].Groups[1].Value), Encoding.UTF8);
                        }
                        break;
                    case Error.ErrorType.No_resource_found_that_matches_the_given_name:
                        {
                            if (Path.GetFileName(error.File) != "styles.xml") break;

                            var value = Regex.Match(error.Message, "'([^']*)'").Groups[1].Value;

                            TraceWriter.WriteLine(value);

                            XmlDocument xDoc = new XmlDocument();
                            using (var input = File.OpenRead(error.File))
                                xDoc.Load(input);

                            var nodes = xDoc.SelectNodes($"//*[@name=\"{value}\"]");

                            TraceWriter.WriteLine(nodes?.Count ?? -1);

                            if (nodes != null)
                                foreach (XmlNode node in nodes)
                                    node.ParentNode?.RemoveChild(node);

                            using (var output = File.Create(error.File))
                                xDoc.Save(output);
                        }
                        break;
                    case Error.ErrorType.Error_retrieving_parent_for_item:
                        {
                            if (Path.GetFileName(error.File) != "styles.xml") break;

                            var match = Regex.Match(error.Message, "'([^']*)'");
                            var elem = match.Groups[1].Value;

                            TraceWriter.WriteLine(elem);

                            XmlDocument xDoc = new XmlDocument();
                            using (var input = File.OpenRead(error.File))
                                xDoc.Load(input);

                            var element = xDoc.CreateElement("style");
                            element.Attributes.Append(xDoc.CreateAttribute("name"));
                            element.Attributes["name"].Value = elem;
                            // ReSharper disable once PossibleNullReferenceException
                            xDoc.DocumentElement.AppendChild(element);

                            using (var output = File.Create(error.File))
                                xDoc.Save(output);
                        }
                        break;
                }
            }
        }

        /// <inheritdoc />
        public void RemoveMetaInf(string fileName)
        {
            if (fileName == null)
                throw new ArgumentNullException(nameof(fileName));

            // DotNextZip
            //{
            //    using (var zip = Ionic.Zip.ZipFile.Read(fileName))
            //    {
            //        zip.RemoveSelectedEntries("*.*", "META-INF");
            //        zip.Save();
            //    }
            //}

            // SharpZipLib
            {
                using (var apkZip = ZipUtils.OpenZipFile(fileName))
                {
                    apkZip.DeleteDirectory("META-INF");
                    apkZip.Save();
                }
            }

            // ZipStorer
            //{
            //    var apkZip = System.IO.Compression.ZipStorer.Open(fileName, FileAccess.ReadWrite);

            //    var collection = apkZip.ReadCentralDir()
            //        .Where(entry => entry.FilenameInZip.StartsWith("META-INF/"))
            //        .ToList();
            //    if (collection.Any())
            //    {
            //        System.IO.Compression.ZipStorer.RemoveEntries(ref apkZip, collection);
            //    }

            //    apkZip.Dispose();
            //}
        }

        /// <inheritdoc />
        public string GetApktoolVersion()
        {
            if (ApktoolPath == null)
                throw new InvalidOperationException($"`{nameof(ApktoolPath)}` has to be set");

            var builder = new StringBuilder();
            RunJava(ApktoolPath, "-version", new ProcessDataCombinedHandler(data => builder.Append(data)));
            return builder.ToString().Trim();
        }

        /// <summary>
        /// Запускает jar файлы
        /// </summary>
        /// <param name="fileName">Путь к jar файлу</param>
        /// <param name="arguments">Аргументы командной строки</param>
        /// <param name="dataHandler">Обработчик получения данных</param>
        private void RunJava(
            [NotNull] string fileName,
            [CanBeNull] string arguments,
            [CanBeNull] IProcessDataHandler dataHandler
        )
        {
            if (fileName == null)
                throw new ArgumentNullException(nameof(fileName));
            
            if (JavaPath == null)
                throw new InvalidOperationException($"`{nameof(JavaPath)}` has to be set");

            RunProc(JavaPath, $"-jar \"{fileName}\" {arguments}", dataHandler);
        }

        /// <summary>
        /// Запускает процесс
        /// </summary>
        /// <param name="fileName">Путь к исполняемому файлу</param>
        /// <param name="arguments">Аргументы командной строки</param>
        /// <param name="dataHandler">Обработчик получения данных</param>
        private static void RunProc(
            [NotNull] string fileName,
            [CanBeNull] string arguments,
            [CanBeNull] IProcessDataHandler dataHandler
        )
        {
            if (fileName == null)
                throw new ArgumentNullException(nameof(fileName));
            
            TraceWriter.WriteLine($"RunProc:\n - filename: {fileName}\n - arguments: {arguments}");

            var proc = new Process
            {
                StartInfo =
                {
                    CreateNoWindow = true,
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    RedirectStandardError = true,
                }
            };
            proc.StartInfo.FileName = fileName;
            proc.StartInfo.Arguments = arguments ?? string.Empty;

            if (dataHandler != null)
            {
                proc.OutputDataReceived += (sender, args) => dataHandler.OnOutputDataReceived(args.Data);
                proc.ErrorDataReceived += (sender, args) => dataHandler.OnErrorDataReceived(args.Data);
            }

            proc.Start();
            proc.BeginOutputReadLine();
            proc.BeginErrorReadLine();
            proc.WaitForExit();
            proc.Close();
        }

        /*
        /// <summary>
        /// Подписывает файл ключём из хранилища
        /// </summary>
        /// <param name="aliasName">Название ключа</param>
        /// <param name="pathToKeystore">Путь к хранилищу</param>
        /// <param name="storePass">Пароль от хранилища</param>
        /// <param name="keyPass">Пароль от ключа</param>
        public void SignWithKeystore(string aliasName, [CanBeNull] string pathToKeystore, string storePass, string keyPass)
        {
            LFile.Copy(NewApk, SignedApk);
            var arguments =
                $"\"{SignedApk}\" \"{aliasName}\" -keystore \"{pathToKeystore}\" -storepass \"{storePass}\" -keypass \"{keyPass}\"";
            RunProc(@"C:\Program Files\Java\jdk1.8.0\bin\jarsigner.exe", arguments, _combinedDataHandler);
        }*/
    }
}