.class final Lc/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lc/m;

.field private final synthetic b:Lc/d;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc/m;Lc/d;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/n;->a:Lc/m;

    iput-object p2, p0, Lc/n;->b:Lc/d;

    iput-object p3, p0, Lc/n;->c:Landroid/content/Context;

    iput-object p4, p0, Lc/n;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lc/n;->b:Lc/d;

    iget v0, v0, Lc/d;->e:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lc/n;->b:Lc/d;

    iget v0, v0, Lc/d;->a:I

    iget-object v1, p0, Lc/n;->a:Lc/m;

    invoke-static {v1}, Lc/m;->a(Lc/m;)Lc/i;

    move-result-object v1

    invoke-static {v1}, Lc/i;->a(Lc/i;)I

    move-result v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    const-string v1, "app_update"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lc/n;->b:Lc/d;

    iget v3, v3, Lc/d;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobclick/android/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lc/n;->a:Lc/m;

    invoke-static {v0}, Lc/m;->a(Lc/m;)Lc/i;

    move-result-object v0

    iget-object v1, p0, Lc/n;->b:Lc/d;

    iget-object v1, v1, Lc/d;->f:Ljava/lang/String;

    iget-object v2, p0, Lc/n;->c:Landroid/content/Context;

    iget-object v3, p0, Lc/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lc/i;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lc/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Lc/o;

    iget-object v2, p0, Lc/n;->b:Lc/d;

    invoke-direct {v1, p0, v2}, Lc/o;-><init>(Lc/n;Lc/d;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/n;->a:Lc/m;

    invoke-static {v0}, Lc/m;->a(Lc/m;)Lc/i;

    move-result-object v0

    iget-object v1, p0, Lc/n;->b:Lc/d;

    iget-object v1, v1, Lc/d;->f:Ljava/lang/String;

    iget-object v2, p0, Lc/n;->c:Landroid/content/Context;

    iget-object v3, p0, Lc/n;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lc/i;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    const-string v1, "app_suggest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lc/n;->b:Lc/d;

    iget v3, v3, Lc/d;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc/n;->b:Lc/d;

    iget v3, v3, Lc/d;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mobclick/android/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
