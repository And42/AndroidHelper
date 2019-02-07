.class final Lcom/ezjoynetwork/helper/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ezjoynetwork/helper/h;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ezjoynetwork/helper/h;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ezjoynetwork/helper/i;->a:Lcom/ezjoynetwork/helper/h;

    iput-boolean p2, p0, Lcom/ezjoynetwork/helper/i;->b:Z

    iput-object p3, p0, Lcom/ezjoynetwork/helper/i;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/ezjoynetwork/helper/i;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/helper/i;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ezjoynetwork/helper/AppUtils;->invokeURLOnMarket(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    const-string v1, "app_update"

    invoke-static {v0, v1}, Lcom/mobclick/android/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ezjoynetwork/helper/i;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ezjoynetwork/helper/AppUtils;->invokeURLOnWeb(Ljava/lang/String;)V

    goto :goto_0
.end method
