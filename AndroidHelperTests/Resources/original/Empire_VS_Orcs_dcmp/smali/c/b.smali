.class final Lc/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lc/a;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lc/a;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lc/b;->a:Lc/a;

    iput-object p2, p0, Lc/b;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/b;->a:Lc/a;

    invoke-static {v0}, Lc/a;->a(Lc/a;)V

    iget-object v0, p0, Lc/b;->a:Lc/a;

    invoke-virtual {v0}, Lc/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b;->a:Lc/a;

    invoke-static {v0}, Lc/a;->b(Lc/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lc/c;

    iget-object v2, p0, Lc/b;->b:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lc/c;-><init>(Lc/b;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnRenderThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
