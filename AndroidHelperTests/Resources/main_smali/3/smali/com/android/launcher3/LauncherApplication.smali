.class public Lcom/android/launcher3/LauncherApplication;
.super Landroid/app/Application;


# instance fields
.field private eN:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/LauncherApplication;->eN:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "Start proc com.teslacoilsw.launcher for fake broken logcats: pid=%d uid=%d gids=%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Lo/hpt;->eN(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/LauncherApplication;->eN:I

    if-nez v0, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/launcher3/LauncherApplication;->eN:I

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p0, Lcom/android/launcher3/LauncherApplication;->eN:I

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lo/aua;->eN(Landroid/content/Context;)V

    invoke-static {}, Lo/aua;->eN()Lo/aua;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/android/launcher3/LauncherApplication;->eN:I

    return-void
.end method

.method public onTerminate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    invoke-static {}, Lo/aua;->eN()Lo/aua;

    move-result-object v0

    invoke-virtual {v0}, Lo/aua;->CN()V

    return-void
.end method
