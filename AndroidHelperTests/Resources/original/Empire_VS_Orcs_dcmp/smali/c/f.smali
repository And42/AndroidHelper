.class public final Lc/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Lc/d;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/f;->a:Lc/d;

    iput-object v0, p0, Lc/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lc/f;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lc/f;->d:I

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 7

    const/4 v4, 0x2

    iget v0, p0, Lc/f;->d:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lc/f;->a:Lc/d;

    iget v0, v0, Lc/d;->a:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lc/f;->a:Lc/d;

    iget-object v2, v2, Lc/d;->m:Ljava/lang/String;

    const-string v3, "%s.%s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lc/f;->a:Lc/d;

    iget-object v6, v6, Lc/d;->m:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lc/f;->a:Lc/d;

    iget-object v6, v6, Lc/d;->n:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    invoke-virtual {v1, v0}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->startActivity(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    new-instance v1, Lc/g;

    invoke-direct {v1, p0}, Lc/g;-><init>(Lc/f;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    new-instance v1, Lc/h;

    invoke-direct {v1, p0, p1}, Lc/h;-><init>(Lc/f;Z)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
