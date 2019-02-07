.class final Lc/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/j;


# direct methods
.method constructor <init>(Lc/j;)V
    .locals 0

    iput-object p1, p0, Lc/k;->a:Lc/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lc/k;->a:Lc/j;

    invoke-static {v0}, Lc/j;->a(Lc/j;)Lc/i;

    move-result-object v0

    invoke-static {v0}, Lc/i;->b(Lc/i;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lc/e;->a:Lc/e;

    invoke-virtual {v0}, Lc/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/k;->a:Lc/j;

    invoke-static {v0}, Lc/j;->a(Lc/j;)Lc/i;

    move-result-object v0

    invoke-virtual {v0}, Lc/i;->d()I

    move-result v0

    sget-object v1, Lc/e;->a:Lc/e;

    iget-object v2, p0, Lc/k;->a:Lc/j;

    invoke-static {v2}, Lc/j;->a(Lc/j;)Lc/i;

    move-result-object v2

    invoke-static {v2}, Lc/i;->a(Lc/i;)I

    move-result v2

    invoke-virtual {v1, v2}, Lc/e;->a(I)Lc/d;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v1, v5, Lc/d;->c:I

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lc/k;->a:Lc/j;

    invoke-static {v0}, Lc/j;->a(Lc/j;)Lc/i;

    move-result-object v1

    const-string v3, "Game Update"

    const-string v4, "A new version of this game is available, please update!"

    sget-object v2, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    sget-object v6, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v0, Lc/m;

    invoke-direct/range {v0 .. v5}, Lc/m;-><init>(Lc/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc/d;)V

    invoke-virtual {v6, v0}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
