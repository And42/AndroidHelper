.class public final Lb/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/app/Activity;

.field private d:Lcom/google/ads/AdView;

.field private e:Z

.field private f:Z

.field private g:Lcom/google/ads/InterstitialAd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;IIIII)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lb/a;->c:Landroid/app/Activity;

    iput-boolean v0, p0, Lb/a;->e:Z

    iput-boolean v0, p0, Lb/a;->f:Z

    iput-object v1, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    iput-object p1, p0, Lb/a;->c:Landroid/app/Activity;

    iget-object v0, p0, Lb/a;->c:Landroid/app/Activity;

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lb/a;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lb/a;->c:Landroid/app/Activity;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lb/a;->b:Landroid/view/ViewGroup;

    sget-object v0, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    new-instance v1, Lcom/google/ads/AdView;

    iget-object v2, p0, Lb/a;->c:Landroid/app/Activity;

    invoke-direct {v1, v2, v0, p2}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v1, p0, Lb/a;->d:Lcom/google/ads/AdView;

    iget-object v0, p0, Lb/a;->d:Lcom/google/ads/AdView;

    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    iget-object v0, p0, Lb/a;->d:Lcom/google/ads/AdView;

    invoke-virtual {v0, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    new-instance v0, Lcom/google/ads/InterstitialAd;

    iget-object v1, p0, Lb/a;->c:Landroid/app/Activity;

    const-string v2, "a1512c8169c2579"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    iget-object v0, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    const-string v1, "F2693D2B58F0376561C5FDCF4EEC2452"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    const-string v1, "67FF931D87AD5D178A9DC35678897D5B"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    iget-object v1, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/ads/InterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V

    return-void
.end method

.method static synthetic a(Lb/a;)Lcom/google/ads/AdView;
    .locals 1

    iget-object v0, p0, Lb/a;->d:Lcom/google/ads/AdView;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lb/a;->f:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lb/b;

    invoke-direct {v1, p0}, Lb/b;-><init>(Lb/a;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/a;->f()V

    iget-object v0, p0, Lb/a;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lb/a;->d:Lcom/google/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/a;->f()V

    iget-object v0, p0, Lb/a;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lb/a;->d:Lcom/google/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a;->d:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lb/a;->d:Lcom/google/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lb/a;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lb/a;->d:Lcom/google/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->stopLoading()V

    new-instance v0, Lcom/google/ads/InterstitialAd;

    iget-object v1, p0, Lb/a;->c:Landroid/app/Activity;

    const-string v2, "a1512c8169c2579"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    iget-object v0, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    const-string v1, "F2693D2B58F0376561C5FDCF4EEC2452"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    const-string v1, "67FF931D87AD5D178A9DC35678897D5B"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    iget-object v1, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/ads/InterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lb/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a;->g:Lcom/google/ads/InterstitialAd;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    const-string v1, "InterstitialAd_click"

    invoke-static {v0, v1}, Lcom/mobclick/android/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    const-string v1, "ad_click"

    invoke-static {v0, v1}, Lcom/mobclick/android/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lb/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
