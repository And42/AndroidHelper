.class public Lcom/playrix/homescapes/MainApplication;
.super Lcom/playrix/lib/PlayrixApplication;
.source "MainApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/playrix/lib/PlayrixApplication;-><init>()V

    return-void
.end method

.method public static safedk_MainApplication_onCreate_4b6e910658323fc586ab9b6daa0f2a01(Lcom/playrix/homescapes/MainApplication;)V
    .registers 2
    .param p0, "p0"    # Lcom/playrix/homescapes/MainApplication;

    .line 21
    invoke-super {p0}, Lcom/playrix/lib/PlayrixApplication;->onCreate()V

    .line 23
    new-instance v0, Lcom/playrix/homescapes/MainApplication$1;

    invoke-direct {v0, p0}, Lcom/playrix/homescapes/MainApplication$1;-><init>(Lcom/playrix/homescapes/MainApplication;)V

    invoke-static {v0}, Lcom/playrix/lib/InstallReferrerReceiver;->subscribe(Lcom/playrix/lib/InstallReferrerReceiver$Listener;)V

    .line 33
    new-instance v0, Lcom/playrix/homescapes/MainApplication$2;

    invoke-direct {v0, p0}, Lcom/playrix/homescapes/MainApplication$2;-><init>(Lcom/playrix/homescapes/MainApplication;)V

    invoke-static {v0}, Lcom/playrix/lib/InstallReferrerReceiver;->subscribe(Lcom/playrix/lib/InstallReferrerReceiver$Listener;)V

    const/4 v0, 0x1

    .line 43
    invoke-static {v0}, Lcom/playrix/lib/NotificationReceiver;->enableOldSoundBehavior(Z)V

    .line 44
    invoke-static {}, Lcom/playrix/lib/PushTokenRegistration;->initialize()V

    .line 46
    invoke-static {p0}, Lcom/playrix/homescapes/AppsflyerWrapper;->onApplicationCreate(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    invoke-super {p0, p1}, Lcom/playrix/lib/PlayrixApplication;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .registers 4

    const-string v0, "SafeDK|SafeDK: App> Lcom/playrix/homescapes/MainApplication;->onCreate()V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    invoke-static {p0}, Lcom/safedk/android/internal/DexBridge;->appClassOnCreateBefore(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/playrix/homescapes/MainApplication;->safedk_MainApplication_onCreate_4b6e910658323fc586ab9b6daa0f2a01(Lcom/playrix/homescapes/MainApplication;)V

    invoke-static {}, Lcom/safedk/android/analytics/StartTimeStats;->getInstance()Lcom/safedk/android/analytics/StartTimeStats;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/safedk/android/analytics/StartTimeStats$LaunchStatus;->Application:Lcom/safedk/android/analytics/StartTimeStats$LaunchStatus;

    invoke-virtual {v0, v1, v2}, Lcom/safedk/android/analytics/StartTimeStats;->setLaunching(ZLcom/safedk/android/analytics/StartTimeStats$LaunchStatus;)V

    return-void
.end method
