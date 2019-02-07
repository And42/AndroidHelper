.class public final Lcom/ezjoynetwork/billing/o;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ezjoynetwork/billing/n;


# direct methods
.method public static a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/billing/o;->a:Lcom/ezjoynetwork/billing/n;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ezjoynetwork/billing/o;->a:Lcom/ezjoynetwork/billing/n;

    invoke-virtual {v0, p0, p1}, Lcom/ezjoynetwork/billing/n;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/ezjoynetwork/billing/g;Lcom/ezjoynetwork/billing/j;)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/billing/o;->a:Lcom/ezjoynetwork/billing/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/billing/o;->a:Lcom/ezjoynetwork/billing/n;

    invoke-virtual {v0, p1, p2}, Lcom/ezjoynetwork/billing/n;->a(Lcom/ezjoynetwork/billing/g;Lcom/ezjoynetwork/billing/j;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Lcom/ezjoynetwork/billing/n;)V
    .locals 2

    const-class v0, Lcom/ezjoynetwork/billing/o;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/ezjoynetwork/billing/o;->a:Lcom/ezjoynetwork/billing/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lcom/ezjoynetwork/billing/q;)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/billing/o;->a:Lcom/ezjoynetwork/billing/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/billing/o;->a:Lcom/ezjoynetwork/billing/n;

    invoke-virtual {v0, p0}, Lcom/ezjoynetwork/billing/n;->a(Lcom/ezjoynetwork/billing/q;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/billing/o;->a:Lcom/ezjoynetwork/billing/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/billing/o;->a:Lcom/ezjoynetwork/billing/n;

    invoke-virtual {v0, p0}, Lcom/ezjoynetwork/billing/n;->a(Z)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Lcom/ezjoynetwork/billing/n;)V
    .locals 2

    const-class v0, Lcom/ezjoynetwork/billing/o;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/ezjoynetwork/billing/o;->a:Lcom/ezjoynetwork/billing/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
