using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Xml;
using AndroidTranslator.Classes.Files;
using SmaliParser;
using SearchOption = System.IO.SearchOption;

#pragma warning disable 1591

namespace AndroidHelper.Logic
{
    /// <summary>
    /// Класс для работы с AndroidManifest.xml
    /// </summary>
    public sealed class AndroidManifest
    {
        /// <summary>
        /// Возвращает путь к текущему AndroidManifest.xml
        /// </summary>
        public string PathToManifest { get; }

        /// <summary>
        /// Возвращает или задаёт пакет приложения
        /// </summary>
        public string Package
        {
            get => _package.InnerText;
            set
            {
                _package.InnerText = value;
                Save();
            }
        }

        private readonly XmlAttribute _package;

        /// <summary>
        /// Возвращает XmlDocument представляющий текущий AndroidManifest.xml
        /// </summary>
        public XmlDocument Document { get; }

        /// <summary>
        /// Возвращает текущие разрешения приложения
        /// </summary>
        public UsesPermissions Permissions { get; }

        /// <summary>
        /// Возвращает список activity документа
        /// </summary>
        public ReadOnlyCollection<XmlNode> Activities { get; }

        /// <summary>
        /// Возвращает путь до главного smali внутри "папка проекта\smali"
        /// </summary>
        public string MainSmaliName { get; }

        /// <summary>
        /// Возвращает путь на диске до главного smali файла
        /// </summary>
        public string MainSmaliPath { get; }

        /// <summary>
        /// Возвращает тип главного метода
        /// </summary>
        public string MethodType { get; }

        /// <summary>
        /// Возвращает или задаёт главный smali файл
        /// </summary>
        public MainSmali MainSmaliFile { get; set; }

        /// <summary>
        /// Получает или задаёт список возможных названий главных методов
        /// </summary>
        public string[] Methods { get; set; }

        /// <summary>
        /// Возвращает или задаёт название файла изображения (без расширения, то есть "icon")
        /// </summary>
        public string IconName
        {
            get => _iconName;
            set
            {
                _iconName = value;
                _iconAttrib.Value = "@drawable/" + value;
                Save();
            }
        }
        private string _iconName;

        /// <summary>
        /// Возвращает или задаёт название приложения (без расширения, то есть "app_name")
        /// </summary>
        public string AppName
        {
            get => _appName;
            set
            {
                _appName = value;
                foreach (var file in _appNameFiles)
                {
                    file.Details.First(item => item.Name == _appLinkAttrib).NewText = value;
                    file.SaveChanges();
                }
            }
        }

        private readonly XmlAttribute _iconAttrib;
        private readonly string[] _smaliFolders;
        private readonly string _appLinkAttrib;
        private string _appName;
        private readonly XmlFile[] _appNameFiles;
        // ReSharper disable once PrivateFieldCanBeConvertedToLocalVariable
        private readonly Encoding _mainSmaliEncoding;

