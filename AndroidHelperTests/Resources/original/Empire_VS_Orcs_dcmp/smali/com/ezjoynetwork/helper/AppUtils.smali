.class public Lcom/ezjoynetwork/helper/AppUtils;
.super Ljava/lang/Object;


# static fields
.field private static final PACKAGE_GOOGLE_MARKET:Ljava/lang/String; = "com.android.vending"

.field public static final PACKAGE_NOT_EXISTED:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ezjoynetwork/helper/AppUtils;->nativeSetUpdateInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static checkUpdate()V
    .locals 2

    sget-object v0, Lc/i;->a:Lc/i;

    new-instance v1, Lcom/ezjoynetwork/helper/e;

    invoke-direct {v1}, Lcom/ezjoynetwork/helper/e;-><init>()V

    invoke-virtual {v0, v1}, Lc/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native getAID()Ljava/lang/String;
.end method

.method public static getCachePath()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getGameVersion()I
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ezjoynetwork/helper/AppUtils;->getLocalPackageVerCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getLocalPackageVerCode(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    invoke-virtual {v1}, Lcom/ezjoynetwork/render/GameActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static hideAd()V
    .locals 1

    sget-object v0, Ld/a;->a:Ld/a;

    invoke-virtual {v0}, Ld/a;->d()V

    return-void
.end method

.method public static initService()V
    .locals 2

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lcom/ezjoynetwork/helper/g;

    invoke-direct {v1}, Lcom/ezjoynetwork/helper/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static invokeURLOnMarket(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lcom/ezjoynetwork/helper/a;

    invoke-direct {v1, p0}, Lcom/ezjoynetwork/helper/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static invokeURLOnWeb(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lcom/ezjoynetwork/helper/b;

    invoke-direct {v1, p0}, Lcom/ezjoynetwork/helper/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static invokeWebMoreGames(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lcom/ezjoynetwork/helper/d;

    invoke-direct {v1, p0}, Lcom/ezjoynetwork/helper/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isAdShown()Z
    .locals 1

    sget-object v0, Ld/a;->a:Ld/a;

    invoke-virtual {v0}, Ld/a;->g()Z

    move-result v0

    return v0
.end method

.method public static isFullAdReady()Z
    .locals 1

    sget-object v0, Ld/a;->a:Ld/a;

    invoke-virtual {v0}, Ld/a;->f()Z

    move-result v0

    return v0
.end method

.method public static isGameInstalled(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/ezjoynetwork/helper/AppUtils;->getLocalPackageVerCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGoogleMarketExisted()Z
    .locals 2

    const-string v0, "com.android.vending"

    invoke-static {v0}, Lcom/ezjoynetwork/helper/AppUtils;->getLocalPackageVerCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeSetUpdateInfo(Ljava/lang/String;)V
.end method

.method public static onIAP(II)V
    .locals 2

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lcom/ezjoynetwork/helper/f;

    invoke-direct {v1, p0, p1}, Lcom/ezjoynetwork/helper/f;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static native onIAPSuccess(II)Z
.end method

.method public static onMoreGameSelected(IZ)V
    .locals 4

    sget-object v0, Lc/a;->a:Lc/a;

    invoke-virtual {v0}, Lc/a;->b()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/f;

    iget-object v3, v0, Lc/f;->a:Lc/d;

    iget v3, v3, Lc/d;->a:I

    if-ne v3, p0, :cond_1

    invoke-virtual {v0, p1}, Lc/f;->a(Z)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static rate(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lcom/ezjoynetwork/helper/c;

    invoke-direct {v1, p0}, Lcom/ezjoynetwork/helper/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static share(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "I Love This Game: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    const-string v2, "Share This Game!"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ezjoynetwork/render/GameActivity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    const-string v1, "app_share"

    invoke-static {v0, v1}, Lcom/mobclick/android/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showAdBottom()V
    .locals 1

    sget-object v0, Ld/a;->a:Ld/a;

    invoke-virtual {v0}, Ld/a;->c()V

    return-void
.end method

.method public static showAdTop()V
    .locals 1

    sget-object v0, Ld/a;->a:Ld/a;

    invoke-virtual {v0}, Ld/a;->b()V

    return-void
.end method

.method public static showFullAd()Z
    .locals 1

    sget-object v0, Ld/a;->a:Ld/a;

    invoke-virtual {v0}, Ld/a;->e()Z

    move-result v0

    return v0
.end method

.method public static showUpdateDialog(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lcom/ezjoynetwork/helper/h;

    invoke-direct {v1, p1, p0}, Lcom/ezjoynetwork/helper/h;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static umengMsg(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    invoke-static {v0, p0}, Lcom/mobclick/android/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static umengMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    invoke-static {v0, p0, p1}, Lcom/mobclick/android/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
