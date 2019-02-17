using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.IO;
using System.Linq;
using System.Text;
using System.Xml;
using AndroidHelper.Logic.Utils;
using AndroidTranslator.Classes.Files;
using JetBrains.Annotations;
using LongPaths.Logic;
using SmaliParser.Logic;
using SearchOption = System.IO.SearchOption;

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
        [NotNull]
        public string PathToManifest { get; }

        /// <summary>
        /// Возвращает или задаёт пакет приложения
        /// </summary>
        public string Package
        {
            get => _packageAttribute.InnerText;
            set
            {
                _packageAttribute.InnerText = value;
                Save();
            }
        }

        /// <summary>
        /// Возвращает XmlDocument представляющий текущий AndroidManifest.xml
        /// </summary>
        [NotNull]
        public XmlDocument Document { get; }

        /// <summary>
        /// Возвращает текущие разрешения приложения
        /// </summary>
        [NotNull]
        public UsesPermissions Permissions { get; }

        /// <summary>
        /// Возвращает список activity документа
        /// </summary>
        [NotNull]
        public IReadOnlyList<XmlNode> Activities { get; }

        /// <summary>
        /// Возвращает путь до главного smali внутри "папка проекта\smali"
        /// </summary>
        [CanBeNull]
        public string MainSmaliName { get; }

        /// <summary>
        /// Возвращает путь на диске до главного smali файла
        /// </summary>
        [CanBeNull]
        public string MainSmaliPath { get; }

        /// <summary>
        /// Возвращает тип главного метода
        /// </summary>
        [CanBeNull]
        public string MethodType { get; }

        /// <summary>
        /// Возвращает или задаёт главный smali файл
        /// </summary>
        [CanBeNull]
        public MainSmali MainSmaliFile { get; set; }

        /// <summary>
        /// Возвращает или задаёт название файла изображения
        /// </summary>
        [NotNull]
        public string IconPath
        {
            get => _iconAttribute.Value;
            set
            {
                _iconAttribute.Value = "@drawable/" + value;
                Save();
            }
        }

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

        private const string SmaliPathSeparator = ".";

        private const string ManifestTag = "manifest";
        private const string ApplicationTag = "application";
        private const string ActivityTag = "activity";
        private const string IntentFilterTag = "intent-filter";
        private const string ActionTag = "action";
        private const string CategoryTag = "category";

        private const string PackageAttribute = "package";
        private const string NameAttribute = "android:name";

        private const string ActionMain = "android.intent.action.MAIN";
        private const string CategoryMain = "android.intent.category.LAUNCHER";

        private static readonly string ApplicationXPath = $"/*[local-name() = '{ManifestTag}']/*[local-name() = '{ApplicationTag}']";

        [NotNull]
        private static readonly string[] Methods = {"onCreate", "createView"};
        [NotNull]
        private static readonly Encoding DefaultSmaliEncoding = new UTF8Encoding(false);

        [NotNull]
        private readonly XmlAttribute _packageAttribute;
        [NotNull]
        private readonly XmlAttribute _iconAttribute;

        private readonly string _appLinkAttrib;
        [CanBeNull]
        private string _appName;
        private readonly XmlFile[] _appNameFiles;

        /// <summary>
        /// Инициализирует новый экземпляр класса AndroidMnifest на основании пути, функции логгирования и методов
        /// </summary>
        /// <param name="path">Путь к AndroidManifest.xml</param>
        /// <param name="methods">Названия возможных главных методов</param>
        /// <param name="mainSmaliEncoding">Кодировка главного smali файла (по умолчанию UTF-8)</param>
        /// <param name="needActivitySmali">Обязательно ли класс должен наследоваться от Activity</param>
        public AndroidManifest(
            [NotNull] string path,
            [CanBeNull] Encoding mainSmaliEncoding = null,
            bool needActivitySmali = false
        )
        {
            if (path == null)
                throw new ArgumentNullException(nameof(path));

            PathToManifest = path;

            string folderOfProject = Path.GetDirectoryName(PathToManifest);

            if (folderOfProject == null)
                throw new ArgumentException($"`{path}` has to stay within a directory");

            Document = new XmlDocument();

            using (FileStream stream = LFile.OpenRead(PathToManifest))
                Document.Load(stream);

            if (Document.DocumentElement == null)
                throw new Exception($"invalid format of the specified manifest file: `{PathToManifest}`");

            _packageAttribute = Document.DocumentElement.Attributes[PackageAttribute];

            if (_packageAttribute == null)
                throw new Exception($"`{PackageAttribute}` not found within the manifest");

            Permissions = new UsesPermissions(Document, PathToManifest);

            XmlNode applicationNode = Document.SelectSingleNode(ApplicationXPath);

            if (applicationNode == null)
                throw new Exception($"`{ApplicationTag}` not found within the manifest");
            if (applicationNode.Attributes == null)
                throw new Exception($"`{ApplicationTag}` does not have attributes");

            Activities = Array.AsReadOnly(applicationNode.GetChildren().Where(n => n.Name == ActivityTag).ToArray());

            _iconAttribute = applicationNode.Attributes["android:icon"];

            if (_iconAttribute == null)
                throw new Exception("application icon not found within the manifest");

            _appLinkAttrib = applicationNode.Attributes["android:label"]?.Value.Split('/').Last();

            string resFolder = Path.Combine(folderOfProject, "res");

            if (LDirectory.Exists(resFolder))
            {
                _appNameFiles =
                    LDirectory.EnumerateFiles(resFolder, "strings.xml", SearchOption.AllDirectories)
                        .Select(file => new XmlFile(file))
                        .Where(itm => itm.Details?.FirstOrDefault(it => it.Name == _appLinkAttrib) != null)
                        .ToArray();

                if (_appNameFiles.Length > 0)
                    _appName = _appNameFiles[0].Details.First(item => item.Name == _appLinkAttrib).OldText;
            }

            string[] smaliFolders = LDirectory.GetDirectories(folderOfProject, "smali*");
            if (smaliFolders.Length > 0)
            {
                XmlNode[] mainActivityNodes = Activities.Where(IsMainActivity).ToArray();

                if (mainActivityNodes.Length > 1)
                    throw new Exception("There can be only one main activity in manifest");

                XmlNode mainActivityNode = mainActivityNodes.FirstOrDefault();

                (MainSmaliName, MainSmaliPath, MethodType) = GetMainSmaliInfo(
                    applicationNode, mainActivityNode, smaliFolders, Methods, needActivitySmali
                );

                if (LFile.Exists(MainSmaliPath))
                {
                    MainSmaliFile = new MainSmali(MainSmaliPath, MethodType, mainSmaliEncoding ?? (Encoding)DefaultSmaliEncoding.Clone());
                }
            }

            TraceWriter.WriteLine($"AndroidManifest: {nameof(AppName)} = \"{AppName}\"");
            TraceWriter.WriteLine($"AndroidManifest: {nameof(MainSmaliName)} = \"{MainSmaliName}\"");
            TraceWriter.WriteLine($"AndroidManifest: {nameof(MainSmaliPath)} = \"{MainSmaliPath}\"");
            TraceWriter.WriteLine($"AndroidManifest: {nameof(MethodType)} = \"{MethodType}\"");
            TraceWriter.WriteLine($"AndroidManifest: {nameof(Package)} = \"{Package}\"");
        }

        private static bool IsMainActivity([NotNull] XmlNode activityNode)
        {
            if (activityNode == null)
                throw new ArgumentNullException(nameof(activityNode));

            if (activityNode.Name != ActivityTag)
                return false;

            XmlNode[] intentFilters = activityNode.GetChildren().Where(child => child.Name == IntentFilterTag).ToArray();

            if (intentFilters.Length == 0)
                return false;

            int mainActionsCount = intentFilters
                .Count(it =>
                {
                    bool hasMainAction = it.GetChildren()
                        .Count(child =>
                             child.Name == ActionTag &&
                             child.Attributes?[NameAttribute]?.Value == ActionMain
                        ) == 1;

                    bool hasMainCategory = it.GetChildren()
                        .Count(child =>
                            child.Name == CategoryTag &&
                            child.Attributes?[NameAttribute]?.Value == CategoryMain
                        ) == 1;

                    return hasMainAction && hasMainCategory;
                });

            if (mainActionsCount > 1)
                throw new Exception("Intent filter can contain only zero or one main actions");

            return mainActionsCount == 1;
        }

        private static (string mainSmaliName, string mainSmaliPath, string method) GetMainSmaliInfo(
            [NotNull] XmlNode applicationNode,
            [CanBeNull] XmlNode mainActivityNode,
            [NotNull] IReadOnlyList<string> smaliFolders,
            [NotNull] IReadOnlyList<string> methods,
            bool needActivity
        )
        {
            if (applicationNode == null)
                throw new ArgumentNullException(nameof(applicationNode));
            if (smaliFolders == null)
                throw new ArgumentNullException(nameof(smaliFolders));
            if (methods == null)
                throw new ArgumentNullException(nameof(methods));

            string mainSmaliName = null;

            if (!needActivity)
            {
                // trying to get inner path from the `application` tag
                // ReSharper disable once PossibleNullReferenceException
                mainSmaliName = applicationNode.Attributes[NameAttribute]?.Value;
            }

            if (string.IsNullOrEmpty(mainSmaliName))
            {
                // just not to process manifest twice
                needActivity = true;

                // trying to get inner path from the `activity` tag
                mainSmaliName = mainActivityNode?.Attributes?[NameAttribute]?.Value;

                if (string.IsNullOrEmpty(mainSmaliName))
                    return (null, null, null);
            }

            var smaliFiles = new List<string>();
            string smaliEnding = mainSmaliName.Replace('.', '/') + ";";

            foreach (string smaliFolder in smaliFolders)
            {
                foreach (string smaliFile in Directory.EnumerateFiles(smaliFolder, "*.smali", SearchOption.AllDirectories))
                {
                    using (var reader = new StreamReader(LFile.OpenRead(smaliFile)))
                    {
                        if (reader.EndOfStream)
                            continue;
                        
                        string firstLine = reader.ReadLine();
                        if (firstLine == null)
                            continue;

                        if (firstLine.EndsWith(smaliEnding, StringComparison.Ordinal))
                            smaliFiles.Add(smaliFile);
                    }
                }
            }

            foreach (string file in smaliFiles)
            {
                string currentFile = file;

                SmaliClass fl;

                using (var stream = new StreamReader(LFile.OpenRead(file)))
                    fl = SmaliClass.ParseStream(stream);

                while (true)
                {
                    string method = fl.Methods.FirstOrDefault(m => methods.Contains(m.Name))?.Name;

                    if (method != null) // m.Name == "onCreate" || m.Name == "createView"
                    {
                        string folder = smaliFolders.First(f => currentFile.StartsWith(f, StringComparison.Ordinal));

                        string smaliName = currentFile.Remove(currentFile.Length - ".smali".Length).Remove(0, folder.Length + 1).Replace(Path.DirectorySeparatorChar.ToString(), SmaliPathSeparator);

                        return (smaliName, currentFile, method);
                    }

                    var mth = fl.Methods.FirstOrDefault(m => m.Name == "<init>");

                    var item = mth?.Body.FirstOrDefault(l => l.Contains("invoke-direct"));

                    if (item == null)
                        break;

                    // invoke-direct {p0}, Landroid/app/Application;-><init>()V

                    string path = item.Split(new[] {"}, L"}, StringSplitOptions.None)[1].Split(';')[0];
                    path =
                        smaliFolders
                            .Select(f => Path.Combine(f, $"{path.Replace('/', Path.DirectorySeparatorChar)}.smali"))
                            .FirstOrDefault(LFile.Exists);

                    if (path == null)
                        break;

                    currentFile = path;
                    fl = SmaliClass.ParseFile(path);
                }
            }

            if (needActivity)
                return (null, null, null);

            return GetMainSmaliInfo(applicationNode, mainActivityNode, smaliFolders, methods, true);
        }

        /// <summary>
        /// Сохраняет внесённые изменения в файл
        /// </summary>
        public void Save()
        {
            using (var stream = LFile.Create(PathToManifest))
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
        [SuppressMessage("ReSharper", "UnusedMember.Global")]
        [SuppressMessage("ReSharper", "InconsistentNaming")]
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
        [SuppressMessage("ReSharper", "UnusedMember.Global")]
        [SuppressMessage("ReSharper", "InconsistentNaming")]
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
        [SuppressMessage("ReSharper", "UnusedMember.Global")]
        [SuppressMessage("ReSharper", "InconsistentNaming")]
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
                // ReSharper disable once PossibleNullReferenceException
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
