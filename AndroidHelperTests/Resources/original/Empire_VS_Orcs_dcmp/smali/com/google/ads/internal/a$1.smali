.class final Lcom/google/ads/internal/a$1;
.super Ljava/util/HashMap;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "/open"

    new-instance v1, Lcom/google/ads/z;

    invoke-direct {v1}, Lcom/google/ads/z;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/canOpenURLs"

    new-instance v1, Lcom/google/ads/q;

    invoke-direct {v1}, Lcom/google/ads/q;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/close"

    new-instance v1, Lcom/google/ads/s;

    invoke-direct {v1}, Lcom/google/ads/s;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/customClose"

    new-instance v1, Lcom/google/ads/t;

    invoke-direct {v1}, Lcom/google/ads/t;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/appEvent"

    new-instance v1, Lcom/google/ads/p;

    invoke-direct {v1}, Lcom/google/ads/p;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/log"

    new-instance v1, Lcom/google/ads/y;

    invoke-direct {v1}, Lcom/google/ads/y;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/click"

    new-instance v1, Lcom/google/ads/r;

    invoke-direct {v1}, Lcom/google/ads/r;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/httpTrack"

    new-instance v1, Lcom/google/ads/u;

    invoke-direct {v1}, Lcom/google/ads/u;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/touch"

    new-instance v1, Lcom/google/ads/ab;

    invoke-direct {v1}, Lcom/google/ads/ab;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "/video"

    new-instance v1, Lcom/google/ads/ac;

    invoke-direct {v1}, Lcom/google/ads/ac;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
