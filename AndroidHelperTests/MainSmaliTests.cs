using AndroidHelper.Logic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AndroidHelperTests
{
    [TestClass]
    public class MainSmaliTests
    {
        [TestMethod]
        public void MainSmaliFirst()
        {
            MainSmali cls = new MainSmali(Paths.AdditFilesFolder + "\\col.smali", "onCreate");

            Assert.AreEqual(65642, cls.Index, "onCreate index");
        }
    }
}
