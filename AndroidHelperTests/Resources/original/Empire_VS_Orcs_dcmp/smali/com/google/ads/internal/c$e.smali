.class Lcom/google/ads/internal/c$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/internal/c;

.field private final b:Lcom/google/ads/internal/d;

.field private final c:Landroid/webkit/WebView;

.field private final d:Ljava/util/LinkedList;

.field private final e:I

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/ads/AdSize;


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/c;Lcom/google/ads/internal/d;Landroid/webkit/WebView;Ljava/util/LinkedList;IZLjava/lang/String;Lcom/google/ads/AdSize;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/internal/c$e;->a:Lcom/google/ads/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    iput-object p3, p0, Lcom/google/ads/internal/c$e;->c:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/google/ads/internal/c$e;->d:Ljava/util/LinkedList;

    iput p5, p0, Lcom/google/ads/internal/c$e;->e:I

    iput-boolean p6, p0, Lcom/google/ads/internal/c$e;->f:Z

    iput-object p7, p0, Lcom/google/ads/internal/c$e;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/ads/internal/c$e;->h:Lcom/google/ads/AdSize;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/internal/c$e;->c:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/internal/c$e;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/internal/c$e;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/c$e;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    iget v1, p0, Lcom/google/ads/internal/c$e;->e:I

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(I)V

    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    iget-boolean v1, p0, Lcom/google/ads/internal/c$e;->f:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/c$e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/c$e;->h:Lcom/google/ads/AdSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/internal/c$e;->a:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->b(Lcom/google/ads/internal/c;)Lcom/google/ads/l;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/n;

    iget-object v0, v0, Lcom/google/ads/n;->g:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    iget-object v1, p0, Lcom/google/ads/internal/c$e;->h:Lcom/google/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/h;->b(Lcom/google/ads/AdSize;)V

    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c$e;->h:Lcom/google/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setAdSize(Lcom/google/ads/AdSize;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->E()V

    return-void
.end method
