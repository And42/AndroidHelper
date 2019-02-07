.class final Lcom/ezjoynetwork/render/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ezjoynetwork/render/GameGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/ezjoynetwork/render/j;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/j;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$3(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Lcom/ezjoynetwork/render/GameRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameRenderer;->handleOnPause()V

    return-void
.end method
