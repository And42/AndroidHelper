.class public Lcom/google/ads/n;
.super Lcom/google/ads/util/i;


# instance fields
.field public final a:Lcom/google/ads/util/i$b;

.field public final b:Lcom/google/ads/util/i$b;

.field public final c:Lcom/google/ads/util/i$d;

.field public final d:Lcom/google/ads/util/i$b;

.field public final e:Lcom/google/ads/util/i$b;

.field public final f:Lcom/google/ads/util/i$b;

.field public final g:Lcom/google/ads/util/i$b;

.field public final h:Lcom/google/ads/util/i$b;

.field public final i:Lcom/google/ads/util/i$b;

.field public final j:Lcom/google/ads/util/i$b;

.field public final k:Lcom/google/ads/util/i$b;

.field public final l:Lcom/google/ads/util/i$c;

.field public final m:Lcom/google/ads/util/i$c;

.field public final n:Lcom/google/ads/util/i$c;

.field public final o:Lcom/google/ads/util/i$c;

.field public final p:Lcom/google/ads/util/i$c;

.field public final q:Lcom/google/ads/util/i$c;

.field public final r:Lcom/google/ads/util/i$c;

.field public final s:Lcom/google/ads/util/i$c;

.field public final t:Lcom/google/ads/util/i$c;


# direct methods
.method public constructor <init>(Lcom/google/ads/m;Lcom/google/ads/Ad;Lcom/google/ads/AdView;Lcom/google/ads/InterstitialAd;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/internal/h;Lcom/google/ads/internal/d;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/ads/util/i;-><init>()V

    new-instance v1, Lcom/google/ads/util/i$c;

    const-string v2, "currentAd"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->l:Lcom/google/ads/util/i$c;

    new-instance v1, Lcom/google/ads/util/i$c;

    const-string v2, "nextAd"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->m:Lcom/google/ads/util/i$c;

    new-instance v1, Lcom/google/ads/util/i$c;

    const-string v2, "adListener"

    invoke-direct {v1, p0, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/n;->o:Lcom/google/ads/util/i$c;

    new-instance v1, Lcom/google/ads/util/i$c;

    const-string v2, "appEventListener"

    invoke-direct {v1, p0, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/n;->p:Lcom/google/ads/util/i$c;

    new-instance v1, Lcom/google/ads/util/i$c;

    const-string v2, "swipeableEventListener"

    invoke-direct {v1, p0, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/n;->q:Lcom/google/ads/util/i$c;

    new-instance v1, Lcom/google/ads/util/i$c;

    const-string v2, "spamSignals"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->r:Lcom/google/ads/util/i$c;

    new-instance v1, Lcom/google/ads/util/i$c;

    const-string v2, "spamSignalsUtil"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->s:Lcom/google/ads/util/i$c;

    new-instance v1, Lcom/google/ads/util/i$c;

    const-string v2, "usesManualImpressions"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->t:Lcom/google/ads/util/i$c;

    new-instance v1, Lcom/google/ads/util/i$b;

    const-string v2, "appState"

    invoke-direct {v1, p0, v2, p1}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->d:Lcom/google/ads/util/i$b;

    new-instance v1, Lcom/google/ads/util/i$b;

    const-string v2, "ad"

    invoke-direct {v1, p0, v2, p2}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->a:Lcom/google/ads/util/i$b;

    new-instance v1, Lcom/google/ads/util/i$b;

    const-string v2, "adView"

    invoke-direct {v1, p0, v2, p3}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->j:Lcom/google/ads/util/i$b;

    new-instance v1, Lcom/google/ads/util/i$b;

    const-string v2, "adType"

    invoke-direct {v1, p0, v2, p9}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    new-instance v1, Lcom/google/ads/util/i$b;

    const-string v2, "adUnitId"

    invoke-direct {v1, p0, v2, p5}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->h:Lcom/google/ads/util/i$b;

    new-instance v1, Lcom/google/ads/util/i$d;

    const-string v2, "activity"

    invoke-direct {v1, p0, v2, p6}, Lcom/google/ads/util/i$d;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    new-instance v1, Lcom/google/ads/util/i$b;

    const-string v2, "interstitialAd"

    invoke-direct {v1, p0, v2, p4}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->k:Lcom/google/ads/util/i$b;

    new-instance v1, Lcom/google/ads/util/i$b;

    const-string v2, "bannerContainer"

    invoke-direct {v1, p0, v2, p8}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    new-instance v1, Lcom/google/ads/util/i$b;

    const-string v2, "applicationContext"

    invoke-direct {v1, p0, v2, p7}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->f:Lcom/google/ads/util/i$b;

    new-instance v1, Lcom/google/ads/util/i$c;

    const-string v2, "adSizes"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->n:Lcom/google/ads/util/i$c;

    new-instance v1, Lcom/google/ads/util/i$b;

    const-string v2, "adManager"

    invoke-direct {v1, p0, v2, p10}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->b:Lcom/google/ads/util/i$b;

    if-eqz p9, :cond_0

    invoke-virtual {p9}, Lcom/google/ads/internal/h;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/ads/internal/ActivationOverlay;

    invoke-direct {v0, p0}, Lcom/google/ads/internal/ActivationOverlay;-><init>(Lcom/google/ads/n;)V

    :cond_0
    new-instance v1, Lcom/google/ads/util/i$b;

    const-string v2, "activationOverlay"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->a()Z

    move-result v0

    return v0
.end method
