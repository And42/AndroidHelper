.class public Lcom/google/ads/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/d;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "Activity was null while responding to touch gmsg."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "tx"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ty"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "td"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->r:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ak;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/ads/ak;->a(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Could not parse touch parameters from gmsg."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
