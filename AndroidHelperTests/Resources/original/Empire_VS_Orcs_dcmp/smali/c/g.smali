.class final Lc/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/f;


# direct methods
.method constructor <init>(Lc/f;)V
    .locals 0

    iput-object p1, p0, Lc/g;->a:Lc/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    invoke-virtual {v0}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->finish()V

    return-void
.end method
