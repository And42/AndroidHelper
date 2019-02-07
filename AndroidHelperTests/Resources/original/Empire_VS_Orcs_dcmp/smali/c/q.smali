.class final Lc/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lc/i;


# direct methods
.method constructor <init>(Lc/i;)V
    .locals 0

    iput-object p1, p0, Lc/q;->a:Lc/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lc/q;->a:Lc/i;

    invoke-virtual {v0}, Lc/i;->b()V

    iget-object v0, p0, Lc/q;->a:Lc/i;

    iget-object v0, v0, Lc/i;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method
