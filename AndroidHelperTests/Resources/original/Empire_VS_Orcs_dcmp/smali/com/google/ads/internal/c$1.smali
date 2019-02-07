.class Lcom/google/ads/internal/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/internal/c;


# direct methods
.method constructor <init>(Lcom/google/ads/internal/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/internal/c$1;->a:Lcom/google/ads/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/internal/c$1;->a:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->b(Lcom/google/ads/internal/c;)Lcom/google/ads/l;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->e:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/ActivationOverlay;

    iget-object v1, p0, Lcom/google/ads/internal/c$1;->a:Lcom/google/ads/internal/c;

    invoke-static {v1}, Lcom/google/ads/internal/c;->c(Lcom/google/ads/internal/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/ActivationOverlay;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
