using System;
using ICSharpCode.SharpZipLib.Zip;

namespace AndroidHelper.Logic.SharpZip
{
    internal class SharpZipUpdateDisposable : IDisposable
    {
        private ZipFile _zipFile;
        private bool _isDisposed;

        public SharpZipUpdateDisposable(ZipFile zipFile)
        {
            _zipFile = zipFile ?? throw new ArgumentNullException(nameof(zipFile));
            zipFile.BeginUpdate();
        }

        public void Dispose()
        {
            if (_isDisposed)
                throw new ObjectDisposedException(nameof(SharpZipUpdateDisposable));

            _isDisposed = true;

            _zipFile.CommitUpdate();
            _zipFile = null;
        }
    }
}
