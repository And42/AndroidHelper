.class public Lcom/google/ads/internal/i;
.super Landroid/webkit/WebViewClient;


# static fields
.field private static final c:Lcom/google/ads/internal/a;


# instance fields
.field protected a:Lcom/google/ads/internal/d;

.field protected b:Z

.field private final d:Ljava/util/Map;

.field private final e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/ads/internal/a;->a:Lcom/google/ads/util/f;

    invoke-interface {v0}, Lcom/google/ads/util/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/a;

    sput-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    iput-object p2, p0, Lcom/google/ads/internal/i;->d:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/ads/internal/i;->e:Z

    iput-boolean p4, p0, Lcom/google/ads/internal/i;->g:Z

    iput-boolean v0, p0, Lcom/google/ads/internal/i;->b:Z

    iput-boolean v0, p0, Lcom/google/ads/internal/i;->h:Z

    iput-boolean v0, p0, Lcom/google/ads/internal/i;->i:Z

    return-void
.end method

.method public static a(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)Lcom/google/ads/internal/i;
    .locals 2

    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/ads/util/g$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/util/g$b;-><init>(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ads/internal/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/internal/i;-><init>(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/internal/i;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/internal/i;->f:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/internal/i;->g:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/internal/i;->h:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/internal/i;->i:Z

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/internal/i;->f:Z

    iget-boolean v0, p0, Lcom/google/ads/internal/i;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/internal/c;->c()V

    :goto_0
    iput-boolean v1, p0, Lcom/google/ads/internal/i;->h:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->i:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;)V

    iput-boolean v1, p0, Lcom/google/ads/internal/i;->i:Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "adLoader was null while trying to setFinishedLoadingHtml()."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/i;->f:Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/i;->f:Z

    iget-object v0, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/c;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldOverrideUrlLoading(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/a;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    iget-object v1, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    iget-object v4, p0, Lcom/google/ads/internal/i;->d:Ljava/util/Map;

    invoke-virtual {v0, v1, v4, v2, p1}, Lcom/google/ads/internal/a;->a(Lcom/google/ads/internal/d;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->g:Z

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "u"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    new-instance v2, Lcom/google/ads/internal/e;

    const-string v4, "intent"

    invoke-direct {v2, v4, v0}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v1, v2}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    move v0, v3

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v1

    iget-object v0, v1, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, v1, Lcom/google/ads/n;->s:Lcom/google/ads/util/i$c;

    invoke-virtual {v1}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/al;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/ads/al;->a(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v2, v0}, Lcom/google/ads/al;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_1
    .catch Lcom/google/ads/am; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "u"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    new-instance v2, Lcom/google/ads/internal/e;

    const-string v4, "intent"

    invoke-direct {v2, v4, v1}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v0, v2}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to append parameter to URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "URL is not a GMSG and can\'t handle URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move v0, v3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "An unknown error occurred in shouldOverrideUrlLoading."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
