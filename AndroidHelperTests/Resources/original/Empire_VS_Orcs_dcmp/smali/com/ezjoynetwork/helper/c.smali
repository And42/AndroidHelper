.class final Lcom/ezjoynetwork/helper/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ezjoynetwork/helper/c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ezjoynetwork/helper/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ezjoynetwork/helper/AppUtils;->invokeURLOnMarket(Ljava/lang/String;)V

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    const-string v1, "app_rate"

    invoke-static {v0, v1}, Lcom/mobclick/android/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
