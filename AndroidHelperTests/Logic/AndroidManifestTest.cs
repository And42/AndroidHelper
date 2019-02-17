using System.Collections.Generic;
using System.IO;
using System.Xml;
using AndroidHelper.Logic;
using AndroidHelper.Properties;
using Xunit;

namespace AndroidHelperTests.Logic
{
    public class AndroidManifestTest
    {
        [Fact]
        public void AndroidManifest_PackageName()
        {
            AndroidManifest manifest = ParseManifest();

            Assert.Equal("com.ezjoynetwork.empirevsorcs", manifest.Package);
        }

        [Fact]
        public void AndroidManifest_IconName()
        {
            AndroidManifest manifest = ParseManifest();

            Assert.Equal("@drawable/icon", manifest.IconPath);
        }

        [Fact]
        public void AndroidManifest_Activities()
        {
            AndroidManifest manifest = ParseManifest();
            IReadOnlyList<XmlNode> activities = manifest.Activities;

            Assert.Equal(2, activities.Count);
            Assert.NotNull(activities[0].Attributes);
            Assert.Equal(".GameApp", activities[0].Attributes["android:name"].Value);
            Assert.NotNull(activities[1].Attributes);
            Assert.Equal("com.google.ads.AdActivity", activities[1].Attributes["android:name"].Value);
        }

        [Fact]
        public void AndroidManifest_PathToManifest()
        {
            AndroidManifest manifest = ParseManifest();

            Assert.Equal(Paths.EmpireManifest, manifest.PathToManifest);
        }

        [Fact]
        public void AndroidManifest_Permissions()
        {
            AndroidManifest manifest = ParseManifest();
            UsesPermissions permissions = manifest.Permissions;

            Assert.Equal(8, permissions.Count);
            Assert.Equal("android.permission.INTERNET", permissions[0].Name);
            Assert.Equal("android.permission.ACCESS_NETWORK_STATE", permissions[1].Name);
            Assert.Equal("android.permission.READ_PHONE_STATE", permissions[2].Name);
            Assert.Equal("android.permission.ACCESS_WIFI_STATE", permissions[3].Name);
            Assert.Equal("android.permission.WAKE_LOCK", permissions[4].Name);
            Assert.Equal("android.permission.WRITE_EXTERNAL_STORAGE", permissions[5].Name);
            Assert.Equal("android.permission.GET_ACCOUNTS", permissions[6].Name);
            Assert.Equal("com.android.vending.BILLING", permissions[7].Name);
        }

        [Fact]
        public void AndroidManifest_MethodType()
        {
            AndroidManifest manifest = ParseManifest();

            Assert.Equal("onCreate", manifest.MethodType);
        }

        [Fact]
        public void AndroidManifest_MainSmaliPath()
        {
            AndroidManifest manifest = ParseManifest();

            Assert.Equal(
                Path.Combine(Paths.TestFilesFolder, "Empire_VS_Orcs_dcmp", "smali", "com", "ezjoynetwork", "empirevsorcs", "GameApp.smali"),
                manifest.MainSmaliPath
            );
        }

        [Fact]
        public void AndroidManifest_MainSmaliName()
        {
            AndroidManifest manifest = ParseManifest();

            Assert.Equal("com.ezjoynetwork.empirevsorcs.GameApp", manifest.MainSmaliName);
        }

        [Fact]
        public void AndroidManifest_MainSmaliMethodType()
        {
            AndroidManifest manifest = ParseManifest();

            Assert.NotNull(manifest.MainSmaliFile);
            Assert.Equal("onCreate", manifest.MainSmaliFile.MethodType);
        }

        [NotNull]
        private static AndroidManifest ParseManifest()
        {
            return new AndroidManifest(Paths.EmpireManifest);
        }
    }
}
