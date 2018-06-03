using AndroidHelper.Logic;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AndroidHelperTests
{
    [TestClass]
    public class AndroidManifestTest
    {
        private readonly AndroidManifest _manifest;

        public AndroidManifestTest()
        {
            _manifest = new AndroidManifest(Paths.EmpireManifest);
        }

        public AndroidManifestTest(AndroidManifest manifest)
        {
            _manifest = manifest;
        }

        [TestMethod]
        public void AndroidManifest_PackageName()
        {
            Assert.AreEqual("com.ezjoynetwork.empirevsorcs", _manifest.Package);
        }

        [TestMethod]
        public void AndroidManifest_IconName()
        {
            Assert.AreEqual("icon", _manifest.IconName);
        }

        [TestMethod]
        public void AndroidManifest_Activities()
        {
            var activities = _manifest.Activities;
            Assert.AreEqual(2, activities.Count);
            Assert.AreEqual(".GameApp", activities[0].Attributes?["android:name"].Value);
            Assert.AreEqual("com.google.ads.AdActivity", activities[1].Attributes?["android:name"].Value);
        }

        [TestMethod]
        public void AndroidManifest_PathToManifest()
        {
            Assert.AreEqual(Paths.EmpireManifest, _manifest.PathToManifest);
        }

        [TestMethod]
        public void AndroidManifest_Permissions()
        {
            var permissions = _manifest.Permissions;
            Assert.AreEqual(8, permissions.Count);
            Assert.AreEqual("android.permission.INTERNET", permissions[0].Name);
            Assert.AreEqual("android.permission.ACCESS_NETWORK_STATE", permissions[1].Name);
            Assert.AreEqual("android.permission.READ_PHONE_STATE", permissions[2].Name);
            Assert.AreEqual("android.permission.ACCESS_WIFI_STATE", permissions[3].Name);
            Assert.AreEqual("android.permission.WAKE_LOCK", permissions[4].Name);
            Assert.AreEqual("android.permission.WRITE_EXTERNAL_STORAGE", permissions[5].Name);
            Assert.AreEqual("android.permission.GET_ACCOUNTS", permissions[6].Name);
            Assert.AreEqual("com.android.vending.BILLING", permissions[7].Name);
        }

        [TestMethod]
        public void AndroidManifest_MainSmaliPath()
        {
            Assert.AreEqual(Paths.TestFilesFolder + @"\Empire_VS_Orcs_dcmp\smali\com\ezjoynetwork\empirevsorcs\GameApp.smali", _manifest.MainSmaliPath);
        }

        [TestMethod]
        public void AndroidManifest_MainSmaliName()
        {
            Assert.AreEqual(@"com\ezjoynetwork\empirevsorcs\GameApp", _manifest.MainSmaliName);
        }

        [TestMethod]
        public void AndroidManifest_MainSmaliMethodType()
        {
            Assert.AreEqual("onCreate", _manifest.MainSmaliFile.MethodType);
        }
    }
}
