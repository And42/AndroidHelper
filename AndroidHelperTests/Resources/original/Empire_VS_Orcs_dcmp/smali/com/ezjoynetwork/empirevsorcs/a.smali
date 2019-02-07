.class final Lcom/ezjoynetwork/empirevsorcs/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

.field private final synthetic b:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/ezjoynetwork/empirevsorcs/GameApp;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/ezjoynetwork/empirevsorcs/a;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    iput-object p2, p0, Lcom/ezjoynetwork/empirevsorcs/a;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/ezjoynetwork/empirevsorcs/a;->b:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/ezjoynetwork/empirevsorcs/a;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    invoke-virtual {v1, v0}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
