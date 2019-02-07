.class public Lcom/igg/clashoflords2/col;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "col.java"

# interfaces
.implements Lcom/bill/BillingManager$PurchaseCallBack;
.implements Lcom/google/android/vending/expansion/downloader/IDownloaderClient;
.implements Lnet/metaps/sdk/Receiver;


# static fields
.field private static synthetic $SWITCH_TABLE$com$bill$BillingManager$PurchaseCallBack$PurchaseResult:[I = null

.field public static final SENDER_ID:Ljava/lang/String; = "489219977954"

.field public static final SHARE_FAIL:I = 0x0

.field private static final SHARE_GGP:I = 0x725

.field public static final SHARE_SUCC:I = 0x1

.field public static final SHARE_TYPE_FB:I = 0x0

.field public static final SHARE_TYPE_GGP:I = 0x2

.field public static final SHARE_TYPE_TT:I = 0x1

.field private static googleAccount:Lcom/igg/clashoflords2/GoogleAccount; = null

.field private static mUncaughtExceptionHadler:Lcom/igg/clashoflords2/UncaughtExceptionHandler; = null

.field private static final m_APPLICATION_ID:Ljava/lang/String; = "UVWKXLGACS0001"

.field private static final m_SDK_MODE:I

.field private static m_bOpenObb:Z

.field private static m_handler:Landroid/os/Handler;

.field public static m_jniCallback:Lcom/igg/clashoflords2/jniCallback;

.field public static m_nRequestCode:I

.field public static m_sAppId:Ljava/lang/String;

.field public static m_sCurrencyName:Ljava/lang/String;

.field private static m_sFaceBookRequest:Ljava/lang/String;

.field private static m_sFacebookFriends:Ljava/lang/String;

.field public static m_sSecurityToken:Ljava/lang/String;

.field private static m_sXAPKFile:Lcom/igg/clashoflords2/XAPKFile;

.field private static m_strDeviceInfo:Ljava/lang/String;

.field static s_Instance:Lcom/igg/clashoflords2/col;

.field static s_event:Ljava/lang/String;


# instance fields
.field private final mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

.field private m_DownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

.field private m_RemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

.field private m_facebook:Lcom/igg/clashoflords2/Facebook;

.field private m_payV2:Lcom/igg/clashoflords2/payV2;

.field private m_powerManager:Landroid/os/PowerManager;

.field public m_regId:Ljava/lang/String;

.field private m_twitterShare:Lcom/igg/clashoflords2/TwitterShare;

.field private m_wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic $SWITCH_TABLE$com$bill$BillingManager$PurchaseCallBack$PurchaseResult()[I
    .locals 3

    sget-object v0, Lcom/igg/clashoflords2/col;->$SWITCH_TABLE$com$bill$BillingManager$PurchaseCallBack$PurchaseResult:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;->values()[Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;->RESULT_OK:Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;

    invoke-virtual {v1}, Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;->RESULT_TRYAGAIN_LATER:Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;

    invoke-virtual {v1}, Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;->RESULT_UNKNOW_ERROR:Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;

    invoke-virtual {v1}, Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;->RESULT_UNSUPPORT_BLILING:Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;

    invoke-virtual {v1}, Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/igg/clashoflords2/col;->$SWITCH_TABLE$com$bill$BillingManager$PurchaseCallBack$PurchaseResult:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/igg/clashoflords2/jniCallback;

    invoke-direct {v0}, Lcom/igg/clashoflords2/jniCallback;-><init>()V

    sput-object v0, Lcom/igg/clashoflords2/col;->m_jniCallback:Lcom/igg/clashoflords2/jniCallback;

    new-instance v0, Lcom/igg/clashoflords2/UncaughtExceptionHandler;

    invoke-direct {v0}, Lcom/igg/clashoflords2/UncaughtExceptionHandler;-><init>()V

    sput-object v0, Lcom/igg/clashoflords2/col;->mUncaughtExceptionHadler:Lcom/igg/clashoflords2/UncaughtExceptionHandler;

    sput-object v1, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    const-string v0, ""

    sput-object v0, Lcom/igg/clashoflords2/col;->m_strDeviceInfo:Ljava/lang/String;

    sput-object v1, Lcom/igg/clashoflords2/col;->m_handler:Landroid/os/Handler;

    sput-object v1, Lcom/igg/clashoflords2/col;->m_sFaceBookRequest:Ljava/lang/String;

    sput-object v1, Lcom/igg/clashoflords2/col;->m_sFacebookFriends:Ljava/lang/String;

    const-string v0, "21568"

    sput-object v0, Lcom/igg/clashoflords2/col;->m_sAppId:Ljava/lang/String;

    const-string v0, "e278753c0764fb9740253c246e4957cf"

    sput-object v0, Lcom/igg/clashoflords2/col;->m_sSecurityToken:Ljava/lang/String;

    const v0, 0x56d1c0

    sput v0, Lcom/igg/clashoflords2/col;->m_nRequestCode:I

    const-string v0, "Jewels"

    sput-object v0, Lcom/igg/clashoflords2/col;->m_sCurrencyName:Ljava/lang/String;

    sput-object v1, Lcom/igg/clashoflords2/col;->googleAccount:Lcom/igg/clashoflords2/GoogleAccount;

    sput-object v1, Lcom/igg/clashoflords2/col;->m_sXAPKFile:Lcom/igg/clashoflords2/XAPKFile;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/igg/clashoflords2/col;->m_bOpenObb:Z

    const-string v0, "game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    iput-object v1, p0, Lcom/igg/clashoflords2/col;->m_powerManager:Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/igg/clashoflords2/col;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/igg/clashoflords2/payV2;

    invoke-direct {v0}, Lcom/igg/clashoflords2/payV2;-><init>()V

    iput-object v0, p0, Lcom/igg/clashoflords2/col;->m_payV2:Lcom/igg/clashoflords2/payV2;

    new-instance v0, Lcom/igg/clashoflords2/Facebook;

    invoke-direct {v0}, Lcom/igg/clashoflords2/Facebook;-><init>()V

    iput-object v0, p0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    iput-object v1, p0, Lcom/igg/clashoflords2/col;->m_regId:Ljava/lang/String;

    iput-object v1, p0, Lcom/igg/clashoflords2/col;->m_RemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iput-object v1, p0, Lcom/igg/clashoflords2/col;->m_DownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    new-instance v0, Lcom/igg/clashoflords2/TwitterShare;

    invoke-direct {v0}, Lcom/igg/clashoflords2/TwitterShare;-><init>()V

    iput-object v0, p0, Lcom/igg/clashoflords2/col;->m_twitterShare:Lcom/igg/clashoflords2/TwitterShare;

    new-instance v0, Lcom/igg/clashoflords2/col$1;

    invoke-direct {v0, p0}, Lcom/igg/clashoflords2/col$1;-><init>(Lcom/igg/clashoflords2/col;)V

    iput-object v0, p0, Lcom/igg/clashoflords2/col;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$0(Lcom/igg/clashoflords2/col;)Lcom/igg/clashoflords2/Facebook;
    .locals 1

    iget-object v0, p0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    return-object v0
.end method

.method static adxDo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static adxFirstLogin()V
    .locals 2

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    new-instance v1, Lcom/igg/clashoflords2/col$4;

    invoke-direct {v1}, Lcom/igg/clashoflords2/col$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/clashoflords2/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private adxOnCreate()V
    .locals 4

    :try_start_0
    const-string v1, "adx"

    const-string v2, "adx onCreate do"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/AdX/tag/AdXConnect;->LOGLEVEL:I

    invoke-static {v1, v2, v3}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static/range {p0 .. p0}, Lcom/savegame/SavesRestoringPortable;->DoSmth(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private adxOnDestory()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/AdX/tag/AdXConnect;->LOGLEVEL:I

    invoke-static {v1, v2, v3}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/AdX/tag/AdXConnect;->finalize()V

    const-string v1, "adx"

    const-string v2, "adx onDestroy do"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private adxStarDo()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/igg/clashoflords2/DeviceUuidFactory;->getDeviceUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "open"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "signup"

    const-string v6, ""

    invoke-static {v4, v5, v2, v6}, Lcom/AdX/tag/AdXConnect;->getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "open"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v4, "adx"

    const-string v5, "adx signup do"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Launch"

    const-string v6, "iggid"

    invoke-static {v4, v5, v2, v6}, Lcom/AdX/tag/AdXConnect;->getAdXConnectEventInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "adx"

    const-string v5, "adx Launch do"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static autoSendLog()V
    .locals 1

    sget-object v0, Lcom/igg/clashoflords2/col;->mUncaughtExceptionHadler:Lcom/igg/clashoflords2/UncaughtExceptionHandler;

    invoke-virtual {v0}, Lcom/igg/clashoflords2/UncaughtExceptionHandler;->autoSendLog()V

    return-void
.end method

.method private beginDownloadObb()V
    .locals 8

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "=----------------------------beginDownloadObb"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igg/clashoflords2/col;->getIntent()Landroid/content/Intent;

    move-result-object v3

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x14000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {p0, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :try_start_0
    const-class v6, Lcom/igg/localService/ObbDownloaderService;

    invoke-static {p0, v4, v6}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->initObbDownloadInfo()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "beginDownloadObb"

    const-string v7, "Cannot find own package! MAYDAY!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/igg/clashoflords2/DownloadState;->setDownloadFinished(Z)V

    goto :goto_1
.end method

.method public static checkApkExist(Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    :try_start_0
    sget-object v5, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v5}, Lcom/igg/clashoflords2/col;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-virtual {v5, p0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    sget-object v5, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v5}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/igg/clashoflords2/AppHelp;->getAid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v5}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/igg/clashoflords2/AppHelp;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v5}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/igg/clashoflords2/AppHelp;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_1

    sget-object v5, Lcom/igg/clashoflords2/col;->m_jniCallback:Lcom/igg/clashoflords2/jniCallback;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/igg/clashoflords2/jniCallback;->checkApkExist(I)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/igg/clashoflords2/col;->m_jniCallback:Lcom/igg/clashoflords2/jniCallback;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/igg/clashoflords2/jniCallback;->checkApkExist(I)V

    goto :goto_1
.end method

.method public static closeGameActive()V
    .locals 3

    :try_start_0
    const-string v1, "col"

    const-string v2, "closeGameActive() \u6e38\u620fcloseGameActive\u9000\u51fa"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v1}, Lcom/igg/clashoflords2/col;->starColService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private downColService()V
    .locals 0

    invoke-static {}, Lcom/igg/localService/localPush;->pushClear()V

    return-void
.end method

.method private expansionFilesDelivered()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/igg/clashoflords2/col;->m_sXAPKFile:Lcom/igg/clashoflords2/XAPKFile;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/igg/clashoflords2/col;->m_sXAPKFile:Lcom/igg/clashoflords2/XAPKFile;

    iget-boolean v2, v2, Lcom/igg/clashoflords2/XAPKFile;->mIsMain:Z

    sget-object v3, Lcom/igg/clashoflords2/col;->m_sXAPKFile:Lcom/igg/clashoflords2/XAPKFile;

    iget v3, v3, Lcom/igg/clashoflords2/XAPKFile;->mFileVersion:I

    invoke-static {p0, v2, v3}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/igg/clashoflords2/col;->m_sXAPKFile:Lcom/igg/clashoflords2/XAPKFile;

    iget-wide v2, v2, Lcom/igg/clashoflords2/XAPKFile;->mFileSize:J

    invoke-static {p0, v0, v2, v3, v1}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static facebookFriends(Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/igg/clashoflords2/col;->m_sFacebookFriends:Ljava/lang/String;

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    new-instance v1, Lcom/igg/clashoflords2/col$10;

    invoke-direct {v1}, Lcom/igg/clashoflords2/col$10;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/clashoflords2/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static facebookLogin()V
    .locals 2

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    sget-object v1, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v0, v1}, Lcom/igg/clashoflords2/Facebook;->onClickLogin(Landroid/app/Activity;)V

    return-void
.end method

.method public static facebookRequest(Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/igg/clashoflords2/col;->m_sFaceBookRequest:Ljava/lang/String;

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    new-instance v1, Lcom/igg/clashoflords2/col$3;

    invoke-direct {v1}, Lcom/igg/clashoflords2/col$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/clashoflords2/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static facebookSwitch()V
    .locals 2

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    sget-object v1, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v0, v1}, Lcom/igg/clashoflords2/Facebook;->onClickSwitch(Landroid/app/Activity;)V

    return-void
.end method

.method private static free4UInit()V
    .locals 4

    :try_start_0
    sget-object v1, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v1}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/igg/clashoflords2/col$8;

    invoke-direct {v2}, Lcom/igg/clashoflords2/col$8;-><init>()V

    invoke-static {v1, v2}, Lcom/koocell/free4u/sdk/Free4u;->reportFinishTask(Landroid/content/Context;Lcom/koocell/free4u/sdk/Free4u$ReportCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static getDeviceInfo()[B
    .locals 3

    :try_start_0
    sget-object v1, Lcom/igg/clashoflords2/col;->m_strDeviceInfo:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDialog(I)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f040056

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f040057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, p1}, Lcom/igg/clashoflords2/col;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static getDiviceInfo()V
    .locals 6

    sget-object v3, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v3}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/igg/clashoflords2/AppHelp;->getAid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v3}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/igg/clashoflords2/AppHelp;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v3}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/igg/clashoflords2/AppHelp;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "col"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "aid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mac:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " imei:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/igg/clashoflords2/col;->m_jniCallback:Lcom/igg/clashoflords2/jniCallback;

    invoke-virtual {v3, v0, v2, v1}, Lcom/igg/clashoflords2/jniCallback;->getDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getFacebookFriendUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/igg/clashoflords2/col;->m_sFacebookFriends:Ljava/lang/String;

    return-object v0
