.class final Lc/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/n;

.field private final synthetic b:Lc/d;


# direct methods
.method constructor <init>(Lc/n;Lc/d;)V
    .locals 0

    iput-object p1, p0, Lc/o;->a:Lc/n;

    iput-object p2, p0, Lc/o;->b:Lc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/o;->b:Lc/d;

    iget-object v1, v1, Lc/d;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v1, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    invoke-virtual {v1, v0}, Lcom/ezjoynetwork/render/GameActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
