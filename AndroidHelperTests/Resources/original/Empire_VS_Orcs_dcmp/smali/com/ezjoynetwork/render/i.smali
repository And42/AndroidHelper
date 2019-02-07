.class final Lcom/ezjoynetwork/render/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;I)V
    .locals 0

    iput-object p1, p0, Lcom/ezjoynetwork/render/i;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    iput p2, p0, Lcom/ezjoynetwork/render/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ezjoynetwork/render/i;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$3(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Lcom/ezjoynetwork/render/GameRenderer;

    move-result-object v0

    iget v1, p0, Lcom/ezjoynetwork/render/i;->b:I

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameRenderer;->handleKeyDown(I)V

    return-void
.end method
