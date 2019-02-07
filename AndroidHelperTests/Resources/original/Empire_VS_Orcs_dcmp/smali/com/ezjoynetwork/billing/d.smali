.class final Lcom/ezjoynetwork/billing/d;
.super Lcom/ezjoynetwork/billing/c;


# instance fields
.field final synthetic c:Lcom/ezjoynetwork/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/ezjoynetwork/billing/BillingService;)V
    .locals 1

    iput-object p1, p0, Lcom/ezjoynetwork/billing/d;->c:Lcom/ezjoynetwork/billing/BillingService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/ezjoynetwork/billing/c;-><init>(Lcom/ezjoynetwork/billing/BillingService;I)V

    return-void
.end method


# virtual methods
.method protected final d()J
    .locals 2

    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/billing/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/ezjoynetwork/billing/BillingService;->d()La/a;

    move-result-object v1

    invoke-interface {v1, v0}, La/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/ezjoynetwork/billing/j;->a:Lcom/ezjoynetwork/billing/j;

    invoke-virtual {v1}, Lcom/ezjoynetwork/billing/j;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/ezjoynetwork/billing/o;->a(Z)V

    sget-wide v0, Lcom/ezjoynetwork/billing/h;->a:J

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
