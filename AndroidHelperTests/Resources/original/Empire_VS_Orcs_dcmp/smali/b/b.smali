.class final Lb/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lb/a;


# direct methods
.method constructor <init>(Lb/a;)V
    .locals 0

    iput-object p1, p0, Lb/b;->a:Lb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lb/b;->a:Lb/a;

    invoke-static {v0}, Lb/a;->a(Lb/a;)Lcom/google/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/AdView;->stopLoading()V

    return-void
.end method
