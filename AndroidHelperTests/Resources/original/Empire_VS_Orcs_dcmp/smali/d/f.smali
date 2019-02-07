.class final Ld/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ld/a;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Ld/a;II)V
    .locals 0

    iput-object p1, p0, Ld/f;->a:Ld/a;

    iput p2, p0, Ld/f;->b:I

    iput p3, p0, Ld/f;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ld/f;->b:I

    iget v1, p0, Ld/f;->c:I

    invoke-static {v0, v1}, Lcom/ezjoynetwork/helper/AppUtils;->onIAPSuccess(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Ld/g;

    invoke-direct {v1, p0}, Ld/g;-><init>(Ld/f;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
