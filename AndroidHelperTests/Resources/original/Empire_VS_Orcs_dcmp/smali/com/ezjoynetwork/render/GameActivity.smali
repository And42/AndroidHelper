.class public Lcom/ezjoynetwork/render/GameActivity;
.super Landroid/app/Activity;


# static fields
.field private static final HANDLER_SHOW_DIALOG:I = 0x1

.field private static accelerometer:Lcom/ezjoynetwork/render/GameAccelerometer;

.field private static accelerometerEnabled:Z

.field private static backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

.field private static handler:Landroid/os/Handler;

.field public static instance:Lcom/ezjoynetwork/render/GameActivity;

.field private static packageName:Ljava/lang/String;

.field private static soundPlayer:Lcom/ezjoynetwork/render/GameSound;


# instance fields
.field private mGLView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ezjoynetwork/render/GameActivity;->accelerometerEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ezjoynetwork/render/GameActivity;->mGLView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    return-void
.end method

.method static synthetic access$0(Lcom/ezjoynetwork/render/GameActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ezjoynetwork/render/GameActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x2000000a

    const-string v2, "EzjoyRender"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/ezjoynetwork/render/GameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_0
    iget-object v0, p0, Lcom/ezjoynetwork/render/GameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "EzjoyRender"

    const-string v1, "You have to add\n\t<uses-permission android:name=\"android.permission.WAKE_LOCK\"/>\nto your AndroidManifest.xml !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static disableAccelerometer()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ezjoynetwork/render/GameActivity;->accelerometerEnabled:Z

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->accelerometer:Lcom/ezjoynetwork/render/GameAccelerometer;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameAccelerometer;->disable()V

    return-void
.end method

.method public static enableAccelerometer()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ezjoynetwork/render/GameActivity;->accelerometerEnabled:Z

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->accelerometer:Lcom/ezjoynetwork/render/GameAccelerometer;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameAccelerometer;->enable()V

    return-void
.end method

.method public static end()V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameMusic;->end()V

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameSound;->end()V

    return-void
.end method

.method public static getBackgroundMusicVolume()F
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameMusic;->getBackgroundVolume()F

    move-result v0

    return v0
.end method

.method public static getCocos2dxPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEffectsVolume()F
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameSound;->getEffectsVolume()F

    move-result v0

    return v0
.end method

.method public static isBackgroundMusicPlaying()Z
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameMusic;->isBackgroundMusicPlaying()Z

    move-result v0

    return v0
.end method

.method private static native nativeSetPaths(Ljava/lang/String;)V
.end method

.method public static pauseAllEffects()V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameSound;->pauseAllEffects()V

    return-void
.end method

.method public static pauseBackgroundMusic()V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameMusic;->pauseBackgroundMusic()V

    return-void
.end method

.method public static pauseEffect(I)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0, p0}, Lcom/ezjoynetwork/render/GameSound;->pauseEffect(I)V

    return-void
.end method

.method public static playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

    invoke-virtual {v0, p0, p1}, Lcom/ezjoynetwork/render/GameMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    return-void
.end method