        /// <summary>
        /// Инициализирует новый экземпляр класса AndroidMnifest на основании пути, функции логгирования и методов
        /// </summary>
        /// <param name="path">Путь к AndroidManifest.xml</param>
        /// <param name="methods">Названия возможных главных методов</param>
        /// <param name="mainSmaliEncoding">Кодировка главного smali файла (по умолчанию UTF-8)</param>
        /// <param name="needActivitySmali">Обязательно ли класс должен наследоваться от Activity</param>
        public AndroidManifest(string path, string[] methods = null, Encoding mainSmaliEncoding = null, bool needActivitySmali = false)
        {
            if (string.IsNullOrWhiteSpace(path) || !File.Exists(path))
                throw new ArgumentException(nameof(path));

            _mainSmaliEncoding = mainSmaliEncoding ?? new UTF8Encoding(false);
            PathToManifest = path;

            var folderOfProject = Path.GetDirectoryName(PathToManifest);

            _smaliFolders = Directory.GetDirectories(folderOfProject, "smali*");

            Methods = methods ?? new[] { "onCreate", "createView" };

            MethodType = Methods[0]; 
            Document = new XmlDocument();

            using (var stream = File.OpenRead(PathToManifest))
            {
                Document.Load(stream);
            }

            if (Document.DocumentElement == null)
            {
                return;
            }

            _package = Document.DocumentElement.Attributes["package"];

            Permissions = new UsesPermissions(Document, PathToManifest);

            if (_smaliFolders.Length > 0)
            {
                string mainSmaliPath;
                string mainSmaliName;
                string method;
                
                WorkWithAndrMan2(out mainSmaliName, out mainSmaliPath, out method, needActivitySmali);

                MainSmaliName = mainSmaliName;
                MainSmaliPath = mainSmaliPath;
                MethodType = method;

                if (File.Exists(MainSmaliPath))
                    MainSmaliFile = new MainSmali(MainSmaliPath, MethodType, _mainSmaliEncoding);
            }

            XmlNode appNode = Document.DocumentElement.GetElementsByTagName("application")[0];

            Activities = new ReadOnlyCollection<XmlNode>(
                Document.GetElementsByTagName("application")[0].ChildNodes.Cast<XmlNode>()
                    .Where(n => n.Name == "activity")
                    .ToList());

            _iconAttrib = appNode.Attributes?["android:icon"];
            _iconName = _iconAttrib?.Value.Split('/').Last();
            _appLinkAttrib = appNode.Attributes?["android:label"]?.Value.Split('/').Last();

            if (Directory.Exists(Path.Combine(folderOfProject, "res")))
            {
                var query = 
                    Directory.EnumerateFiles(Path.Combine(folderOfProject, "res"), "strings.xml",
                        SearchOption.AllDirectories).Select(file => new XmlFile(file));

                query = query.Where(itm => itm.Details?.FirstOrDefault(it => it.Name == _appLinkAttrib) != null);

                XmlFile[] stringsFiles = query.ToArray();

                //for (int i = 0; i < stringsFiles.Count;)
                //{
                //    if (stringsFiles[i].Details.FirstOrDefault(item => item.Name == _appLinkAttrib) == null)
                //        stringsFiles.RemoveAt(i);
                //    else
                //        i++;
                //}

                _appNameFiles = stringsFiles;

                if (stringsFiles.Length > 0)
                    _appName = stringsFiles[0].Details.First(item => item.Name == _appLinkAttrib).OldText;
            }

            TraceWriter.WriteLine($"AndroidManifest: {nameof(AppName)} = \"{AppName}\"");
            TraceWriter.WriteLine($"AndroidManifest: {nameof(MainSmaliName)} = \"{MainSmaliName}\"");
            TraceWriter.WriteLine($"AndroidManifest: {nameof(MainSmaliPath)} = \"{MainSmaliPath}\"");
            TraceWriter.WriteLine($"AndroidManifest: {nameof(MethodType)} = \"{MethodType}\"");
            TraceWriter.WriteLine($"AndroidManifest: {nameof(Package)} = \"{Package}\"");
        }

