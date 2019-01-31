using System;
using System.IO;
using System.Linq;
using JetBrains.Annotations;
using LongPaths.Logic;

namespace AndroidHelper.Logic.Utils
{
    public static class EnvironmentUtils
    {
        /// <summary>
        /// Возвращает путь к установленному в системе java.exe или <code>null</code>, если java не найдена
        /// </summary>
        [CanBeNull]
        public static string GetSystemJavaPath()
        {
            string path = Environment.GetEnvironmentVariable("path");

            if (path == null)
                return null;

            string[] folders = path.Split(';');

            return folders.Select(folder => Path.Combine(folder, "java.exe")).FirstOrDefault(LFile.Exists);
        }
    }
}