.end method

.method public static getFacebookRequestUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/igg/clashoflords2/col;->m_sFaceBookRequest:Ljava/lang/String;

    return-object v0
.end method

.method public static getFriendList()V
    .locals 2

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    new-instance v1, Lcom/igg/clashoflords2/col$14;

    invoke-direct {v1}, Lcom/igg/clashoflords2/col$14;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/clashoflords2/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getGoogleAccountsInfo()V
    .locals 1

    sget-object v0, Lcom/igg/clashoflords2/col;->googleAccount:Lcom/igg/clashoflords2/GoogleAccount;

    invoke-virtual {v0}, Lcom/igg/clashoflords2/GoogleAccount;->getAccountNames()V

    return-void
.end method

.method public static getGoogleToken(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/igg/clashoflords2/col;->googleAccount:Lcom/igg/clashoflords2/GoogleAccount;

    invoke-virtual {v0, p0}, Lcom/igg/clashoflords2/GoogleAccount;->fetchToken(Ljava/lang/String;)V

    return-void
.end method

.method public static getPlayerFriends()V
    .locals 2

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    new-instance v1, Lcom/igg/clashoflords2/col$13;

    invoke-direct {v1}, Lcom/igg/clashoflords2/col$13;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/clashoflords2/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static heroUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private initIggTapcash(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "8176"

    const-string v1, "60ebf5a3d61cef98bcda4ce4e726dd02"

    invoke-static {p1, v0, v1}, Lcom/tapcash/sdk/TapcashSdk;->appLaunch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initObbDownloadInfo()V
    .locals 1

    const-class v0, Lcom/igg/localService/ObbDownloaderService;

    invoke-static {p0, v0}, Lcom/google/android/vending/expansion/downloader/DownloaderClientMarshaller;->CreateStub(Lcom/google/android/vending/expansion/downloader/IDownloaderClient;Ljava/lang/Class;)Lcom/google/android/vending/expansion/downloader/IStub;

    move-result-object v0

    iput-object v0, p0, Lcom/igg/clashoflords2/col;->m_DownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    return-void
.end method

.method private initObbInfo()V
    .locals 7

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "=----------------------------initObbInfo"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v5, Lcom/igg/clashoflords2/col;->m_sXAPKFile:Lcom/igg/clashoflords2/XAPKFile;

    if-nez v5, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getIntegerVersion()I

    move-result v1

    const v5, 0x7f04005c

    invoke-virtual {p0, v5}, Lcom/igg/clashoflords2/col;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v2, v5

    long-to-int v5, v2

    invoke-static {v5}, Lcom/igg/clashoflords2/DownloadState;->setObbSize(I)V

    new-instance v5, Lcom/igg/clashoflords2/XAPKFile;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/igg/clashoflords2/XAPKFile;-><init>(ZIJ)V

    sput-object v5, Lcom/igg/clashoflords2/col;->m_sXAPKFile:Lcom/igg/clashoflords2/XAPKFile;

    :cond_0
    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->expansionFilesDelivered()Z

    move-result v5

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/igg/clashoflords2/col;->m_bOpenObb:Z

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->beginDownloadObb()V

    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/igg/clashoflords2/DownloadState;->setDownloadFinished(Z)V

    goto :goto_0
.end method

.method public static inviteFbFriends(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v0, p0}, Lcom/igg/clashoflords2/Facebook;->setInvateMsg(Ljava/lang/String;)V

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v0, p1}, Lcom/igg/clashoflords2/Facebook;->setInvateIds(Ljava/lang/String;)V

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    new-instance v1, Lcom/igg/clashoflords2/col$15;

    invoke-direct {v1}, Lcom/igg/clashoflords2/col$15;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/clashoflords2/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v3, "col"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isEmial seccess--------: strEmail = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "matcher.matches() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method

.method public static joinGuild(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static lordUpgrade(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static metapsOfferShow()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/igg/clashoflords2/CommonUtility;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/igg/clashoflords2/col$7;

    invoke-direct {v2}, Lcom/igg/clashoflords2/col$7;-><init>()V

    invoke-virtual {v2}, Lcom/igg/clashoflords2/col$7;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/igg/clashoflords2/payV2;->getIggID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "col"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "offer wall iggid is get error iggid is"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    const-string v3, "coliggid"

    invoke-static {v2, v3}, Lcom/igg/clashoflords2/PreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    sget-object v2, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lnet/metaps/sdk/Factory;->launchOfferWall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private offerWallInit()V
    .locals 3

    :try_start_0
    const-string v1, "UVWKXLGACS0001"

    const/4 v2, 0x0

    invoke-static {p0, p0, v1, v2}, Lnet/metaps/sdk/Factory;->initialize(Landroid/app/Activity;Lnet/metaps/sdk/Receiver;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private onDownLoadFinished()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/igg/clashoflords2/DownloadState;->setDownloadFinished(Z)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------------- onDownLoadFinished"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private onNotSupport()V
    .locals 1

    const v0, 0x7f040059

    invoke-direct {p0, v0}, Lcom/igg/clashoflords2/col;->getDialog(I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private onPurchaseSuccess()V
    .locals 1

    new-instance v0, Lcom/igg/clashoflords2/col$11;

    invoke-direct {v0, p0}, Lcom/igg/clashoflords2/col$11;-><init>(Lcom/igg/clashoflords2/col;)V

    invoke-virtual {p0, v0}, Lcom/igg/clashoflords2/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onTryAgainLater()V
    .locals 2

    const v0, 0x7f04005a

    invoke-virtual {p0, v0}, Lcom/igg/clashoflords2/col;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private onUnknowError()V
    .locals 1

    const v0, 0x7f04005b

    invoke-direct {p0, v0}, Lcom/igg/clashoflords2/col;->getDialog(I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static openSponsorpayOfferWall(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    sget-object v1, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    sget-object v2, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-virtual {v2}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Lcom/igg/clashoflords2/col;->m_sCurrencyName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sponsorpay/publisher/SponsorPayPublisher;->getIntentForOfferWallActivity(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v2

    sget v3, Lcom/igg/clashoflords2/col;->m_nRequestCode:I

    invoke-virtual {v1, v2, v3}, Lcom/igg/clashoflords2/col;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "col"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static postAdxData(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igg/clashoflords2/col$6;

    invoke-direct {v1, p0}, Lcom/igg/clashoflords2/col$6;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static purchaseComplete(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static purchaseFailure(I)V
    .locals 0

    return-void
.end method

.method private pushNotify()V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/igg/clashoflords2/col;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.igg.clashoflords2.DISPLAY_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/igg/clashoflords2/col;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igg/clashoflords2/col;->m_regId:Ljava/lang/String;

    const-string v1, "my regid is"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " my regid is 1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/igg/clashoflords2/col;->m_regId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/igg/clashoflords2/col;->m_regId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "489219977954"

    aput-object v3, v1, v2

    invoke-static {p0, v1}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->isRegisteredOnServer(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestPurchase(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static sendingIOBindEmial(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/igg/clashoflords2/col$16;

    invoke-direct {v1, p0}, Lcom/igg/clashoflords2/col$16;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setClipboard(Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/igg/clashoflords2/col;->s_event:Ljava/lang/String;

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    new-instance v1, Lcom/igg/clashoflords2/col$9;

    invoke-direct {v1}, Lcom/igg/clashoflords2/col$9;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/clashoflords2/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static shareToFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v0, p0}, Lcom/igg/clashoflords2/Facebook;->setLink(Ljava/lang/String;)V

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v0, p1}, Lcom/igg/clashoflords2/Facebook;->setCaption(Ljava/lang/String;)V

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v0, p2}, Lcom/igg/clashoflords2/Facebook;->setDesc(Ljava/lang/String;)V

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v0, p3}, Lcom/igg/clashoflords2/Facebook;->setPic(Ljava/lang/String;)V

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    new-instance v1, Lcom/igg/clashoflords2/col$12;

    invoke-direct {v1}, Lcom/igg/clashoflords2/col$12;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igg/clashoflords2/col;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static shareToGgp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v2, Lcom/google/android/gms/plus/PlusShare$Builder;

    sget-object v3, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-direct {v2, v3}, Lcom/google/android/gms/plus/PlusShare$Builder;-><init>(Landroid/app/Activity;)V

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/plus/PlusShare$Builder;->setType(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/plus/PlusShare$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object v2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/plus/PlusShare$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/plus/PlusShare$Builder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    const/16 v3, 0x725

    invoke-virtual {v2, v1, v3}, Lcom/igg/clashoflords2/col;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static shareToTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_twitterShare:Lcom/igg/clashoflords2/TwitterShare;

    invoke-virtual {v0, p0}, Lcom/igg/clashoflords2/TwitterShare;->setLink(Ljava/lang/String;)V

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_twitterShare:Lcom/igg/clashoflords2/TwitterShare;

    invoke-virtual {v0, p1}, Lcom/igg/clashoflords2/TwitterShare;->setCaption(Ljava/lang/String;)V

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_twitterShare:Lcom/igg/clashoflords2/TwitterShare;

    invoke-virtual {v0, p2}, Lcom/igg/clashoflords2/TwitterShare;->setDesc(Ljava/lang/String;)V

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_twitterShare:Lcom/igg/clashoflords2/TwitterShare;

    invoke-virtual {v0, p3}, Lcom/igg/clashoflords2/TwitterShare;->setPic(Ljava/lang/String;)V

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_twitterShare:Lcom/igg/clashoflords2/TwitterShare;

    invoke-virtual {v0, p4}, Lcom/igg/clashoflords2/TwitterShare;->setFetchTip(Ljava/lang/String;)V

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    iget-object v0, v0, Lcom/igg/clashoflords2/col;->m_twitterShare:Lcom/igg/clashoflords2/TwitterShare;

    invoke-virtual {v0}, Lcom/igg/clashoflords2/TwitterShare;->getOauth()V

    return-void
.end method

.method public static showAppLovinAD()V
    .locals 0

    return-void
.end method

.method public static showIggTapcash()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/igg/clashoflords2/payV2;->getIggID()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/tapcash/sdk/TapcashSdk;->showOffers(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private starDump()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/igg/clashoflords2/CrashHandler;->getInstance()Lcom/igg/clashoflords2/CrashHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/igg/clashoflords2/CrashHandler;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startSponsorpay(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v1, Lcom/igg/clashoflords2/col;->m_sAppId:Ljava/lang/String;

    sget-object v2, Lcom/igg/clashoflords2/col;->m_sSecurityToken:Ljava/lang/String;

    sget-object v3, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-static {v1, p0, v2, v3}, Lcom/sponsorpay/SponsorPay;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "col"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static tapjoyOfficeInit(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "enable_logging"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "user_id"

    invoke-virtual {v1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    const-string v3, "18eafbda-4384-41c2-8149-068eba564bac"

    const-string v4, "AihaXYpBxRNLdlxYTtS1"

    invoke-static {v2, v3, v4, v1}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    const-string v2, "tapjoyOfficeInit"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tapjoyOffice success iggid is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static tapjoyOfficeShow()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyConnect;->showOffers()V

    const-string v1, "tapjoyOfficeShow"

    const-string v2, "tapjoyOfficeShow do"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method adxLaunchDo()V
    .locals 2

    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    new-instance v1, Lcom/igg/clashoflords2/col$5;

    invoke-direct {v1, p0}, Lcom/igg/clashoflords2/col$5;-><init>(Lcom/igg/clashoflords2/col;)V

    invoke-virtual {v0, v1}, Lcom/igg/clashoflords2/col;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public finalizeOnError(Lnet/metaps/sdk/Offer;)Z
    .locals 8

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getCampaignId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v3, ""

    :goto_2
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v4, ""

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "col"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    return v6

    :cond_0
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getCampaignId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public finish()V
    .locals 2

    const-string v0, "col"

    const-string v1, "finish() \u6e38\u620ffinish\u9000\u51fa"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/bill/BillingManager;->getInstance()Lcom/bill/BillingManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/bill/BillingManager;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x725

    if-ne v1, p1, :cond_2

    const/4 v1, -0x1

    if-ne v1, p2, :cond_1

    sget-object v1, Lcom/igg/clashoflords2/col;->m_jniCallback:Lcom/igg/clashoflords2/jniCallback;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/igg/clashoflords2/jniCallback;->shareCallback(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/igg/clashoflords2/col;->m_jniCallback:Lcom/igg/clashoflords2/jniCallback;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/igg/clashoflords2/jniCallback;->shareCallback(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onActivityResult"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/igg/clashoflords2/Facebook;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    move-object/from16 v0, p0

    invoke-static {v0}, Lru/lenovo/banner;->lenovo(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->starDump()V

    :try_start_0
    invoke-virtual {p0}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/igg/clashoflords2/identifier;->init(Lcom/igg/clashoflords2/col;)V

    invoke-static {p0}, Lcom/igg/clashoflords2/url;->init(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/igg/clashoflords2/gem_webview;->init(Lcom/igg/clashoflords2/col;)V

    invoke-static {p0}, Lcom/igg/clashoflords2/DeviceUuidFactory;->init(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/igg/clashoflords2/CommonUtility;->init(Lcom/igg/clashoflords2/col;)V

    sget-object v7, Lcom/igg/clashoflords2/col;->mUncaughtExceptionHadler:Lcom/igg/clashoflords2/UncaughtExceptionHandler;

    invoke-virtual {v7, p0}, Lcom/igg/clashoflords2/UncaughtExceptionHandler;->setContext(Landroid/content/Context;)V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    sput-object v7, Lcom/igg/clashoflords2/col;->m_handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/igg/clashoflords2/col;->m_payV2:Lcom/igg/clashoflords2/payV2;

    invoke-virtual {v7, p0}, Lcom/igg/clashoflords2/payV2;->init(Lcom/igg/clashoflords2/col;)V

    iget-object v7, p0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    sget-object v8, Lcom/igg/clashoflords2/col;->m_jniCallback:Lcom/igg/clashoflords2/jniCallback;

    invoke-virtual {v7, p0, p1, v8}, Lcom/igg/clashoflords2/Facebook;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;Lcom/igg/clashoflords2/jniCallback;)V

    invoke-static {}, Lcom/igg/clashoflords2/col;->autoSendLog()V

    sput-object p0, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->adxOnCreate()V

    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/igg/clashoflords2/col;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/igg/clashoflords2/col;->m_powerManager:Landroid/os/PowerManager;

    iget-object v7, p0, Lcom/igg/clashoflords2/col;->m_powerManager:Landroid/os/PowerManager;

    const/16 v8, 0x1a

    const-string v9, "My Lock"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/igg/clashoflords2/col;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v7, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-static {v7}, Lcom/igg/clashoflords2/ColNotify;->init(Lcom/igg/clashoflords2/col;)V

    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->pushNotify()V

    sget-object v7, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-static {v7}, Lcom/igg/clashoflords2/ColService;->init(Lcom/igg/clashoflords2/col;)V

    new-instance v1, Lcom/igg/clashoflords2/AppHelp;

    invoke-direct {v1}, Lcom/igg/clashoflords2/AppHelp;-><init>()V

    invoke-virtual {v1, p0}, Lcom/igg/clashoflords2/AppHelp;->init(Lcom/igg/clashoflords2/col;)V

    invoke-virtual {v1}, Lcom/igg/clashoflords2/AppHelp;->createShortCut()V

    invoke-virtual {v1}, Lcom/igg/clashoflords2/AppHelp;->getCollectDeviceInfo()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/igg/clashoflords2/col;->m_strDeviceInfo:Ljava/lang/String;

    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->offerWallInit()V

    invoke-static {}, Lcom/igg/clashoflords2/col;->free4UInit()V

    sget-object v7, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-direct {p0, v7}, Lcom/igg/clashoflords2/col;->initIggTapcash(Landroid/content/Context;)V

    new-instance v7, Lcom/igg/clashoflords2/GoogleAccount;

    invoke-direct {v7}, Lcom/igg/clashoflords2/GoogleAccount;-><init>()V

    sput-object v7, Lcom/igg/clashoflords2/col;->googleAccount:Lcom/igg/clashoflords2/GoogleAccount;

    sget-object v7, Lcom/igg/clashoflords2/col;->googleAccount:Lcom/igg/clashoflords2/GoogleAccount;

    sget-object v8, Lcom/igg/clashoflords2/col;->m_jniCallback:Lcom/igg/clashoflords2/jniCallback;

    invoke-virtual {v7, p0, v8}, Lcom/igg/clashoflords2/GoogleAccount;->init(Lcom/igg/clashoflords2/col;Lcom/igg/clashoflords2/jniCallback;)V

    sget-object v7, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    invoke-static {v7}, Lcom/igg/localService/localPush;->init(Lcom/igg/clashoflords2/col;)V

    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->initObbInfo()V

    iget-object v7, p0, Lcom/igg/clashoflords2/col;->m_twitterShare:Lcom/igg/clashoflords2/TwitterShare;

    sget-object v8, Lcom/igg/clashoflords2/col;->s_Instance:Lcom/igg/clashoflords2/col;

    sget-object v9, Lcom/igg/clashoflords2/col;->m_jniCallback:Lcom/igg/clashoflords2/jniCallback;

    invoke-virtual {v7, v8, v9}, Lcom/igg/clashoflords2/TwitterShare;->init(Lcom/igg/clashoflords2/col;Lcom/igg/clashoflords2/jniCallback;)V

    iget-object v7, p0, Lcom/igg/clashoflords2/col;->m_twitterShare:Lcom/igg/clashoflords2/TwitterShare;

    invoke-virtual {v7, p1}, Lcom/igg/clashoflords2/TwitterShare;->onCreate(Landroid/os/Bundle;)V

    const-string v7, "WEYqZmRBi6ZmFww2esj28Y"

    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->setAppsFlyerKey(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/AppsFlyerLib;->sendTracking(Landroid/content/Context;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v2, ""

    :try_start_1
    const-string v7, "g_id"

    const-string v8, "1034039902"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lcom/appsflyer/AppsFlyerLib;->setAppUserId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igg/clashoflords2/col;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.igg.clashoflords2://rewards"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/igg/clashoflords2/col;->m_jniCallback:Lcom/igg/clashoflords2/jniCallback;

    invoke-virtual {v7}, Lcom/igg/clashoflords2/jniCallback;->openDeepLinkActivity()V

    :cond_0
    new-instance v7, Lcom/igg/clashoflords2/col$2;

    invoke-direct {v7, p0}, Lcom/igg/clashoflords2/col$2;-><init>(Lcom/igg/clashoflords2/col;)V

    invoke-static {p0, v7}, Lcom/facebook/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/AppLinkData$CompletionHandler;)V

    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/igg/clashoflords2/col;->m_payV2:Lcom/igg/clashoflords2/payV2;

    invoke-virtual {v0}, Lcom/igg/clashoflords2/payV2;->onDestoryV3()V

    const-string v0, "col"

    const-string v1, "onDestroy() \u6e38\u620f\u9000\u51fa"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->adxOnDestory()V

    iget-object v0, p0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v0}, Lcom/igg/clashoflords2/Facebook;->onDestroy()V

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    return-void
.end method

.method public onDownloadProgress(Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;)V
    .locals 9

    const/16 v8, 0x8

    iget v0, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mCurrentSpeed:F

    iget-wide v6, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    long-to-int v3, v6

    iget-wide v6, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallTotal:J

    shr-long/2addr v6, v8

    long-to-int v2, v6

    iget-wide v6, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mOverallProgress:J

    shr-long/2addr v6, v8

    long-to-int v1, v6

    invoke-static {v0}, Lcom/igg/clashoflords2/DownloadState;->setSpeed(F)V

    invoke-static {v3}, Lcom/igg/clashoflords2/DownloadState;->setRemainTime(I)V

    invoke-static {v2}, Lcom/igg/clashoflords2/DownloadState;->setProgressBarMax(I)V

    invoke-static {v1}, Lcom/igg/clashoflords2/DownloadState;->setProgressBarCurrent(I)V

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/igg/clashoflords2/DownloadState;->setHasDownloadInfo(Z)V

    iget v6, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mCurrentSpeed:F

    invoke-static {v6}, Lcom/google/android/vending/expansion/downloader/Helpers;->getSpeedString(F)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p1, Lcom/google/android/vending/expansion/downloader/DownloadProgressInfo;->mTimeRemaining:J

    invoke-static {v6, v7}, Lcom/google/android/vending/expansion/downloader/Helpers;->getTimeRemaining(J)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "------------------- onDownloadProgressspeed="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "remaintime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadStateChanged(I)V
    .locals 3

    invoke-static {p1}, Lcom/igg/clashoflords2/DownloadState;->setState(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/igg/clashoflords2/DownloadState;->setStateChange(Z)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------------------- newState ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->onDownLoadFinished()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/igg/clashoflords2/col;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :pswitch_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    iget-object v0, p0, Lcom/igg/clashoflords2/col;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v0}, Lcom/igg/clashoflords2/Facebook;->onPause()V

    const-string v0, "col"

    const-string v1, "try to starColService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/igg/clashoflords2/col;->starColService()V

    invoke-static {}, Lcom/igg/clashoflords2/GCMIntentService;->resetLineTime()V

    return-void
.end method

.method public onPurchaseBack(Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/igg/clashoflords2/col;->$SWITCH_TABLE$com$bill$BillingManager$PurchaseCallBack$PurchaseResult()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/bill/BillingManager$PurchaseCallBack$PurchaseResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->onNotSupport()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->onTryAgainLater()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->onUnknowError()V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/igg/clashoflords2/col;->m_jniCallback:Lcom/igg/clashoflords2/jniCallback;

    invoke-virtual {v0, p2}, Lcom/igg/clashoflords2/jniCallback;->onPurchaseSuccess(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    iget-object v2, p0, Lcom/igg/clashoflords2/col;->m_DownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/igg/clashoflords2/col;->m_DownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v2, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->connect(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    iget-object v2, p0, Lcom/igg/clashoflords2/col;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/igg/clashoflords2/col;->runInstallReport(Landroid/view/View;)V

    iget-object v2, p0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v2}, Lcom/igg/clashoflords2/Facebook;->onResume()V

    :try_start_0
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v1

    const-string v2, "fb_mobile_activate_app"

    invoke-virtual {v1, v2}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    const-string v2, "facebook"

    const-string v3, "facebook publishInstallAsync finish"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "col"

    const-string v3, "try to stopColService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->downColService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/igg/clashoflords2/payV2;->getIggID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_1

    const-string v2, "col"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AF payV2.getIggID() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/igg/clashoflords2/payV2;->getIggID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/igg/clashoflords2/payV2;->getIggID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/igg/clashoflords2/col;->sendAFSignUp(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v0, p1}, Lcom/igg/clashoflords2/Facebook;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onServiceConnected(Landroid/os/Messenger;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/vending/expansion/downloader/DownloaderServiceMarshaller;->CreateProxy(Landroid/os/Messenger;)Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/igg/clashoflords2/col;->m_RemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iget-object v0, p0, Lcom/igg/clashoflords2/col;->m_RemoteService:Lcom/google/android/vending/expansion/downloader/IDownloaderService;

    iget-object v1, p0, Lcom/igg/clashoflords2/col;->m_DownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v1}, Lcom/google/android/vending/expansion/downloader/IStub;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/vending/expansion/downloader/IDownloaderService;->onClientUpdated(Landroid/os/Messenger;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    invoke-static {}, Lcom/igg/clashoflords2/identifier;->setPhoneIDNew()V

    invoke-direct {p0}, Lcom/igg/clashoflords2/col;->adxStarDo()V

    invoke-static {p0}, Ljp/naver/line/freecoins/sdk/LineTracker;->startTracker(Landroid/content/Context;)V

    invoke-static {}, Ljp/naver/line/freecoins/sdk/LineTracker;->getInstance()Ljp/naver/line/freecoins/sdk/LineTracker;

    move-result-object v1

    invoke-virtual {v1}, Ljp/naver/line/freecoins/sdk/LineTracker;->sendInstallEvent()V

    iget-object v1, p0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v1}, Lcom/igg/clashoflords2/Facebook;->onStart()V

    const-string v1, "onStart"

    const-string v2, "onStart do"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/igg/clashoflords2/col;->m_DownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igg/clashoflords2/col;->m_DownloaderClientStub:Lcom/google/android/vending/expansion/downloader/IStub;

    invoke-interface {v0, p0}, Lcom/google/android/vending/expansion/downloader/IStub;->disconnect(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    iget-object v0, p0, Lcom/igg/clashoflords2/col;->m_facebook:Lcom/igg/clashoflords2/Facebook;

    invoke-virtual {v0}, Lcom/igg/clashoflords2/Facebook;->onStop()V

    return-void
.end method

.method public retrieve(ILnet/metaps/sdk/Offer;)Z
    .locals 4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "col"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offer wall add currencyAmount is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public runInstallReport(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public sendAFSignUp(Ljava/lang/String;)V
    .locals 22

    :try_start_0
    invoke-static {}, Lcom/igg/clashoflords2/DeviceUuidFactory;->getDeviceUuid()Ljava/util/UUID;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v19, "userid"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v19, "af_open"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "SIGN_UP"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    const-string v19, "af_open"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v19, "AF"

    const-string v20, "AF signup do"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    invoke-virtual/range {v17 .. v17}, Landroid/text/format/Time;->setToNow()V

    const-string v19, "af_login_day"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, v17

    iget v11, v0, Landroid/text/format/Time;->monthDay:I

    const-string v19, "AF"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "AF IGG_LAUNCH do nLoginDay = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", nDay = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v12, v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "IGG_LAUNCH"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    const-string v19, "af_login_day"

    move-object/from16 v0, v19

    invoke-interface {v5, v0, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v19, "AF"

    const-string v20, "AF IGG_LAUNCH do"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v19, "day2"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v19, "af_login_year"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v19, "af_login_month"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v19, "af_login_monthDay"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, v17

    iget v10, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    add-int/lit8 v8, v19, 0x1

    move-object/from16 v0, v17

    iget v9, v0, Landroid/text/format/Time;->monthDay:I

    if-eqz v15, :cond_4

    if-eqz v13, :cond_4

    if-nez v14, :cond_5

    :cond_4
    const-string v19, "af_login_year"

    move-object/from16 v0, v19

    invoke-interface {v5, v0, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v19, "af_login_month"

    move-object/from16 v0, v19

    invoke-interface {v5, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v19, "af_login_monthDay"

    move-object/from16 v0, v19

    invoke-interface {v5, v0, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v19, "AF"

    const-string v20, "AF DAY2_RETENTION do -1"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    if-ne v15, v10, :cond_6

    if-ne v13, v8, :cond_6

    if-eq v14, v9, :cond_2

    :cond_6
    :try_start_1
    const-string v19, "day2"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v3, 0x0

    if-ne v15, v10, :cond_7

    if-ne v13, v8, :cond_7

    add-int/lit8 v19, v14, 0x1

    move/from16 v0, v19

    if-ne v0, v9, :cond_7

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/igg/clashoflords2/col;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "DAY2_RETENTION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    const-string v19, "AF"

    const-string v20, "AF DAY2_RETENTION do"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    if-ne v15, v10, :cond_8

    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v19

    if-ne v0, v8, :cond_8

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_8

    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v19, v15, 0x1

    move/from16 v0, v19

    if-ne v0, v10, :cond_9

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v0, v8, :cond_9

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public starColService()V
    .locals 0

    invoke-static {}, Lcom/igg/localService/localPush;->pushBeg()V

    return-void
.end method
