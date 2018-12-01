using System.Collections.Generic;
using JetBrains.Annotations;

namespace AndroidHelper.Logic.Interfaces
{
    public interface IApktool
    {
        /// <summary>
        /// Возвращает путь к java.exe
        /// </summary> 
        [CanBeNull]
        string JavaPath { get; }

        /// <summary>
        /// Возвращает путь к apktools.jar
        /// </summary>
        [CanBeNull]
        string ApktoolPath { get; }

        /// <summary>
        /// Возвращает путь к signapk.jar
        /// </summary>
        [CanBeNull]
        string SignApkPath { get; }

        /// <summary>
        /// Возвращает путь к baksmali.jar
        /// </summary>
        [CanBeNull]
        string BaksmaliPath { get; }

        /// <summary>
        /// Возвращает путь к smali.jar
        /// </summary>
        [CanBeNull]
        string SmaliPath { get; }

        /// <summary>
        /// Возвращает путь к key.x509.pem
        /// </summary>
        [CanBeNull]
        string DefaultKeyPemPath { get; }

        /// <summary>
        /// Возвращает путь к key.pk8
        /// </summary>
        [CanBeNull]
        string DefaultKeyPkPath { get; }

        /// <summary>
        /// Декомпилирует apk файл
        /// </summary>
        /// <param name="apkPath">Путь к apk файлу</param>
        /// <param name="destinationFolder">Папка, куда apk будет декомпилирован</param>
        /// <param name="dataHandler">Обработчик текста, выводящегося консолью</param>
        void Decompile(
            [NotNull] string apkPath,
            [NotNull] string destinationFolder,
            [CanBeNull] IProcessDataHandler dataHandler
        );

        /// <summary>
        /// Компилирует папку
        /// </summary>
        /// <param name="projectFolderPath">Папка проекта, который нужно скомпилировать</param>
        /// <param name="destinationApkPath">Путь, куда будет помещён собранный apk</param>
        /// <param name="dataHandler">Обработчик текста, выводящегося консолью</param>
        /// <param name="errors">Список ошибок, возникших при сборке</param>
        void Compile(
            [NotNull] string projectFolderPath,
            [NotNull] string destinationApkPath,
            [CanBeNull] IProcessDataHandler dataHandler,
            out List<Error> errors
        );

        /// <summary>
        /// Подписывает указанный файл
        /// </summary>
        /// <param name="sourceApkPath">Файл для подписи</param>
        /// <param name="signedApkPath">Путь к подписанному файлу</param>
        /// <param name="tempFileProvider">Класс, позволяющий создавать временные файлы</param>
        /// <param name="dataHandler">Обработчик текста, выводящегося консолью</param>
        /// <param name="deleteMetaInf">Необходимо ли удалять META-INF перед подписью</param>
        void Sign(
            [NotNull] string sourceApkPath,
            [NotNull] string signedApkPath,
            [NotNull] ITempFileProvider tempFileProvider,
            [CanBeNull] IProcessDataHandler dataHandler,
            bool deleteMetaInf
        );

        /// <summary>
        /// Устанавливает в систему framework
        /// </summary>
        /// <param name="pathToFramework">Путь до framework</param>
        /// <param name="dataHandler">Обработчик текста, выводящегося консолью</param>
        void InstallFramework(
            [NotNull] string pathToFramework,
            [CanBeNull] IProcessDataHandler dataHandler
        );

        /// <summary>
        /// Декомпилирует dex в smali
        /// </summary>
        /// <param name="apkPath">Путь к apk файлу, который нужно декомпилировать</param>
        /// <param name="resultFolder">Путь к папке, в которую будут сохранены декомпилированные файлы</param>
        /// <param name="tempFolderProvider">Класс, позволяющий создавать временные папки</param>
        /// <param name="dataHandler">Обработчик текста, выводящегося консолью</param>
        void Baksmali(
            [NotNull] string apkPath,
            [NotNull] string resultFolder,
            [NotNull] ITempFolderProvider tempFolderProvider,
            [CanBeNull] IProcessDataHandler dataHandler
        );

        /// <summary>
        /// Компилирует smali в dex
        /// </summary>
        /// <param name="folderWithSmali">Путь к папке, содержащей декомпилированные dex файлы</param>
        /// <param name="resultFolder">Путь к папке, куда будут созранены скомпилированные dex файлы</param>
        /// <param name="dataHandler">Обработчик текста, выводящегося консолью</param>
        void Smali(
            [NotNull] string folderWithSmali,
            [NotNull] string resultFolder,
            [CanBeNull] IProcessDataHandler dataHandler
        );

        /// <summary>
        /// Декодирует AndroidManifest
        /// </summary>
        /// <param name="apkPath">Путь к apk файлу</param>
        /// <param name="resultManifestPath">Путь к выходному манифесту</param>
        /// <param name="tempFolderProvider">Класс, позволяющий создавать временные папки</param>
        void ExtractSimpleManifest(
            [NotNull] string apkPath,
            [NotNull] string resultManifestPath,
            [NotNull] ITempFolderProvider tempFolderProvider
        );

        /// <summary>
        /// Исправляет возможные ошибки
        /// </summary>
        /// <param name="errors">Список ошибок</param>
        void FixErrors([ItemNotNull] IEnumerable<Error> errors);

        /// <summary>
        /// Удаляет папку META-INF из файла
        /// </summary>
        /// <param name="fileName">Путь к файлу .apk</param>
        void RemoveMetaInf([NotNull] string fileName);

        /// <summary>
        /// Возвращает версию apktool
        /// </summary>
        [NotNull]
        string GetApktoolVersion();
    }
}