.class final Lc/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/r;

.field private final synthetic b:Landroid/net/Uri;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc/r;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lc/u;->a:Lc/r;

    iput-object p2, p0, Lc/u;->b:Landroid/net/Uri;

    iput-object p3, p0, Lc/u;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lc/u;->a:Lc/r;

    iget-object v0, v0, Lc/r;->a:Lc/i;

    iget-object v0, v0, Lc/i;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lc/u;->a:Lc/r;

    iget-object v0, v0, Lc/r;->a:Lc/i;

    iget-object v0, p0, Lc/u;->b:Landroid/net/Uri;

    iget-object v1, p0, Lc/u;->c:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
