.class final Lcom/ezjoynetwork/helper/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/ezjoynetwork/helper/h;->a:Z

    iput-object p2, p0, Lcom/ezjoynetwork/helper/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Game Update"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "A new version of this game is available, please update!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/ezjoynetwork/helper/i;

    iget-boolean v3, p0, Lcom/ezjoynetwork/helper/h;->a:Z

    iget-object v4, p0, Lcom/ezjoynetwork/helper/h;->b:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/ezjoynetwork/helper/i;-><init>(Lcom/ezjoynetwork/helper/h;ZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/ezjoynetwork/helper/j;

    invoke-direct {v2, p0}, Lcom/ezjoynetwork/helper/j;-><init>(Lcom/ezjoynetwork/helper/h;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
