using System;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;

[assembly: InternalsVisibleTo("AndroidHelperTests")]

namespace AndroidHelper.Logic
{
    /// <summary>
    /// Класс для работы с главным smali файлом
    /// </summary>
    public class MainSmali
    {
        private static readonly string NewLine = Environment.NewLine;
        private static readonly Encoding DefaultEncoding = new UTF8Encoding(false);

        private readonly Encoding _fileEncoding;
        private string _smaliText;

        internal int Index { get; private set; } = -1;

        /// <summary>
        /// Возвращает главный метод данного smali файла
        /// </summary>
        public string MethodType { get; }

        /// <summary>
        /// Возвращает путь к smali файлу
        /// </summary>
        public string PathToSmali { get; }

        /// <summary>
        /// Инициализирует новый экземпляр класса MainSmali на основании пути к файлу и главного метода
        /// </summary>
        /// <param name="path">Путь к файлу</param>
        /// <param name="methodType">Главный метод</param>
        /// <param name="encoding">Кодировка smali файла</param>
        public MainSmali(string path, string methodType, Encoding encoding = null)
        {
            if (!File.Exists(path))
                throw new FileNotFoundException($"File \"{path}\" was not found");

            _fileEncoding = encoding ?? DefaultEncoding;
            PathToSmali = path;
            MethodType = methodType;
            
            Init();
        }

        /// <summary>
        /// Инициализирует новый файл
        /// </summary>
        private void Init()
        {
            string methodTypeLocal = MethodType;

            if (methodTypeLocal.Contains("onCreate"))
                methodTypeLocal = " onCreate(";

            //.method protected onCreate(...)V      .locals 1/.registers 1     .prologue     ...code...

            _smaliText = File.ReadAllText(PathToSmali, _fileEncoding);
            int onCreatePosition = FindPos(_smaliText, methodTypeLocal);
            // index -> .method protected ->onCreate(...)V      .locals 1/.registers 1     .prologue     ...code...

            if (onCreatePosition == -1)
                return;

            int localsPosition = FindPos(_smaliText, ".locals ", onCreatePosition);
            int registersPosition = FindPos(_smaliText, ".registers ", onCreatePosition);
            // localsPosition -> .method protected onCreate(...)V      ->.locals 1/.registers 1     .prologue     ...code...

            int variablesPos = localsPosition > -1 ? localsPosition : registersPosition;
            string variablesStr = localsPosition > -1 ? ".locals " : ".registers ";

            if (variablesPos > -1 && variablesPos - onCreatePosition < 100)
            {
                int startIndex = variablesPos + variablesStr.Length;
                // startIndex -> .method protected onCreate(...)V      .locals ->1/.registers 1     .prologue     ...code...

                if (int.Parse(_smaliText[startIndex].ToString()) < 5 && _smaliText[startIndex + 1] == '\r')
                {
                    _smaliText = _smaliText.Remove(startIndex, 1);
                    _smaliText = _smaliText.Insert(startIndex, "5");
                }

                variablesPos = FindPos(_smaliText, NewLine, startIndex);
                // localsPosition -> .method protected onCreate(...)V      .locals 1/.registers 1->     .prologue     ...code...
            }
            else
            {
                variablesPos = -1;
            }

            // locals: -1 или после .locals

            int prologuePosition = FindPos(_smaliText, ".prologue", onCreatePosition);
            // prologuePosition -> .method protected onCreate(...)V      .locals 1/.registers 1     ->.prologue     ...code...

            prologuePosition = prologuePosition == -1 || prologuePosition - onCreatePosition >= 250 ? -1 : prologuePosition + ".prologue".Length;
            // prologuePosition -> .method protected onCreate(...)V      .locals 1/.registers 1     .prologue->     ...code...

            // prologue position: -1 или после .prologue

            if (prologuePosition > -1)
            { 
                Index = prologuePosition;
                // index -> .method protected onCreate(Landroid/os/Bundle;)V      .locals 1/.registers 1     .prologue->     ...code...
            }
            else if (variablesPos > -1)
            { 
                Index = variablesPos;
                // index -> .method protected onCreate(Landroid/os/Bundle;)V      .locals 1/.registers 1->     ...code...
            }
            else
            {
                var strArray = new[]
                {
                    new[] { ")V" },
                    new[] { ");", ";" }
                };

                int methodIndex = methodTypeLocal.Contains("onCreate") ? 0 : 1;

                foreach (string textToSearch in strArray[methodIndex])
                    onCreatePosition = FindPos(_smaliText, textToSearch, onCreatePosition + 1);

                // onCreatePosition -> .method protected onCreate(...->)V     ...code...

                if (onCreatePosition <= -1)
                    return;

                onCreatePosition += strArray[methodIndex].Last().Length;
                // onCreatePosition -> .method protected onCreate(...)V->     ...code...

                Index = onCreatePosition;
                // index -> .method protected onCreate(...)V->     ...code...
            }

            Index += Environment.NewLine.Length;
        }

        /// <summary>
        /// Добавляет текст в главный метод
        /// </summary>
        /// <param name="text">Текст для добавления</param>
        /// <param name="checkExisting">Проверяет, добавлен ли уже этот текст</param>
        /// <returns>Успешна ли операция</returns>
        public bool AddTextToMethod(string text, bool checkExisting = true)
        {
            if (Index == -1)
                return false;

            if (checkExisting && FindPos(_smaliText, text, Index) >= 0)
                return false;

            _smaliText = _smaliText.Insert(Index, NewLine + text + NewLine);

            return true;
        }

        /// <summary>
        /// Удаляет вызовы всплывающих сообщений во Всём файле. Не требует сохранения изменений
        /// </summary>
        public void RemoveToasts()
        {
            _smaliText = _smaliText.Replace("invoke-virtual {v0}, Landroid/widget/Toast;->show()V", "");
            Save();
            Init();
        }

        /// <summary>
        /// Сохраняет изменения в файл
        /// </summary>
        public void Save()
        {
            File.WriteAllText(PathToSmali, _smaliText, _fileEncoding);
        }

        /// <summary>
        /// Возвращает текст smali файла
        /// </summary>
        public string GetSmaliText() => _smaliText;

        private static int FindPos(string text, string textToSearch, int startIndex = 0)
        {
            return text.IndexOf(textToSearch, startIndex, StringComparison.Ordinal);
        }
    }
}
