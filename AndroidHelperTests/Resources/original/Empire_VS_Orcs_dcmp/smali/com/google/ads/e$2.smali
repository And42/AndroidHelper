.class Lcom/google/ads/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/f;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/ads/e;


# direct methods
.method constructor <init>(Lcom/google/ads/e;Lcom/google/ads/f;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/e$2;->c:Lcom/google/ads/e;

    iput-object p2, p0, Lcom/google/ads/e$2;->a:Lcom/google/ads/f;

    iput-boolean p3, p0, Lcom/google/ads/e$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/e$2;->c:Lcom/google/ads/e;

    invoke-static {v0}, Lcom/google/ads/e;->b(Lcom/google/ads/e;)Lcom/google/ads/internal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/e$2;->a:Lcom/google/ads/f;

    iget-boolean v2, p0, Lcom/google/ads/e$2;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/f;Z)V

    return-void
.end method
