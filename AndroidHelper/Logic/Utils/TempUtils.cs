using System;
using System.IO;
using AndroidHelper.Logic.Interfaces;
using JetBrains.Annotations;

namespace AndroidHelper.Logic.Utils
{
    public static class TempUtils
    {
        public abstract class TempElementDisposable : IDisposable
        {
            [NotNull]
            protected readonly string TempElement;
            private bool _isDisposed;

            public TempElementDisposable([NotNull] string tempElement)
            {
                if (tempElement == null)
                    throw new ArgumentNullException(nameof(tempElement));

                TempElement = tempElement;
            }

            public void Dispose()
            {
                CheckIfDisposed();

                DeleteElement();
                _isDisposed = true;
            }

            protected abstract void DeleteElement();
            
            protected void CheckIfDisposed()
            {
                if (_isDisposed)
                    throw new ObjectDisposedException(nameof(TempFolderDisposable));
            }
        }
        
        public class TempFolderDisposable : TempElementDisposable
        {
            [NotNull]
            public string TempFolder
            {
                get
                {
                    CheckIfDisposed();
                    return TempElement;
                }
            }

            public TempFolderDisposable([NotNull] string tempFolder) : base(tempFolder) { }

            protected override void DeleteElement()
            {
                Directory.Delete(TempFolder, true);
            }
        }
        
        public class TempFileDisposable : TempElementDisposable
        {
            [NotNull]
            public string TempFile
            {
                get
                {
                    CheckIfDisposed();
                    return TempElement;
                }
            }

            public TempFileDisposable([NotNull] string tempFile) : base(tempFile) { }

            protected override void DeleteElement()
            {
                File.Delete(TempFile);
            }
        }

        public static TempFolderDisposable UseTempFolder([NotNull] ITempFolderProvider tempFolderProvider)
        {
            if (tempFolderProvider == null)
                throw new ArgumentNullException(nameof(tempFolderProvider));

            return new TempFolderDisposable(tempFolderProvider.CreateTempFolder());
        }
        
        public static TempFileDisposable UseTempFile([NotNull] ITempFileProvider tempFileProvider)
        {
            if (tempFileProvider == null)
                throw new ArgumentNullException(nameof(tempFileProvider));

            return new TempFileDisposable(tempFileProvider.CreateTempFile());
        }
    }
}
