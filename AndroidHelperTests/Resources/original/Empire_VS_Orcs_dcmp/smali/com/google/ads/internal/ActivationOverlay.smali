.class public Lcom/google/ads/internal/ActivationOverlay;
.super Lcom/google/ads/internal/AdWebView;


# instance fields
.field private volatile b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private final f:Lcom/google/ads/internal/i;


# direct methods
.method public constructor <init>(Lcom/google/ads/n;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/internal/AdWebView;-><init>(Lcom/google/ads/n;Lcom/google/ads/AdSize;)V

    iput-boolean v2, p0, Lcom/google/ads/internal/ActivationOverlay;->b:Z

    iput-boolean v2, p0, Lcom/google/ads/internal/ActivationOverlay;->c:Z

    iput v1, p0, Lcom/google/ads/internal/ActivationOverlay;->d:I

    iput v1, p0, Lcom/google/ads/internal/ActivationOverlay;->e:I

    iget-object v0, p1, Lcom/google/ads/n;->d:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m;

    iget-object v0, v0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/m$a;

    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v0, v0, Lcom/google/ads/m$a;->c:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    const-string v0, "Disabling hardware acceleration for an activation overlay."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/internal/ActivationOverlay;->g()V

    :cond_0
    iget-object v0, p1, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/d;

    sget-object v1, Lcom/google/ads/internal/a;->c:Ljava/util/Map;

    invoke-static {v0, v1, v2, v2}, Lcom/google/ads/internal/i;->a(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)Lcom/google/ads/internal/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/ActivationOverlay;->f:Lcom/google/ads/internal/i;

    iget-object v0, p0, Lcom/google/ads/internal/ActivationOverlay;->f:Lcom/google/ads/internal/i;

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/ActivationOverlay;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/internal/ActivationOverlay;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/internal/ActivationOverlay;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/ads/internal/ActivationOverlay;->e:I

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/ads/internal/ActivationOverlay;->d:I

    return v0
.end method

.method public e()Lcom/google/ads/internal/i;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/internal/ActivationOverlay;->f:Lcom/google/ads/internal/i;

    return-object v0
.end method

.method public setOverlayActivated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/internal/ActivationOverlay;->c:Z

    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->c:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/internal/ActivationOverlay$1;

    invoke-direct {v1, p0, p0}, Lcom/google/ads/internal/ActivationOverlay$1;-><init>(Lcom/google/ads/internal/ActivationOverlay;Lcom/google/ads/internal/ActivationOverlay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput-boolean p1, p0, Lcom/google/ads/internal/ActivationOverlay;->b:Z

    return-void
.end method

.method public setXPosition(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/internal/ActivationOverlay;->d:I

    return-void
.end method

.method public setYPosition(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/internal/ActivationOverlay;->e:I

    return-void
.end method
