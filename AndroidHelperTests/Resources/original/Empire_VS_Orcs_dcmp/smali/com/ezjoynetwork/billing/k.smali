.class public final Lcom/ezjoynetwork/billing/k;
.super Lcom/ezjoynetwork/billing/n;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ezjoynetwork/billing/n;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ezjoynetwork/billing/g;Lcom/ezjoynetwork/billing/j;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/ezjoynetwork/billing/q;)V
    .locals 3

    iget-object v0, p1, Lcom/ezjoynetwork/billing/q;->a:Lcom/ezjoynetwork/billing/i;

    sget-object v1, Lcom/ezjoynetwork/billing/i;->a:Lcom/ezjoynetwork/billing/i;

    if-ne v0, v1, :cond_0

    sget-object v0, Ld/a;->a:Ld/a;

    invoke-virtual {v0, p1}, Ld/a;->a(Lcom/ezjoynetwork/billing/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ld/a;->a:Ld/a;

    iget-object v1, p1, Lcom/ezjoynetwork/billing/q;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/ezjoynetwork/billing/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ld/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ezjoynetwork/billing/q;->a:Lcom/ezjoynetwork/billing/i;

    sget-object v0, Lcom/ezjoynetwork/billing/i;->c:Lcom/ezjoynetwork/billing/i;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Ld/a;->a:Ld/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ld/a;->a(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ld/a;->a:Ld/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld/a;->a(I)V

    goto :goto_0
.end method
