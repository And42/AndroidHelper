using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Xml;

namespace AndroidHelper.Logic
{
    /// <summary>
    /// Класс для работы с андроид приложениями
    /// </summary>
    public class Apktools
    {
        /// <summary>
        /// Возвращает путь к apk файлу
        /// </summary>
        public string FileName { get; }

        /// <summary>
        /// Возвращает путь к apktools.jar
        /// </summary>
        public string PathToApktool { get; set; }

        /// <summary>
        /// Возвращает путь к signapk.jar
        /// </summary>
        public string PathToSign { get; }

        /// <summary>
        /// Возвращает путь к baksmali.jar
        /// </summary>
        public string PathToBaksmaliPr { get; }

        /// <summary>
        /// Возвращает путь к smali.jar
        /// </summary>
        public string PathToSmaliPr { get; }

        /// <summary>
        /// Возвращает путь к папке проекта
        /// </summary>
        public string FolderOfProject { get; }

        /// <summary>
        /// Возвращает или задаёт AndroidManifest данного приложения
        /// </summary>
        public AndroidManifest Manifest { get; set; }

        /// <summary>
        /// Возвращает путь к папке с ресурсами
        /// </summary>
        public string PathToResources { get; }

        /// <summary>
        /// Возвращает путь к AndroidManifest.xml
        /// </summary>
        public string PathToAndroidManifest { get; }

        /// <summary>
        /// Возвращает путь к скомпилированному файлу
        /// </summary>
        public string NewApk { get; private set; }

        /// <summary>
        /// Возвращает путь к подписанному файлу
        /// </summary>
        public string SignedApk { get; private set; }

        /*public List<Error> DecompileErrors { get; private set; }
        public List<Error> CompileErrors { get; private set; }
        public bool HasDecompileErrors { get; private set; }
        public bool HasCompileErrors { get; private set; }*/

        /// <summary>
        /// Событие, возникающее при получении сообщения от запущенного консольного приложения
        /// </summary>
        public event Action<string> Logging = delegate { };

        private static readonly Regex ErrorFileRegex = new Regex(@"[A-Z][A-Z]*:\\");
        private static readonly Regex ClassesDexRegex = new Regex(@"^classes(?<index>[\d]*).dex$");
        private static readonly Regex SmaliDexRegex = new Regex(@"^smali(_classes(?<index>[1-9]+[\d]*))?$");

        private readonly string _pathToInstalledJava;
        private readonly string _pathToPortableJava;
        private readonly string _startArgs;
        private readonly Encoding _mainSmaliEncoding;

        /// <summary>
        /// ProjectFolder/res
        /// </summary>
        private readonly string _projectRes;

        /// <summary>
        /// ProjectFolder/dist
        /// </summary>
        private readonly string _projectDist;

        /// <summary>
        /// ProjectFolder/smali
        /// </summary>
        private readonly string _projectSmali;

        /// <summary>
        /// ProjectFolder/build
        /// </summary>
        private readonly string _projectBuild;

