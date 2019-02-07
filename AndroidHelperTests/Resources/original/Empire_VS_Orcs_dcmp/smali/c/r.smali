.class final Lc/r;
.super Lc/w;


# instance fields
.field final synthetic a:Lc/i;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc/i;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lc/r;->a:Lc/i;

    iput-object p2, p0, Lc/r;->b:Landroid/content/Context;

    invoke-direct {p0}, Lc/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lc/s;

    invoke-direct {v1, p0, p1}, Lc/s;-><init>(Lc/r;I)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lc/t;

    invoke-direct {v1, p0, p2}, Lc/t;-><init>(Lc/r;I)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v2, Lc/u;

    iget-object v3, p0, Lc/r;->b:Landroid/content/Context;

    invoke-direct {v2, p0, v0, v3}, Lc/u;-><init>(Lc/r;Landroid/net/Uri;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
