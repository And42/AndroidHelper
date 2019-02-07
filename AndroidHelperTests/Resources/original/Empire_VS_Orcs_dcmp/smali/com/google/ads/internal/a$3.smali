.class final Lcom/google/ads/internal/a$3;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "/invalidRequest"

    new-instance v1, Lcom/google/ads/v;

    invoke-direct {v1}, Lcom/google/ads/v;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/loadAdURL"

    new-instance v1, Lcom/google/ads/w;

    invoke-direct {v1}, Lcom/google/ads/w;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/loadSdkConstants"

    new-instance v1, Lcom/google/ads/x;

    invoke-direct {v1}, Lcom/google/ads/x;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/log"

    new-instance v1, Lcom/google/ads/y;

    invoke-direct {v1}, Lcom/google/ads/y;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
