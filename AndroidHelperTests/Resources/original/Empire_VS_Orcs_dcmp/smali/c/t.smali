.class final Lc/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/r;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lc/r;I)V
    .locals 0

    iput-object p1, p0, Lc/t;->a:Lc/r;

    iput p2, p0, Lc/t;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/t;->a:Lc/r;

    iget-object v0, v0, Lc/r;->a:Lc/i;

    iget-object v0, v0, Lc/i;->b:Landroid/app/ProgressDialog;

    iget v1, p0, Lc/t;->b:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