        /// <summary>
        /// Инициализирует новый экземпляр класса <b>Apktools</b> на основании пути к файлу, пути к ресурсам и функции логгирования
        /// </summary>
        /// <param name="fileName">Путь к файлу (*.apk)</param>
        /// <param name="pathToResources">Путь к папке с ресурсами</param>
        /// <param name="pathToApktool">Путь к apktool.jar</param>
        /// <param name="javaExePath">Путь к java.exe</param>
        /// <param name="mainSmaliEncoding">Кодировка главного smali</param>
        /// <param name="tracing">Включить ли трассировку действий</param>
        public Apktools(
            string fileName,
            string pathToResources,
            string pathToApktool = null,
            string javaExePath = null,
            Encoding mainSmaliEncoding = null,
            bool tracing = false)
        {
            TraceWriter.Trace = tracing;

            FileName = fileName;
            PathToResources = pathToResources;
            _mainSmaliEncoding = mainSmaliEncoding;
            _startArgs = "-jar";
            PathToApktool = pathToApktool ?? Path.Combine(pathToResources, "apktool.jar");

            _pathToPortableJava = javaExePath ?? Path.Combine(pathToResources, "jre", "bin", "java.exe");
            _pathToInstalledJava = GetJavaPath();

            PathToSign = Path.Combine(pathToResources, "signapk.jar");
            PathToSmaliPr = Path.Combine(pathToResources, "smali.jar");
            PathToBaksmaliPr = Path.Combine(pathToResources, "baksmali.jar");

            if (fileName != null)
            {
                FolderOfProject = fileName.Remove(fileName.Length - 4, 4);
                PathToAndroidManifest = Path.Combine(FolderOfProject, "AndroidManifest.xml");
                _projectRes = Path.Combine(FolderOfProject, "res");
                _projectDist = Path.Combine(FolderOfProject, "dist");
                _projectSmali = Path.Combine(FolderOfProject, "smali");
                _projectBuild = Path.Combine(FolderOfProject, "build");
            }

            TraceWriter.WriteLine($"Apktool constructor: {nameof(FileName)} = \"{FileName}\"");
            TraceWriter.WriteLine($"Apktool constructor: {nameof(PathToResources)} = \"{PathToResources}\"");
            TraceWriter.WriteLine($"Apktool constructor: {nameof(pathToApktool)} = \"{pathToApktool}\"");
            TraceWriter.WriteLine($"Apktool constructor: {nameof(PathToApktool)} = \"{PathToApktool}\"");
            TraceWriter.WriteLine($"Apktool constructor: {nameof(mainSmaliEncoding)} = \"{mainSmaliEncoding}\"");
            TraceWriter.WriteLine($"Apktool constructor: {nameof(_pathToPortableJava)} = \"{_pathToPortableJava}\"");
            TraceWriter.WriteLine($"Apktool constructor: {nameof(_pathToInstalledJava)} = \"{_pathToInstalledJava}\"");
        }

        private static string GetJavaPath()
        {
            string path = Environment.GetEnvironmentVariable("path");

            // ReSharper disable once UseNullPropagation
            if (path == null)
                return null;

            string[] folders = path.Split(';');

            return folders.Select(folder => Path.Combine(folder, "java.exe")).FirstOrDefault(File.Exists);
        }

        /// <summary>
        /// Декомпилирует текущий файл
        /// </summary>
        /// <param name="autoCheckVersion">Проверять ли версию apktools автоматически</param>
        /// <param name="newVersion">Версия apktool больше 1.5.2?</param>
        /// <param name="log">Записывать ли ход операций</param>
        /// <param name="needActivitySmali">Должен ли основной класс наследоваться от Activity</param>
        /// <param name="options">Опции apktool</param>
        public bool Decompile(bool autoCheckVersion = true, bool log = true, bool newVersion = true, bool needActivitySmali = false, string options = "")
        {
            TraceWriter.WriteLine("Decompiling...");

            if (autoCheckVersion)
            {
                newVersion = string.Compare(GetApktoolsVersion(), "1.5.2", StringComparison.Ordinal) > 0;
            }

            RunJava(PathToApktool, string.Format(newVersion ? "d -f {0} -o\"{1}\" \"{2}\"" : "d {0} -f \"{2}\" \"{1}\"", options, FolderOfProject, FileName), log);

            if (!Directory.Exists(_projectRes) || !File.Exists(PathToAndroidManifest))
            {
                return false;
            }

            Manifest = new AndroidManifest(PathToAndroidManifest, null, _mainSmaliEncoding, needActivitySmali);

            return true;
        }

        /// <summary>
        /// Компилирует текущий файл и возвращает, успешна ли прошла компиляция
        /// </summary>
        public bool Compile(out List<Error> errors)
        {
            errors = new List<Error>();
            _compileLog.Clear();

            Utils.DeleteDirectory(_projectDist);

            Logging += CompileLogAction;
            RunJava(PathToApktool, $"b \"{FolderOfProject}\"");
            Logging -= CompileLogAction;

            if (!Directory.Exists(_projectDist))
            {
                var lines = _compileLog.ToString().Split(new[] {'\n'}, StringSplitOptions.RemoveEmptyEntries);
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
                return false;
            }

            NewApk = Directory.EnumerateFiles(_projectDist).FirstOrDefault();
            SignedApk = Path.ChangeExtension(NewApk, ".signed.apk");

            return true;
        }