.method public static playEffect(Ljava/lang/String;Z)I
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0, p0, p1}, Lcom/ezjoynetwork/render/GameSound;->playEffect(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

    invoke-virtual {v0, p0}, Lcom/ezjoynetwork/render/GameMusic;->preloadBackgroundMusic(Ljava/lang/String;)V

    return-void
.end method

.method public static preloadBackgroundMusic(Ljava/lang/String;[B)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

    invoke-virtual {v0, p0, p1}, Lcom/ezjoynetwork/render/GameMusic;->preloadBackgroundMusic(Ljava/lang/String;[B)V

    return-void
.end method

.method public static preloadEffect(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0, p0}, Lcom/ezjoynetwork/render/GameSound;->preloadEffect(Ljava/lang/String;)I

    return-void
.end method

.method public static preloadEffect(Ljava/lang/String;[B)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0, p0, p1}, Lcom/ezjoynetwork/render/GameSound;->preloadEffect(Ljava/lang/String;[B)I

    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public static resumeAllEffects()V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameSound;->resumeAllEffects()V

    return-void
.end method

.method public static resumeBackgroundMusic()V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameMusic;->resumeBackgroundMusic()V

    return-void
.end method

.method public static resumeEffect(I)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0, p0}, Lcom/ezjoynetwork/render/GameSound;->resumeEffect(I)V

    return-void
.end method

.method public static rewindBackgroundMusic()V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameMusic;->rewindBackgroundMusic()V

    return-void
.end method

.method public static setBackgroundMusicVolume(F)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

    invoke-virtual {v0, p0}, Lcom/ezjoynetwork/render/GameMusic;->setBackgroundVolume(F)V

    return-void
.end method

.method public static setEffectsVolume(F)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0, p0}, Lcom/ezjoynetwork/render/GameSound;->setEffectsVolume(F)V

    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/ezjoynetwork/render/d;

    invoke-direct {v2, p0}, Lcom/ezjoynetwork/render/d;-><init>(Lcom/ezjoynetwork/render/GameActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showMessageBox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/ezjoynetwork/render/a;

    invoke-direct {v1, p0, p1}, Lcom/ezjoynetwork/render/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/ezjoynetwork/render/GameActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static stopAllEffects()V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameSound;->stopAllEffects()V

    return-void
.end method

.method public static stopBackgroundMusic()V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameMusic;->stopBackgroundMusic()V

    return-void
.end method

.method public static stopEffect(I)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0, p0}, Lcom/ezjoynetwork/render/GameSound;->stopEffect(I)V

    return-void
.end method

.method public static terminateProcess()V
    .locals 2

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lcom/ezjoynetwork/render/c;

    invoke-direct {v1}, Lcom/ezjoynetwork/render/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static unloadEffect(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-virtual {v0, p0}, Lcom/ezjoynetwork/render/GameSound;->unloadEffect(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/ezjoynetwork/render/GameActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Lcom/ezjoynetwork/render/GameAccelerometer;

    invoke-direct {v0, p0}, Lcom/ezjoynetwork/render/GameAccelerometer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ezjoynetwork/render/GameActivity;->accelerometer:Lcom/ezjoynetwork/render/GameAccelerometer;

    new-instance v0, Lcom/ezjoynetwork/render/GameMusic;

    invoke-direct {v0, p0}, Lcom/ezjoynetwork/render/GameMusic;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ezjoynetwork/render/GameActivity;->backgroundMusicPlayer:Lcom/ezjoynetwork/render/GameMusic;

    new-instance v0, Lcom/ezjoynetwork/render/GameSound;

    invoke-direct {v0, p0}, Lcom/ezjoynetwork/render/GameSound;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ezjoynetwork/render/GameActivity;->soundPlayer:Lcom/ezjoynetwork/render/GameSound;

    invoke-static {p0}, Lcom/ezjoynetwork/render/GameBitmap;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/ezjoynetwork/render/b;

    invoke-direct {v0, p0}, Lcom/ezjoynetwork/render/b;-><init>(Lcom/ezjoynetwork/render/GameActivity;)V

    sput-object v0, Lcom/ezjoynetwork/render/GameActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    sget-object v0, Ld/a;->a:Ld/a;

    invoke-virtual {v0}, Ld/a;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameActivity;->mGLView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameActivity;->mGLView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-virtual {v0, p1, p2}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-boolean v0, Lcom/ezjoynetwork/render/GameActivity;->accelerometerEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->accelerometer:Lcom/ezjoynetwork/render/GameAccelerometer;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameAccelerometer;->disable()V

    :cond_0
    invoke-direct {p0}, Lcom/ezjoynetwork/render/GameActivity;->releaseWakeLock()V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameActivity;->mGLView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->onPause()V

    invoke-static {p0}, Lcom/mobclick/android/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/ezjoynetwork/render/GameActivity;->accelerometerEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->accelerometer:Lcom/ezjoynetwork/render/GameAccelerometer;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameAccelerometer;->enable()V

    :cond_0
    invoke-direct {p0}, Lcom/ezjoynetwork/render/GameActivity;->acquireWakeLock()V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameActivity;->mGLView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->onResume()V

    invoke-static {p0}, Lcom/mobclick/android/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameActivity;->mGLView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameActivity;->mGLView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected setGLView(Lcom/ezjoynetwork/render/GameGLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/ezjoynetwork/render/GameActivity;->mGLView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    return-void
.end method

.method protected setPackageName(Ljava/lang/String;)V
    .locals 2

    sput-object p1, Lcom/ezjoynetwork/render/GameActivity;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ezjoynetwork/render/GameActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v1, "apk path"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/ezjoynetwork/render/GameActivity;->nativeSetPaths(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to locate assets, aborting..."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
