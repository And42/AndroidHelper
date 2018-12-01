using System;
using ICSharpCode.SharpZipLib.Zip;

namespace AndroidHelper.Logic.SharpZip
{
    internal class SharpZipUpdateDisposable : IDisposable
    {
        private ZipFile _zipFile;

        public SharpZipUpdateDisposable(ZipFile zipFile)
        {
            if (zipFile == null)
                throw new ArgumentNullException(nameof(zipFile));

            _zipFile = zipFile;

            zipFile.BeginUpdate();
        }

        public void Dispose()
        {
            if (_zipFile == null)
                return;

            ZipFile tempRef = _zipFile;
            _zipFile = null;

            tempRef.CommitUpdate();
        }
    }
}
