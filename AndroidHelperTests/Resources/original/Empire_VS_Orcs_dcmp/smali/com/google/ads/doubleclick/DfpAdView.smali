.class public Lcom/google/ads/doubleclick/DfpAdView;
.super Lcom/google/ads/AdView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;[Lcom/google/ads/AdSize;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public enableManualImpressions(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/doubleclick/DfpAdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->t:Lcom/google/ads/util/i$c;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public recordImpression()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/doubleclick/DfpAdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->z()V

    return-void
.end method

.method public resize(Lcom/google/ads/AdSize;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/doubleclick/DfpAdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/AdWebView;->setAdSize(Lcom/google/ads/AdSize;)V

    iget-object v0, p0, Lcom/google/ads/doubleclick/DfpAdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/h;->b(Lcom/google/ads/AdSize;)V

    return-void
.end method

.method public setAppEventListener(Lcom/google/ads/AppEventListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ads/AdView;->setAppEventListener(Lcom/google/ads/AppEventListener;)V

    return-void
.end method

.method public varargs setSupportedAdSizes([Lcom/google/ads/AdSize;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ads/AdView;->setSupportedAdSizes([Lcom/google/ads/AdSize;)V

    return-void
.end method
