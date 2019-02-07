using System.IO;
using AndroidHelper.Logic;
using Xunit;

namespace AndroidHelperTests
{
    public class MainSmaliTests
    {
        [Fact]
        public void MainSmaliFirst()
        {
            MainSmali cls = new MainSmali(Path.Combine(Paths.AdditFilesFolder, "col.smali"), "onCreate");

            Assert.Equal(65642, cls.Index); // "onCreate  index"
        }

        [Fact]
        public void OnCreateInsideMethod()
        {
            var mainSmali = new MainSmali(Path.Combine(Paths.AdditFilesFolder, "1.smali"), "onCreate");

            Assert.Equal(2161, mainSmali.Index);
        }
    }
}