        private void WorkWithAndrMan2(out string mainSmaliName, out string mainSmaliPath, out string method, bool needActivity = false)
        {
            mainSmaliName = null;
            mainSmaliPath = null;
            method = null;

            List<string> smaliFiles = new List<string>();

            if (!needActivity)
            {
                var list = Document.SelectNodes("/*[local-name() = 'manifest']/*[local-name() = 'application']");

                if (list != null && list.Count != 0)
                    mainSmaliName = list[0].Attributes?["android:name"]?.Value;
            }

            if (string.IsNullOrEmpty(mainSmaliName))
            {
                var list = Document.SelectNodes("/*[local-name() = 'manifest']/*[local-name() = 'application']/*[local-name() = 'activity']/*[local-name() = 'intent-filter']/*[local-name() = 'action']");

                if (list == null)
                    return;

                var item = list.Cast<XmlNode>()
                    .FirstOrDefault(it => it.Attributes?["android:name"]?.Value == "android.intent.action.MAIN");

                mainSmaliName = item?.ParentNode?.ParentNode?.Attributes?["android:name"]?.Value;
            }

            if (string.IsNullOrEmpty(mainSmaliName))
                return;

            // ReSharper disable once PossibleNullReferenceException
            mainSmaliName = mainSmaliName.Replace('.', '\\');

            if (!mainSmaliName.Contains('\\'))
            {
                foreach (var smaliFolder in _smaliFolders)
                    smaliFiles.AddRange(Directory.EnumerateFiles(smaliFolder, mainSmaliName + ".smali", SearchOption.AllDirectories));
            }
            else if (mainSmaliName[0] == '\\')
            {
                mainSmaliName = mainSmaliName.Remove(0, 1);

                int lastIndex = mainSmaliName.LastIndexOf('\\');

                if (lastIndex == -1)
                {
                    foreach (var smaliFolder in _smaliFolders)
                        smaliFiles.AddRange(Directory.EnumerateFiles(smaliFolder, mainSmaliName + ".smali", SearchOption.AllDirectories));
                }
                else
                {
                    string fileName = mainSmaliName.Substring(lastIndex + 1);
                    string parent = mainSmaliName.Remove(lastIndex);

                    foreach (var smaliFolder in _smaliFolders)
                    {
                        smaliFiles.AddRange(
                            Directory.EnumerateFiles(smaliFolder, fileName + ".smali", SearchOption.AllDirectories)
                                .Where(item => Path.GetDirectoryName(item)?.EndsWith(parent, StringComparison.Ordinal) == true));
                    }
                }
            }
            else
            {
                string name = mainSmaliName;

                mainSmaliPath = _smaliFolders.Select(f => $"{f}\\{name}.smali").FirstOrDefault(File.Exists);
                smaliFiles.Add(mainSmaliPath);
            }

            foreach (string file in smaliFiles.Where(File.Exists))
            {
                string currentFile = file;

                SmaliClass fl;

                using (var stream = File.OpenText(file))
                    fl = SmaliClass.ParseStream(stream);

                while (true)
                {
                    //Clipboard.SetText("|" + string.Join("|\n|", fl.Methods.Select(m => m.Name)) + "|");
                    //MessageBox.Show("|" + string.Join("|\n|", fl.Methods.Select(m => m.Name)) + "|");

                    method = fl.Methods.FirstOrDefault(m => Methods.Contains(m.Name))?.Name;

                    if (method != null) //m => m.Name == "onCreate" || m.Name == "createView")
                    {
                        var folder = _smaliFolders.FirstOrDefault(f => currentFile.Replace(f, "")[0] == '\\');

                        mainSmaliPath = currentFile;
                        mainSmaliName = folder != null 
                            ? currentFile.Remove(currentFile.Length - ".smali".Length)
                                .Remove(0, folder.Length + 1) 
                            : null;

                        return;
                    }

                    var mth = fl.Methods.FirstOrDefault(m => m.Name == "<init>");

                    var item = mth?.Body.FirstOrDefault(l => l.Contains("invoke-direct"));

                    if (item == null)
                        break;

                    // invoke-direct {p0}, Landroid/app/Application;-><init>()V

                    string path = item.Split(new[] {"}, L"}, StringSplitOptions.None)[1].Split(';')[0];
                    path = _smaliFolders.Select(f => $"{f}\\{path.Replace('/', '\\')}.smali").Where(File.Exists).FirstOrDefault();

                    if (path == null)
                        break;

                    currentFile = path;
                    fl = SmaliClass.ParseFile(path);
                }
            }

            if (!needActivity)
                WorkWithAndrMan2(out mainSmaliName, out mainSmaliPath, out method, true);
        }

        /// <summary>
        /// Сохраняет внесённые изменения в файл
        /// </summary>
        public void Save()
        {
            using (var stream = File.Create(PathToManifest))
            {
                Document.Save(stream);
            }
        }
    }

    /// <summary>
    /// Класс для управления разрешениями андроид приложений
    /// </summary>
    public class UsesPermissions : IList<UsesPermissions.Permission>
    {
        /// <summary>
        /// Класс для одного разрешения
        /// </summary>
        public class Permission
        {
            /// <summary>
            /// Название разрешения
            /// </summary>
            public string Name { get; }

            /// <summary>
            /// Создаёт разрешение на основе названия
            /// </summary>
            /// <param name="name">Название разрешения</param>
            public Permission(string name)
            {
                Name = name;
            }
        }

