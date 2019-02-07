.class final Lcom/ezjoynetwork/helper/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Ld/a;->a:Ld/a;

    sget-object v1, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    invoke-virtual {v0, v1}, Ld/a;->b(Landroid/app/Activity;)V

    return-void
.end method
