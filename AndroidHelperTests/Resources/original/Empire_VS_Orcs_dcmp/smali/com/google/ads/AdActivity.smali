.class public Lcom/google/ads/AdActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BASE_URL_PARAM:Ljava/lang/String; = "baseurl"

.field public static final COMPONENT_NAME_PARAM:Ljava/lang/String; = "c"

.field public static final CUSTOM_CLOSE_PARAM:Ljava/lang/String; = "custom_close"

.field public static final HTML_PARAM:Ljava/lang/String; = "html"

.field public static final INTENT_ACTION_PARAM:Ljava/lang/String; = "i"

.field public static final INTENT_EXTRAS_PARAM:Ljava/lang/String; = "e"

.field public static final INTENT_FLAGS_PARAM:Ljava/lang/String; = "f"

.field public static final ORIENTATION_PARAM:Ljava/lang/String; = "o"

.field public static final PACKAGE_NAME_PARAM:Ljava/lang/String; = "p"

.field public static final TYPE_PARAM:Ljava/lang/String; = "m"

.field public static final URL_PARAM:Ljava/lang/String; = "u"

.field private static final a:Lcom/google/ads/internal/a;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/ads/AdActivity;

.field private static d:Lcom/google/ads/internal/d;

.field private static e:Lcom/google/ads/AdActivity;

.field private static f:Lcom/google/ads/AdActivity;

.field private static final g:Lcom/google/ads/AdActivity$StaticMethodWrapper;


# instance fields
.field private h:Lcom/google/ads/internal/AdWebView;

.field private i:Landroid/widget/FrameLayout;

.field private j:I

.field private k:Landroid/view/ViewGroup;

.field private l:Z

.field private m:J

.field private n:Landroid/widget/RelativeLayout;

.field private o:Lcom/google/ads/AdActivity;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/google/ads/internal/AdVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/ads/internal/a;->a:Lcom/google/ads/util/f;

    invoke-interface {v0}, Lcom/google/ads/util/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/a;

    sput-object v0, Lcom/google/ads/AdActivity;->a:Lcom/google/ads/internal/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    sput-object v1, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    sput-object v1, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    sput-object v1, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    sput-object v1, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    new-instance v0, Lcom/google/ads/AdActivity$StaticMethodWrapper;

    invoke-direct {v0}, Lcom/google/ads/AdActivity$StaticMethodWrapper;-><init>()V

    sput-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdActivity;->k:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->o:Lcom/google/ads/AdActivity;

    return-void
.end method

.method private a(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void
.end method

.method static synthetic b()Lcom/google/ads/AdActivity;
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/internal/d;)Lcom/google/ads/internal/d;
    .locals 0

    sput-object p0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    return-object p0
.end method

.method static synthetic c()Lcom/google/ads/AdActivity;
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    return-object v0
.end method

.method static synthetic d()Lcom/google/ads/internal/d;
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    return-object v0
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->l:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/AdActivity;->a:Lcom/google/ads/internal/a;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/a;->b(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/AdWebView;->setAdActivity(Lcom/google/ads/AdActivity;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setIsExpandedMraid(Z)V

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->r:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->s:Z

    if-nez v0, :cond_8

    const-string v0, "Disabling hardware acceleration on collapsing MRAID WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->g()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/internal/AdVideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/internal/AdVideoView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdVideoView;->e()V

    iput-object v2, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/internal/AdVideoView;

    :cond_2
    sget-object v0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_3

    sput-object v2, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    :cond_3
    iget-object v0, p0, Lcom/google/ads/AdActivity;->o:Lcom/google/ads/AdActivity;

    sput-object v0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    sget-object v1, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->q:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    sget-object v2, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    invoke-virtual {v2}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/AdWebView;

    move-result-object v2

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->a()V

    :cond_4
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V

    :cond_5
    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->u()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    :cond_6
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->l:Z

    const-string v0, "AdActivity is closing."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->s:Z

    if-eqz v0, :cond_0

    const-string v0, "Re-enabling hardware acceleration on collapsing MRAID WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->h()V

    goto :goto_0

    :cond_9
    :try_start_1
    const-string v0, "currentAdManager is null while trying to destroy AdActivity."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isShowing()Z
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    invoke-virtual {v0}, Lcom/google/ads/AdActivity$StaticMethodWrapper;->isShowing()Z

    move-result v0

    return v0
.end method

.method public static launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/google/ads/AdActivity$StaticMethodWrapper;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    return-void
.end method

.method public static leftApplication()Z
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    invoke-virtual {v0}, Lcom/google/ads/AdActivity$StaticMethodWrapper;->leftApplication()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(IZ)Landroid/view/View;
    .locals 3

    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/google/ads/AdActivity;->j:I

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/google/ads/AdActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/google/ads/AdActivity;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p2}, Lcom/google/ads/AdActivity;->setCustomClose(Z)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected a(Landroid/app/Activity;)Lcom/google/ads/internal/AdVideoView;
    .locals 2

    new-instance v0, Lcom/google/ads/internal/AdVideoView;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/internal/AdVideoView;-><init>(Landroid/app/Activity;Lcom/google/ads/internal/AdWebView;)V

    return-object v0
.end method

.method protected a(Lcom/google/ads/internal/AdWebView;ZIZZ)V
    .locals 8

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v5}, Lcom/google/ads/AdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    if-lt v1, v7, :cond_0

    iget-boolean v1, p0, Lcom/google/ads/AdActivity;->r:Z

    if-eqz v1, :cond_3

    const-string v1, "Enabling hardware acceleration on the AdActivity window."

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/ads/util/g;->a(Landroid/view/Window;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/internal/AdWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_5

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->k:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/ads/AdActivity;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/internal/AdWebView;->i()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "Interstitial created with an AdWebView that is already in use by another AdActivity."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "Disabling hardware acceleration on the AdActivity WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/internal/AdWebView;->g()V

    goto :goto_0

    :cond_4
    const-string v0, "MRAID banner was not a child of a ViewGroup."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "Interstitial created with an AdWebView that has a parent."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p3}, Lcom/google/ads/AdActivity;->setRequestedOrientation(I)V

    invoke-virtual {p1, p0}, Lcom/google/ads/internal/AdWebView;->setAdActivity(Lcom/google/ads/AdActivity;)V

    if-eqz p4, :cond_7

    const/16 v0, 0x32

    :goto_2
    invoke-virtual {p0, v0, p5}, Lcom/google/ads/AdActivity;->a(IZ)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p4, :cond_8

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3
    iget-object v2, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p2, :cond_2

    sget-object v0, Lcom/google/ads/AdActivity;->a:Lcom/google/ads/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;)V

    goto :goto_1

    :cond_7
    const/16 v0, 0x20

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3
.end method

