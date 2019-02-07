.class final Lcom/ezjoynetwork/render/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ezjoynetwork/render/l;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    iput-object p2, p0, Lcom/ezjoynetwork/render/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ezjoynetwork/render/l;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$3(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Lcom/ezjoynetwork/render/GameRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/ezjoynetwork/render/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameRenderer;->handleInsertText(Ljava/lang/String;)V

    return-void
.end method
