.class final Lc/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/f;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lc/f;Z)V
    .locals 0

    iput-object p1, p0, Lc/h;->a:Lc/f;

    iput-boolean p2, p0, Lc/h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lc/h;->a:Lc/f;

    iget-object v0, v0, Lc/f;->a:Lc/d;

    iget v0, v0, Lc/d;->e:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lc/h;->a:Lc/f;

    iget-object v0, v0, Lc/f;->a:Lc/d;

    iget-object v0, v0, Lc/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc/i;->a:Lc/i;

    iget-object v2, p0, Lc/h;->a:Lc/f;

    iget-object v2, v2, Lc/f;->a:Lc/d;

    iget-object v2, v2, Lc/d;->f:Ljava/lang/String;

    sget-object v3, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    invoke-virtual {v1, v2, v3, v0}, Lc/i;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    const-string v2, "moregame_download"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "website_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/mobclick/android/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lc/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/h;->a:Lc/f;

    iget-object v0, v0, Lc/f;->a:Lc/d;

    iget-object v0, v0, Lc/d;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/ezjoynetwork/helper/AppUtils;->invokeURLOnMarket(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/h;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    invoke-virtual {v0}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->finish()V

    :cond_0
    iget-object v0, p0, Lc/h;->a:Lc/f;

    iget-object v0, v0, Lc/f;->a:Lc/d;

    iget-object v0, v0, Lc/d;->g:Ljava/lang/String;

    iget-object v1, p0, Lc/h;->a:Lc/f;

    iget-object v1, v1, Lc/f;->a:Lc/d;

    iget-object v1, v1, Lc/d;->g:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    const-string v2, "moregame_download"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/mobclick/android/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/h;->a:Lc/f;

    iget-object v0, v0, Lc/f;->a:Lc/d;

    iget-object v0, v0, Lc/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc/i;->a:Lc/i;

    iget-object v2, p0, Lc/h;->a:Lc/f;

    iget-object v2, v2, Lc/f;->a:Lc/d;

    iget-object v2, v2, Lc/d;->f:Ljava/lang/String;

    sget-object v3, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    invoke-virtual {v1, v2, v3, v0}, Lc/i;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    const-string v2, "moregame_download"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "website_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/mobclick/android/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
