.class public final Ld/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ld/a;


# instance fields
.field private b:Lb/a;

.field private c:Lcom/ezjoynetwork/billing/k;

.field private d:Lcom/ezjoynetwork/billing/BillingService;

.field private e:Lcom/ezjoynetwork/billing/l;

.field private f:I

.field private g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ld/a;->a:Ld/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ld/a;->b:Lb/a;

    const/4 v0, -0x1

    iput v0, p0, Ld/a;->f:I

    return-void
.end method

.method static synthetic a(Ld/a;)Lb/a;
    .locals 1

    iget-object v0, p0, Ld/a;->b:Lb/a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ld/a;->b:Lb/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a;->b:Lb/a;

    invoke-virtual {v0}, Lb/a;->c()V

    iput-object v1, p0, Ld/a;->b:Lb/a;

    :cond_0
    iget-object v0, p0, Ld/a;->c:Lcom/ezjoynetwork/billing/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld/a;->c:Lcom/ezjoynetwork/billing/k;

    invoke-static {v0}, Lcom/ezjoynetwork/billing/o;->b(Lcom/ezjoynetwork/billing/n;)V

    iput-object v1, p0, Ld/a;->c:Lcom/ezjoynetwork/billing/k;

    :cond_1
    iget-object v0, p0, Ld/a;->e:Lcom/ezjoynetwork/billing/l;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld/a;->e:Lcom/ezjoynetwork/billing/l;

    invoke-virtual {v0}, Lcom/ezjoynetwork/billing/l;->a()V

    iput-object v1, p0, Ld/a;->e:Lcom/ezjoynetwork/billing/l;

    :cond_2
    iget-object v0, p0, Ld/a;->d:Lcom/ezjoynetwork/billing/BillingService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ld/a;->d:Lcom/ezjoynetwork/billing/BillingService;

    invoke-virtual {v0}, Lcom/ezjoynetwork/billing/BillingService;->b()V

    iput-object v1, p0, Ld/a;->d:Lcom/ezjoynetwork/billing/BillingService;

    :cond_3
    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Ld/a;->f:I

    return-void
.end method

.method public final a(II)V
    .locals 4

    const/4 v3, 0x1

    iget v0, p0, Ld/a;->f:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Ld/a;->d:Lcom/ezjoynetwork/billing/BillingService;

    iget-object v1, p0, Ld/a;->g:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ezjoynetwork/billing/BillingService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    invoke-virtual {v0, v3}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->showDialog(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Ld/a;->f:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->showDialog(I)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 8

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Lb/a;

    invoke-static {}, Lcom/ezjoynetwork/helper/AppUtils;->getAID()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f050002

    const v4, 0x7f050003

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lb/a;-><init>(Landroid/app/Activity;Ljava/lang/String;IIIII)V

    iput-object v0, p0, Ld/a;->b:Lb/a;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ld/a;->g:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    move v0, v1

    :cond_0
    if-eq v0, v1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v3, Ld/f;

    invoke-direct {v3, p0, v0, v1}, Ld/f;-><init>(Ld/a;II)V

    invoke-virtual {v2, v3}, Lcom/ezjoynetwork/render/GameActivity;->runOnRenderThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Ld/a;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/ezjoynetwork/billing/q;)Z
    .locals 1

    iget-object v0, p0, Ld/a;->e:Lcom/ezjoynetwork/billing/l;

    invoke-virtual {v0, p1}, Lcom/ezjoynetwork/billing/l;->a(Lcom/ezjoynetwork/billing/q;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ld/a;->b:Lb/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Ld/b;

    invoke-direct {v1, p0}, Ld/b;-><init>(Ld/a;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Lcom/ezjoynetwork/billing/k;

    invoke-direct {v0, p1}, Lcom/ezjoynetwork/billing/k;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ld/a;->c:Lcom/ezjoynetwork/billing/k;

    new-instance v0, Lcom/ezjoynetwork/billing/BillingService;

    invoke-direct {v0}, Lcom/ezjoynetwork/billing/BillingService;-><init>()V

    iput-object v0, p0, Ld/a;->d:Lcom/ezjoynetwork/billing/BillingService;

    iget-object v0, p0, Ld/a;->d:Lcom/ezjoynetwork/billing/BillingService;

    invoke-virtual {v0, p1}, Lcom/ezjoynetwork/billing/BillingService;->a(Landroid/content/Context;)V

    iget-object v0, p0, Ld/a;->c:Lcom/ezjoynetwork/billing/k;

    invoke-static {v0}, Lcom/ezjoynetwork/billing/o;->a(Lcom/ezjoynetwork/billing/n;)V

    new-instance v0, Lcom/ezjoynetwork/billing/l;

    invoke-direct {v0, p1}, Lcom/ezjoynetwork/billing/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ld/a;->e:Lcom/ezjoynetwork/billing/l;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "empirevsorcs_001"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "empirevsorcs_002"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "empirevsorcs_003"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "empirevsorcs_004"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "empirevsorcs_005"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "empirevsorcs_006"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "empirevsorcs_007"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "empirevsorcs_008"

    aput-object v2, v0, v1

    iput-object v0, p0, Ld/a;->g:[Ljava/lang/String;

    iget-object v0, p0, Ld/a;->d:Lcom/ezjoynetwork/billing/BillingService;

    invoke-virtual {v0}, Lcom/ezjoynetwork/billing/BillingService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Ld/a;->f:I

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Ld/a;->b:Lb/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Ld/c;

    invoke-direct {v1, p0}, Ld/c;-><init>(Ld/a;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Ld/a;->b:Lb/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Ld/d;

    invoke-direct {v1, p0}, Ld/d;-><init>(Ld/a;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Ld/a;->b:Lb/a;

    invoke-virtual {v0}, Lb/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    new-instance v1, Ld/e;

    invoke-direct {v1, p0}, Ld/e;-><init>(Ld/a;)V

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Ld/a;->b:Lb/a;

    invoke-virtual {v0}, Lb/a;->b()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Ld/a;->b:Lb/a;

    invoke-virtual {v0}, Lb/a;->a()Z

    move-result v0

    return v0
.end method