        /// <summary>
        /// Список разрешений системы
        /// </summary>
        public enum AndroidPermissions
        {
            ACCESS_CHECKIN_PROPERTIES,
            ACCESS_COARSE_LOCATION,
            ACCESS_FINE_LOCATION,
            ACCESS_LOCATION_EXTRA_COMMANDS,
            ACCESS_MOCK_LOCATION,
            ACCESS_NETWORK_STATE,
            ACCESS_SURFACE_FLINGE,
            ACCESS_WIFI_STATE,
            ACCOUNT_MANAGER,
            AUTHENTICATE_ACCOUNTS,
            BATTERY_STATS,
            BIND_ACCESSIBILITY_SERVICE,
            BIND_APPWIDGET,
            BIND_DEVICE_ADMIN,
            BIND_INPUT_METHOD,
            BIND_REMOTEVIEWS,
            BIND_TEXT_SERVICE,
            BIND_VPN_SERVICE,
            BIND_WALLPAPER,
            BLUETOOTH,
            BLUETOOTH_ADMIN,
            BRICK,
            BROADCAST_PACKAGE_REMOVED,
            BROADCAST_SMS,
            BROADCAST_STICKY,
            BROADCAST_WAP_PUSH,
            CALL_PHONE,
            CALL_PRIVILEGED,
            CAMERA,
            CHANGE_COMPONENT_ENABLED_STATE,
            CHANGE_CONFIGURATION,
            CHANGE_NETWORK_STATE,
            CHANGE_WIFI_MULTICAST_STATE,
            CHANGE_WIFI_STATE,
            CLEAR_APP_CACHE,
            CLEAR_APP_USER_DATA,
            CONTROL_LOCATION_UPDATES,
            DELETE_CACHE_FILES,
            DELETE_PACKAGES,
            DEVICE_POWER,
            DIAGNOSTIC,
            DISABLE_KEYGUARD,
            DUMP,
            EXPAND_STATUS_BAR,
            FACTORY_TEST,
            FLASHLIGHT,
            FORCE_BACK,
            GET_ACCOUNTS,
            GET_PACKAGE_SIZE,
            GET_TASKS,
            GLOBAL_SEARCH,
            HARDWARE_TEST,
            INJECT_EVENTS,
            INSTALL_LOCATION_PROVIDER,
            INSTALL_PACKAGES,
            INTERNAL_SYSTEM_WINDOW,
            INTERNET,
            KILL_BACKGROUND_PROCESSES,
            MANAGE_ACCOUNTS,
            MANAGE_APP_TOKENS,
            MASTER_CLEAR,
            MODIFY_AUDIO_SETTINGS,
            MODIFY_PHONE_STATE,
            MOUNT_FORMAT_FILESYSTEMS,
            MOUNT_UNMOUNT_FILESYSTEMS,
            NFC,
            PERSISTENT_ACTIVITY,
            PROCESS_OUTGOING_CALLS,
            READ_CALENDAR,
            READ_CALL_LOG,
            READ_CONTACTS,
            READ_EXTERNAL_STORAGE,
            READ_FRAME_BUFFER,
            READ_HISTORY_BOOKMARKS,
            READ_INPUT_STATE,
            READ_LOGS,
            READ_PHONE_STATE,
            READ_PROFILE,
            READ_SOCIAL_STREAM,
            READ_SMS,
            READ_USER_DICTIONARY,
            READ_SYNC_SETTINGS,
            READ_SYNC_STATS,
            REBOOT,
            RECEIVE_BOOT_COMPLETED,
            RECEIVE_MMS,
            RECEIVE_SMS,
            RECEIVE_WAP_PUSH,
            RECORD_AUDIO,
            REORDER_TASKS,
            RESTART_PACKAGES,
            SEND_SMS,
            SET_ACTIVITY_WATCHER,
            SET_ALARM,
            SET_ALWAYS_FINISH,
            SET_ANIMATION_SCALE,
            SET_DEBUG_APP,
            SET_ORIENTATION,
            SET_POINTER_SPEED,
            SET_PREFERRED_APPLICATIONS,
            SET_PROCESS_LIMIT,
            SET_TIME,
            SET_TIME_ZONE,
            SET_WALLPAPER,
            SET_WALLPAPER_HINTS,
            SIGNAL_PERSISTENT_PROCESSES,
            STATUS_BAR,
            SUBSCRIBED_FEEDS_READ,
            SUBSCRIBED_FEEDS_WRITE,
            SYSTEM_ALERT_WINDOW,
            UPDATE_DEVICE_STATS,
            USE_CREDENTIALS,
            USE_SIP,
            VIBRATE,
            WAKE_LOCK,
            WRITE_APN_SETTINGS,
            WRITE_CALENDAR,
            WRITE_CALL_LOG,
            WRITE_CONTACTS,
            WRITE_EXTERNAL_STORAGE,
            WRITE_GSERVICES,
            WRITE_HISTORY_BOOKMARKS,
            WRITE_PROFILE,
            WRITE_SECURE_SETTINGS,
            WRITE_SETTINGS,
            WRITE_SMS,
            WRITE_SOCIAL_STREAM,
            WRITE_USER_DICTIONARY,
            WRITE_SYNC_SETTINGS			        
        }

