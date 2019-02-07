.class final Lcom/ezjoynetwork/helper/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/ezjoynetwork/helper/f;->a:I

    iput p2, p0, Lcom/ezjoynetwork/helper/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Ld/a;->a:Ld/a;

    iget v1, p0, Lcom/ezjoynetwork/helper/f;->a:I

    iget v2, p0, Lcom/ezjoynetwork/helper/f;->b:I

    invoke-virtual {v0, v1, v2}, Ld/a;->a(II)V

    return-void
.end method
