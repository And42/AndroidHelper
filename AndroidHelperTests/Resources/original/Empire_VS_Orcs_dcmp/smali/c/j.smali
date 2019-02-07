.class final Lc/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lc/i;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lc/i;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lc/j;->a:Lc/i;

    iput-object p2, p0, Lc/j;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lc/j;)Lc/i;
    .locals 1

    iget-object v0, p0, Lc/j;->a:Lc/i;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lc/e;->a:Lc/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://m.ezjoygame.com/update.json?appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc/j;->a:Lc/i;

    invoke-static {v2}, Lc/i;->a(Lc/i;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e;->a(Ljava/lang/String;)V

    sget-object v0, Lc/a;->a:Lc/a;

    iget-object v1, p0, Lc/j;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lc/a;->a(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lc/k;

    invoke-direct {v1, p0}, Lc/k;-><init>(Lc/j;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
