.class final Lc/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lc/m;


# direct methods
.method constructor <init>(Lc/m;)V
    .locals 0

    iput-object p1, p0, Lc/p;->a:Lc/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lc/p;->a:Lc/m;

    invoke-static {v0}, Lc/m;->a(Lc/m;)Lc/i;

    move-result-object v0

    sget-object v1, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v2, Lc/l;

    invoke-direct {v2, v0}, Lc/l;-><init>(Lc/i;)V

    invoke-virtual {v1, v2}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
