.class public Lcom/google/ads/m;
.super Lcom/google/ads/util/i;


# static fields
.field private static final d:Lcom/google/ads/m;


# instance fields
.field public final a:Lcom/google/ads/util/i$c;

.field public final b:Lcom/google/ads/util/i$b;

.field public final c:Lcom/google/ads/util/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/m;

    invoke-direct {v0}, Lcom/google/ads/m;-><init>()V

    sput-object v0, Lcom/google/ads/m;->d:Lcom/google/ads/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/google/ads/util/i;-><init>()V

    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "marketPackages"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->a:Lcom/google/ads/util/i$c;

    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v1, "constants"

    new-instance v2, Lcom/google/ads/m$a;

    invoke-direct {v2}, Lcom/google/ads/m$a;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$b;

    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v1, "uiHandler"

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->c:Lcom/google/ads/util/i$b;

    return-void
.end method

.method public static a()Lcom/google/ads/m;
    .locals 1

    sget-object v0, Lcom/google/ads/m;->d:Lcom/google/ads/m;

    return-object v0
.end method