.method protected a(Lcom/google/ads/internal/d;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/AdActivity;->m:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->p:Z

    sget-object v1, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_0

    sput-object p0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    invoke-virtual {p1}, Lcom/google/ads/internal/d;->w()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected a(Ljava/util/HashMap;Lcom/google/ads/internal/d;)V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_0

    const-string v0, "Could not get the paramMap in launchIntent()"

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "m"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "i"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "p"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "c"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "f"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "e"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    move v7, v8

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    move v10, v8

    :goto_2
    if-eqz v7, :cond_9

    if-eqz v10, :cond_9

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    invoke-static {v11, v3}, Lcom/google/ads/util/e;->a(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning: Could not parse component name from open GMSG: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    :cond_4
    aget-object v1, v0, v9

    aget-object v0, v0, v8

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_5
    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    :goto_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v9, v2, :cond_c

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "v"

    packed-switch v4, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Warning: Unknown type in extras from open GMSG: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    move v7, v9

    goto/16 :goto_1

    :cond_8
    move v10, v9

    goto/16 :goto_2

    :cond_9
    if-eqz v7, :cond_a

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_a
    if-eqz v10, :cond_1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :cond_b
    if-eqz v7, :cond_2

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Warning: Could not parse flags from open GMSG: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_5

    :pswitch_0
    :try_start_2
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Warning: Could not parse extras from open GMSG: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Tried to launch empty intent."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    :try_start_3
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v11, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_7

    :pswitch_2
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    :pswitch_3
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v11, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_7

    :pswitch_4
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    :cond_d
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launching an intent from AdActivity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Lcom/google/ads/AdActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, p2}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/d;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getAdVideoView()Lcom/google/ads/internal/AdVideoView;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/internal/AdVideoView;

    return-object v0
.end method

.method public getOpeningAdWebView()Lcom/google/ads/internal/AdWebView;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/ads/AdActivity;->o:Lcom/google/ads/AdActivity;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->o:Lcom/google/ads/AdActivity;

    iget-object v0, v0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    if-nez v1, :cond_1

    const-string v1, "currentAdManager was null while trying to get the opening AdWebView."

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/AdWebView;

    move-result-object v1

    iget-object v3, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    if-eq v1, v3, :cond_2

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    monitor-exit v2

    goto :goto_0
.end method

.method public moveAdVideoView(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/internal/AdVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/internal/AdVideoView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/AdActivity;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/internal/AdVideoView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdVideoView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public newAdVideoView(IIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/internal/AdVideoView;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/google/ads/AdActivity;->a(Landroid/app/Activity;)Lcom/google/ads/internal/AdVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/internal/AdVideoView;

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/internal/AdVideoView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/AdActivity;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    if-nez v0, :cond_1

    const-string v0, "currentAdManager was null while trying to get the opening AdWebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->m()Lcom/google/ads/internal/i;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/i;->b(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v7, p0, Lcom/google/ads/AdActivity;->l:Z

    sget-object v2, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    if-eqz v0, :cond_5

    sget-object v8, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_0

    sput-object p0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    invoke-virtual {v8}, Lcom/google/ads/internal/d;->v()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdActivity;->o:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->o:Lcom/google/ads/AdActivity;

    :cond_1
    sput-object p0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    invoke-virtual {v8}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/n;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-eq v0, p0, :cond_3

    :cond_2
    invoke-virtual {v8}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/n;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/AdActivity;->o:Lcom/google/ads/AdActivity;

    sget-object v1, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {v8}, Lcom/google/ads/internal/d;->x()V

    :cond_4
    invoke-virtual {v8}, Lcom/google/ads/internal/d;->r()Z

    move-result v9

    invoke-virtual {v8}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->d:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m$a;

    sget v3, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v1, v0, Lcom/google/ads/m$a;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v1}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v3, v1, :cond_6

    move v1, v6

    :goto_0
    iput-boolean v1, p0, Lcom/google/ads/AdActivity;->s:Z

    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v0, v0, Lcom/google/ads/m$a;->d:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_7

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->r:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v5, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    iput-boolean v7, p0, Lcom/google/ads/AdActivity;->p:Z

    iput-boolean v6, p0, Lcom/google/ads/AdActivity;->q:Z

    iput-object v5, p0, Lcom/google/ads/AdActivity;->t:Lcom/google/ads/internal/AdVideoView;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.ads.AdOpener"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "Could not get the Bundle used to create AdActivity."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_5
    :try_start_1
    const-string v0, "Could not get currentAdManager."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_6
    move v1, v7

    goto :goto_0

    :cond_7
    move v0, v7

    goto :goto_1

    :cond_8
    new-instance v1, Lcom/google/ads/internal/e;

    invoke-direct {v1, v0}, Lcom/google/ads/internal/e;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/google/ads/internal/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/ads/internal/e;->c()Ljava/util/HashMap;

    move-result-object v10

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v10, v8}, Lcom/google/ads/AdActivity;->a(Ljava/util/HashMap;Lcom/google/ads/internal/d;)V

    goto :goto_2

    :cond_9
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    const-string v1, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v8}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/google/ads/internal/AdWebView;-><init>(Lcom/google/ads/n;Lcom/google/ads/AdSize;)V

    iput-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    sget-object v1, Lcom/google/ads/internal/a;->d:Ljava/util/Map;

    if-nez v9, :cond_b

    move v0, v6

    :goto_3
    invoke-static {v8, v1, v6, v0}, Lcom/google/ads/internal/i;->a(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)Lcom/google/ads/internal/i;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/ads/internal/i;->d(Z)V

    if-eqz v9, :cond_a

    invoke-virtual {v0, v6}, Lcom/google/ads/internal/i;->a(Z)V

    :cond_a
    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v0, "u"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "baseurl"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "html"

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/AdWebView;->loadUrl(Ljava/lang/String;)V

    :goto_4
    const-string v0, "o"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/google/ads/util/AdUtil;->b()I

    move-result v3

    :goto_5
    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    if-eqz v10, :cond_11

    const-string v0, "1"

    const-string v2, "custom_close"

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v5, v6

    :goto_6
    move-object v0, p0

    move v2, v7

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/AdWebView;ZIZZ)V

    goto/16 :goto_2

    :cond_b
    move v0, v7

    goto :goto_3

    :cond_c
    if-eqz v2, :cond_d

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/internal/AdWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    const-string v0, "Could not get the URL or HTML parameter to show a web app."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/google/ads/util/AdUtil;->a()I

    move-result v3

    goto :goto_5

    :cond_f
    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_10

    invoke-virtual {v8}, Lcom/google/ads/internal/d;->o()I

    move-result v3

    goto :goto_5

    :cond_10
    const/4 v3, -0x1

    goto :goto_5

    :cond_11
    move v5, v7

    goto :goto_6

    :cond_12
    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_13
    invoke-virtual {v8}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/AdWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v8}, Lcom/google/ads/internal/d;->o()I

    move-result v3

    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v6}, Lcom/google/ads/internal/AdWebView;->setIsExpandedMraid(Z)V

    iput-boolean v7, p0, Lcom/google/ads/AdActivity;->q:Z

    if-eqz v10, :cond_14

    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v7, v6

    :cond_14
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->r:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->s:Z

    if-nez v0, :cond_17

    const-string v0, "Re-enabling hardware acceleration on expanding MRAID WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->h()V

    move v5, v7

    :goto_7
    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    move-object v0, p0

    move v2, v6

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/AdWebView;ZIZZ)V

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->j()Z

    move-result v7

    move v5, v7

    goto :goto_7

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown AdOpener, <action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_17
    move v5, v7

    goto :goto_7
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/ads/AdActivity;->e()V

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/AdActivity;->e()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->p:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/AdActivity;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "Launcher AdActivity got focus and is closing."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setCustomClose(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-nez p1, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v1, 0x1080017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/google/ads/AdActivity;->j:I

    iget v3, p0, Lcom/google/ads/AdActivity;->j:I

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/google/ads/AdActivity;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