        /// <summary>
        /// Подписывает текущий файл и возвращает, успешна ли прошла подпись
        /// </summary>
        public bool Sign()
        {
            Utils.DeleteFile(SignedApk);

            RemoveMetaInf(NewApk);

            RunJava(PathToSign, string.Format("\"{0}\\testkey.x509.pem\" \"{0}\\testkey.pk8\" \"{1}\" \"{2}\"", PathToResources, NewApk, SignedApk));
            return File.Exists(SignedApk);
        }

        /// <summary>
        /// Подписывает указанный файл
        /// </summary>
        /// <param name="file">Файл для подписи</param>
        /// <param name="signedFile">Путь к подписанному файлу</param>
        public bool Sign(string file, out string signedFile)
        {
            signedFile = Path.Combine(Path.GetDirectoryName(file) ?? string.Empty, Path.GetFileNameWithoutExtension(file) + ".signed.apk");

            string temp = Path.Combine(Path.GetDirectoryName(file) ?? string.Empty, Path.GetFileNameWithoutExtension(file) + ".temp.apk");

            File.Copy(file, temp, true);

            RemoveMetaInf(temp);

            List<string> errors = new List<string>();

            RunJava(PathToSign, string.Format("\"{0}\\testkey.x509.pem\" \"{0}\\testkey.pk8\" \"{1}\" \"{2}\"", PathToResources, temp, signedFile), null,
                (sender, args) =>
                {
                    if (!string.IsNullOrEmpty(args.Data))
                    {
                        errors.Add(args.Data);
                        TryLog(args.Data);
                    }
                });

            Utils.DeleteFile(temp);

            return errors.Count == 0;
        }

        /// <summary>
        /// Подписывает файл ключём из хранилища
        /// </summary>
        /// <param name="aliasName">Название ключа</param>
        /// <param name="pathToKeystore">Путь к хранилищу</param>
        /// <param name="storePass">Пароль от хранилища</param>
        /// <param name="keyPass">Пароль от ключа</param>
        public void SignWithKeystore(string aliasName, string pathToKeystore, string storePass, string keyPass)
        {
            File.Copy(NewApk, SignedApk);
            var arguments =
                $"\"{SignedApk}\" \"{aliasName}\" -keystore \"{pathToKeystore}\" -storepass \"{storePass}\" -keypass \"{keyPass}\"";
            RunProc(@"C:\Program Files\Java\jdk1.8.0\bin\jarsigner.exe", arguments, DataRecieved, DataRecieved);
        }

        /// <summary>
        /// Устанавливает в систему framework
        /// </summary>
        /// <param name="pathToFramework">Путь до framework</param>
        public void InstallFramework(string pathToFramework)
        {
            if (pathToFramework == null)
                throw new ArgumentNullException(nameof(pathToFramework));
            if (!File.Exists(pathToFramework))
                throw new FileNotFoundException("Framework не найден!", pathToFramework);

            RunJava(PathToApktool, $"if \"{pathToFramework}\"");
        }

        /// <summary>
        /// Декомпилирует dex в smali
        /// </summary>
        public List<string> Baksmali()
        {
            Utils.DeleteDirectory(FolderOfProject);

            var result = new List<string>();

            using (var zip = Utils.OpenZipFile(FileName))
            {
                foreach (var entry in zip.GetEntries().Where(entry => ClassesDexRegex.IsMatch(entry.PathInArchive)))
                {
                    var tempFile = Path.GetTempFileName();

                    zip.ExtractEntryByPath(entry.PathInArchive, tempFile);

                    var index = ClassesDexRegex.Match(entry.PathInArchive).Groups["index"].Value;
                    var targetDir = $"{_projectSmali}{(string.IsNullOrEmpty(index) ? "" : $"_classes{index}")}";
                    
                    if (Directory.Exists(targetDir))
                        Directory.Delete(targetDir, true);

                    RunJava(PathToBaksmaliPr, $"disassemble \"{tempFile}\" -o \"{targetDir}\"");

                    result.Add(targetDir);

                    File.Delete(tempFile);
                }
            }

            return result;
        }

