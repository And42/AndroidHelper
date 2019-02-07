using System.IO;
using AndroidHelper.Logic;
using Xunit;

namespace AndroidHelperTests
{
    public class MainSmaliTests
    {
        [Fact]
        public void OnCreateInsideMethod()
        {
            var mainSmali = new MainSmali(Path.Combine(Paths.AdditFilesFolder, "1.smali"), "onCreate");

            Assert.Equal(2161, mainSmali.Index);
        }

        [Fact]
        public void MainSmaliFirst()
        {
            var mainSmali = new MainSmali(Path.Combine(Paths.AdditFilesFolder, "2.smali"), "onCreate");

            Assert.Equal(65642, mainSmali.Index);
        }
    }
}
