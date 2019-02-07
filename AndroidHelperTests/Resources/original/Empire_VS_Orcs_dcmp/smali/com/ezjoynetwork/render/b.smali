.class final Lcom/ezjoynetwork/render/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ezjoynetwork/render/GameActivity;


# direct methods
.method constructor <init>(Lcom/ezjoynetwork/render/GameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ezjoynetwork/render/b;->a:Lcom/ezjoynetwork/render/GameActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/ezjoynetwork/render/b;->a:Lcom/ezjoynetwork/render/GameActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ezjoynetwork/render/a;

    iget-object v2, v0, Lcom/ezjoynetwork/render/a;->a:Ljava/lang/String;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ezjoynetwork/render/a;

    iget-object v0, v0, Lcom/ezjoynetwork/render/a;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ezjoynetwork/render/GameActivity;->access$0(Lcom/ezjoynetwork/render/GameActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
