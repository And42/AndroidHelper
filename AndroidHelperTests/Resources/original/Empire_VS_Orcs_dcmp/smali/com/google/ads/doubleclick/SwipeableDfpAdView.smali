.class public Lcom/google/ads/doubleclick/SwipeableDfpAdView;
.super Lcom/google/ads/doubleclick/DfpAdView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/doubleclick/DfpAdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/doubleclick/DfpAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/doubleclick/DfpAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public resize(Lcom/google/ads/AdSize;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Lcom/google/ads/doubleclick/DfpAdView;->resize(Lcom/google/ads/AdSize;)V

    iget-object v0, p0, Lcom/google/ads/doubleclick/SwipeableDfpAdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/ActivationOverlay;

    invoke-virtual {v0}, Lcom/google/ads/internal/ActivationOverlay;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/doubleclick/SwipeableDfpAdView;->a:Lcom/google/ads/internal/d;

    invoke-virtual {p1}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/ads/internal/d;->a(IIII)V

    :cond_0
    return-void
.end method

.method public setSwipeableEventListener(Lcom/google/ads/SwipeableAdListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ads/doubleclick/DfpAdView;->setSwipeableEventListener(Lcom/google/ads/SwipeableAdListener;)V

    return-void
.end method