        /// <summary>
        /// Список разрешений браузера
        /// </summary>
        public enum BrowserPermissions
        {
            /// <summary>
            /// Чтение закладок браузера
            /// </summary>
            READ_HISTORY_BOOKMARKS,
            /// <summary>
            /// Запись в закладки браузера
            /// </summary>
            WRITE_HISTORY_BOOKMARKS
        }

        /// <summary>
        /// Список разрешений будильника
        /// </summary>
        public enum AlarmPermissions
        {
            /// <summary>
            /// Установка будильника
            /// </summary>
            SET_ALARM
        }

        private static class PermissionsStart
        {
            public const string Android = "android.permission.";
            public const string Browser = "com.android.browser.permission.";
            public const string Alarm = "com.android.alarm.permission.";
        }; 

        private readonly XmlDocument _doc;
        private readonly string _pathToManifest;
        private readonly List<Permission> _permissions;

        /// <inheritdoc />
        /// <summary>
        /// Возвращает количество разрешений
        /// </summary>
        public int Count => _permissions.Count;

        public bool IsReadOnly => false;

        /// <summary>
        /// Инициализирует новый экземпляр класса UsesPermissions на основании xml документа и пути к AndroidManifest.xml
        /// </summary>
        /// <param name="xDoc">Xml документ</param>
        /// <param name="pathToManifest">Путь к AndroidManifest.xml</param>
        public UsesPermissions(XmlDocument xDoc, string pathToManifest)
        {
            _permissions = new List<Permission>();
            _pathToManifest = pathToManifest;
            _doc = xDoc;
            if (_doc.DocumentElement == null) throw new Exception("XmlDocument doesn't have DocumentElement");
            XmlNodeList list = _doc.DocumentElement.GetElementsByTagName("uses-permission");
            for (int i = 0; i < list.Count; i++)
                if (list[i].Attributes != null)
                    _permissions.Add(new Permission(list[i].Attributes["android:name"].InnerText)); 
        }

        /// <summary>
        /// Возврашает разрешение по заданному индексу
        /// </summary>
        /// <param name="index">Индекс</param>
        public Permission Get(int index)
        {
            return _permissions[index];
        }

        /// <summary>
        /// Возвращает разрешение по названию
        /// </summary>
        /// <param name="name">Название</param>
        /// <param name="fullName">Полное ли название</param>
        public Permission Get(string name, bool fullName = false)
        {
            return _permissions.FirstOrDefault(permission => (fullName ? permission.Name : permission.Name.Split('.').Last()) == name);
        }

        /// <summary>
        /// Возвращает, присутствует ли разрешение в текущем списке
        /// </summary>
        /// <param name="value">Название разрешения</param>
        /// <param name="fullName">Полное ли название</param>
        public bool Exists(string value, bool fullName = false)
        {
            return _permissions.Any(s => (fullName ? s.Name : s.Name.Split('.').Last()) == value);
        }

        public void Add(Permission item)
        {
            if (item == null)
                throw new ArgumentNullException(nameof(item));

            Add(item.Name);
        }

