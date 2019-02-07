.class public final Lcom/google/ads/l;
.super Lcom/google/ads/util/i;


# instance fields
.field public final a:Lcom/google/ads/util/i$b;

.field public final b:Lcom/google/ads/util/i$c;

.field public final c:Lcom/google/ads/util/i$c;


# direct methods
.method public constructor <init>(Lcom/google/ads/n;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/util/i;-><init>()V

    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "disableNativeScroll"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/l;->c:Lcom/google/ads/util/i$c;

    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v1, "slotState"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "adLoader"

    new-instance v2, Lcom/google/ads/internal/c;

    invoke-direct {v2, p0}, Lcom/google/ads/internal/c;-><init>(Lcom/google/ads/l;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/l;->b:Lcom/google/ads/util/i$c;

    return-void
.end method
