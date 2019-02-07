.class Lcom/google/ads/internal/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/internal/d;

.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/google/ads/internal/f;

.field private final d:Lcom/google/ads/AdRequest$ErrorCode;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/d;Landroid/webkit/WebView;Lcom/google/ads/internal/f;Lcom/google/ads/AdRequest$ErrorCode;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    iput-object p2, p0, Lcom/google/ads/internal/c$a;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/internal/c$a;->c:Lcom/google/ads/internal/f;

    iput-object p4, p0, Lcom/google/ads/internal/c$a;->d:Lcom/google/ads/AdRequest$ErrorCode;

    iput-boolean p5, p0, Lcom/google/ads/internal/c$a;->e:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/internal/c$a;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/internal/c$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/internal/c$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->c:Lcom/google/ads/internal/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/internal/c$a;->c:Lcom/google/ads/internal/f;

    invoke-virtual {v0}, Lcom/google/ads/internal/f;->a()V

    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/internal/c$a;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->i:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/c$a;->d:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    return-void
.end method