        /// <summary>
        /// Добавляет новое разрешение в список
        /// </summary>
        /// <param name="value">Название разрешения</param>
        private void Add(string value)
        {
            if (Exists(value, true)) return;
            _permissions.Add(new Permission(value));
            var child = _doc.CreateElement("uses-permission");
            var attribute = _doc.CreateAttribute("android", "name", "http://schemas.android.com/apk/res/android");
            attribute.Value = value;
            child.Attributes.Append(attribute);
            _doc.DocumentElement?.PrependChild(child);
            _doc.Save(_pathToManifest);
        }

        /// <summary>
        /// Добавляет новое разрешение в список
        /// </summary>
        /// <param name="value">Название разрешения</param>
        public void Add(AndroidPermissions value)
        {
            Add(PermissionsStart.Android + value);
        }

        /// <summary>
        /// Добавляет новое разрешение в список
        /// </summary>
        /// <param name="value">Название разрешения</param>
        public void Add(BrowserPermissions value)
        {
            Add(PermissionsStart.Browser + value);
        }

        /// <summary>
        /// Добавляет новое разрешение в список
        /// </summary>
        /// <param name="value">Название разрешения</param>
        public void Add(AlarmPermissions value)
        {
            Add(PermissionsStart.Alarm + value);
        }

        /// <summary>
        /// Очищает список
        /// <exception cref="XmlException">Отсутствует DocumentElement</exception>
        /// </summary>
        public void Clear()
        {
            _permissions.Clear();

            var toDelete = _doc.DocumentElement?.GetElementsByTagName("uses-permission").Cast<XmlNode>();
            if (toDelete == null)
                throw new XmlException("DocumentElement wasn't found");

            foreach (var delete in toDelete)
                _doc.RemoveChild(delete);

            _doc.Save(_pathToManifest);
        }

        public bool Contains(Permission item)
        {
            return _permissions.Contains(item);
        }

        /// <summary>
        /// <exception cref="NotImplementedException"></exception>
        /// </summary>
        public void CopyTo(Permission[] array, int arrayIndex)
        {
            throw new NotImplementedException();
        }

        /// <inheritdoc />
        /// <summary>
        /// Удаляет разрешение из списка
        /// </summary>
        /// <param name="value">Разрешение</param>
        public bool Remove(Permission value)
        {
            if (value == null)
                throw new ArgumentNullException(nameof(value));

            return Remove(value.Name, true);
        }

        /// <summary>
        /// Удаляет разрешение из списка
        /// </summary>
        /// <param name="value">Разрешение</param>
        /// <param name="fullName">Полное ли название разрешения</param>
        public bool Remove(string value, bool fullName = false)
        {
            Permission perm = Get(value, fullName);
            if (perm == null)
                return false;

            _permissions.Remove(perm);

            _doc.RemoveChild(
                _doc.DocumentElement.GetElementsByTagName("uses-permission")
                    .Cast<XmlNode>()
                    .First(node => (fullName ? node.Attributes?["android:name"].InnerText : node.Attributes?["android:name"].InnerText.Split('.').Last()) == value));

            _doc.Save(_pathToManifest);

            return true;
        }

        /// <summary>
        /// Удаляет разрешение из списка
        /// </summary>
        /// <param name="value">Разрешение</param>
        public bool Remove(AndroidPermissions value)
        {
            return Remove(PermissionsStart.Android + value, true);
        }

        /// <summary>
        /// Удаляет разрешение из списка
        /// </summary>
        /// <param name="value">Разрешение</param>
        public bool Remove(BrowserPermissions value)
        {
            return Remove(PermissionsStart.Browser + value, true);
        }

        /// <summary>
        /// Удаляет разрешение из списка
        /// </summary>
        /// <param name="value">Разрешение</param>
        public bool Remove(AlarmPermissions value)
        {
            return Remove(PermissionsStart.Alarm + value, true);
        }

        public IEnumerator<Permission> GetEnumerator()
        {
            return _permissions.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }

        public int IndexOf(Permission item)
        {
            return _permissions.IndexOf(item);
        }

        public void Insert(int index, Permission item)
        {
            throw new NotImplementedException();
        }

        public void RemoveAt(int index)
        {
            Remove(_permissions[index]);
        }

        public Permission this[int index]
        {
            get => _permissions[index];
            set => throw new NotImplementedException();
        }
    }
}
