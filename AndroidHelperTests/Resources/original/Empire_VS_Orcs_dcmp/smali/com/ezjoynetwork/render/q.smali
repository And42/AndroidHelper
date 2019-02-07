.class final Lcom/ezjoynetwork/render/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

.field private final synthetic b:I

.field private final synthetic c:F

.field private final synthetic d:F


# direct methods
.method constructor <init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;IFF)V
    .locals 0

    iput-object p1, p0, Lcom/ezjoynetwork/render/q;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    iput p2, p0, Lcom/ezjoynetwork/render/q;->b:I

    iput p3, p0, Lcom/ezjoynetwork/render/q;->c:F

    iput p4, p0, Lcom/ezjoynetwork/render/q;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/ezjoynetwork/render/q;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$3(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Lcom/ezjoynetwork/render/GameRenderer;

    move-result-object v0

    iget v1, p0, Lcom/ezjoynetwork/render/q;->b:I

    iget v2, p0, Lcom/ezjoynetwork/render/q;->c:F

    iget v3, p0, Lcom/ezjoynetwork/render/q;->d:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/ezjoynetwork/render/GameRenderer;->handleActionUp(IFF)V

    return-void
.end method