        /// <summary>
        /// Компилирует smali в dex
        /// </summary>
        /// <returns>Путь к скомпилированному classes.dex</returns>
        public List<string> Smali()
        {
            Utils.DeleteDirectory(_projectBuild);
            Directory.CreateDirectory(_projectBuild);

            var result = new List<string>();

            foreach (var smaliFolder in Directory.EnumerateDirectories(FolderOfProject).Where(fl => SmaliDexRegex.IsMatch(Path.GetFileName(fl))))
            {
                var index = SmaliDexRegex.Match(Path.GetFileName(smaliFolder)).Groups["index"].Value;

                var targetFile = Path.Combine(_projectBuild, $"classes{index}.dex");

                RunJava(PathToSmaliPr, $"assemble \"{smaliFolder}\" -o \"{targetFile}\"");

                result.Add(targetFile);
            }

            return result;
        }

        /// <summary>
        /// Запускает jar файлы
        /// </summary>
        /// <param name="filename">Путь к jar файлу</param>
        /// <param name="arguments">Аргументы командной строки</param>
        /// <param name="needLogging">Логгировать ли действия</param>
        public void RunJava(string filename, string arguments, bool needLogging = true)
        {
            if (needLogging)
                RunJava(filename, arguments, DataRecieved, DataRecieved);
            else
                RunJava(filename, arguments, null, null);
        }

        /// <summary>
        /// Запускает jar файлы
        /// </summary>
        /// <param name="filename">Путь к jar файлу</param>
        /// <param name="arguments">Аргументы командной строки</param>
        /// <param name="dataRecieved">Обработчик получения данных</param>
        /// <param name="errorDataRecieved">Обработчик получения ошибок</param>
        public void RunJava(string filename, string arguments, DataReceivedEventHandler dataRecieved, DataReceivedEventHandler errorDataRecieved)
        {
            bool useLocalJava = File.Exists(_pathToPortableJava);
            TraceWriter.WriteLine($"Using portable java = {useLocalJava}");
            
            RunProc(useLocalJava ? 
                _pathToPortableJava : 
                _pathToInstalledJava, 
                $"{_startArgs} \"{filename}\" {arguments}",
                dataRecieved, errorDataRecieved);
        }

        /// <summary>
        /// Запускает процесс
        /// </summary>
        /// <param name="filename">Путь к исполняемому файлу</param>
        /// <param name="arguments">Аргументы командной строки</param>
        /// <param name="dataRecieved">Обработчик получения данных</param>
        /// <param name="errorDataRecieved">Обработчик получения ошибок</param>
        public void RunProc(string filename, string arguments, DataReceivedEventHandler dataRecieved = null, DataReceivedEventHandler errorDataRecieved = null)
        {
            TraceWriter.WriteLine($"RunProc:\n - filename: {filename}\n - arguments: {arguments}");

            var proc = new Process
            {
                StartInfo =
                {
                    CreateNoWindow = true,
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    RedirectStandardError = true,
                    WorkingDirectory = PathToResources
                }
            };
            proc.StartInfo.FileName = filename;
            proc.StartInfo.Arguments = arguments;

            if (dataRecieved != null)
                proc.OutputDataReceived += dataRecieved;
            if (errorDataRecieved != null)
                proc.ErrorDataReceived += errorDataRecieved;

            proc.Start();
            proc.BeginOutputReadLine();
            proc.BeginErrorReadLine();
            proc.WaitForExit();
            proc.Close();
        }

        /// <summary>
        /// Возвращает раскодированный AndroidManifest
        /// </summary>
        /// <param name="needActivitySmali">Должен ли главный класс наследоваться от Activity</param>
        public AndroidManifest GetSimpleManifest(bool needActivitySmali = false)
        {
            return new AndroidManifest(ExtractSimpleManifest(), needActivitySmali: needActivitySmali);
        }

        /// <summary>
        /// Декодирует AndroidManifest и возвращает путь к нему
        /// </summary>
        /// <returns></returns>
        public string ExtractSimpleManifest()
        {
            TraceWriter.WriteLine("Extracting manifest...");

            const string manifestFileName = "AndroidManifest.xml";

            var manifestFile = Path.Combine(FolderOfProject, manifestFileName);
            var manifestApk = Path.Combine(FolderOfProject, "AndroidManifest.apk");
            var manifestFolder = Path.Combine(FolderOfProject, "manifest");
            
            Utils.DeleteFile(manifestFile);
            Utils.DeleteFile(manifestApk);

            Directory.CreateDirectory(manifestFolder);


            // DotNetZip
            //{
            //    using (var zip = new Ionic.Zip.ZipFile(FileName))
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
                using (var zip = Utils.OpenZipFile(FileName))
                {
                    zip.ExtractEntryByPath(manifestFileName, manifestFile);
                }

                using (var zip = Utils.CreateZipFile(manifestApk))
                {
                    zip.AddToArchive(manifestFile, manifestFileName);
                }
            }

