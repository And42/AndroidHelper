.class public Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication;
.super Landroid/app/Application;
.source "FrameworkApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2328
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .line 2347
    sget-object v0, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2348
    new-instance v0, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication$a;

    const-string v1, "getContext() FrameworkApplication.context == null"

    invoke-direct {v0, v1}, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2351
    :cond_0
    sget-object v0, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getContext(Landroid/app/Activity;)Landroid/content/Context;
    .locals 2

    .line 2356
    sget-object v0, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "context"

    const-string v1, "FrameworkApplication.context is null, retrieve it from Activity"

    .line 2358
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication;->a:Landroid/content/Context;

    .line 2361
    sget-object p0, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication;->a:Landroid/content/Context;

    if-nez p0, :cond_0

    .line 2362
    new-instance p0, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication$a;

    const-string v0, "getContext(Activity) FrameworkApplication.context == null"

    invoke-direct {p0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication$a;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2365
    :cond_0
    sget-object p0, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 2334
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2335
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 2340
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2341
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication;->a:Landroid/content/Context;

    return-void
.end method