            // ZipStorer
            //{
            //    using (var zip = System.IO.Compression.ZipStorer.Open(FileName, FileAccess.Read))
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


            Utils.DeleteFile(manifestFile);

            RunJava(PathToApktool, $"d \"{manifestApk}\" -o \"{manifestFolder}\" -f");
            File.Move(Path.Combine(manifestFolder, "AndroidManifest.xml"), manifestFile);

            Utils.DeleteFile(manifestApk);
            Utils.DeleteDirectory(manifestFolder);

            return PathToAndroidManifest;
        }

        /// <summary>
        /// Исправляет возможные ошибки
        /// </summary>
        /// <param name="errors">Список ошибок</param>
        public static void FixErrors(IEnumerable<Error> errors)
        {
            foreach (var error in errors)
            {
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
                            xDoc.Load(error.File);

                            var nodes = xDoc.SelectNodes($"//*[@name=\"{value}\"]");

                            TraceWriter.WriteLine(nodes?.Count ?? -1);

                            if (nodes != null)
                                foreach (XmlNode node in nodes)
                                    node.ParentNode?.RemoveChild(node);

                            xDoc.Save(error.File);
                        }
                        break;
                    case Error.ErrorType.Error_retrieving_parent_for_item:
                        {
                            if (Path.GetFileName(error.File) != "styles.xml") break;

                            var match = Regex.Match(error.Message, "'([^']*)'");
                            var elem = match.Groups[1].Value;

                            TraceWriter.WriteLine(elem);

                            XmlDocument xDoc = new XmlDocument();
                            xDoc.Load(error.File);

                            var element = xDoc.CreateElement("style");
                            element.Attributes.Append(xDoc.CreateAttribute("name"));
                            element.Attributes["name"].Value = elem;
                            // ReSharper disable once PossibleNullReferenceException
                            xDoc.DocumentElement.AppendChild(element);

                            xDoc.Save(error.File);
                        }
                        break;
                }
            }
        }

        /// <summary>
        /// Проверяет доступность Java
        /// </summary>
        public bool HasJava()
        {
            return _pathToInstalledJava != null || File.Exists(_pathToPortableJava);
        }

        /// <summary>
        /// Проверяет доступность java
        /// </summary>
        /// <param name="portable">Путь к портативной версии</param>
        public static bool StaticHasJava(string portable = null)
        {
            return GetJavaPath() != null || (!string.IsNullOrEmpty(portable) && File.Exists(portable));
        }

        /// <summary>
        /// Удаляет папку META-INF из файла
        /// </summary>
        /// <param name="fileName">Путь к файлу .apk</param>
        public static void RemoveMetaInf(string fileName)
        {
            if (fileName == null)
                throw new ArgumentNullException(nameof(fileName));
            if (!File.Exists(fileName))
                throw new FileNotFoundException(nameof(fileName), fileName);

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
                using (var apkZip = Utils.OpenZipFile(fileName))
                {
                    apkZip.DeleteDirectory("META-INF");
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

        /// <summary>
        /// Возвращает версию apktools
        /// </summary>
        public string GetApktoolsVersion()
        {
            var builder = new StringBuilder();
            var handler = new DataReceivedEventHandler((sender, args) => builder.Append(args.Data));
            RunJava(PathToApktool, "-version", handler, handler);
            return builder.ToString().Trim();
        }

        private readonly StringBuilder _compileLog = new StringBuilder();

        private void CompileLogAction(string text)
        {
            _compileLog.AppendLine(text);
        }

        private void TryLog(string textToLog)
        {
            if (!string.IsNullOrEmpty(textToLog))
                Logging(textToLog);
        }

        private void DataRecieved(object obj, DataReceivedEventArgs args)
        {
            TryLog(args.Data);
        }
    }
}