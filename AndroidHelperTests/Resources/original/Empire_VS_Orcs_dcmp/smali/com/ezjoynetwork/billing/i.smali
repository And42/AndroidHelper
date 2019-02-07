.class public final enum Lcom/ezjoynetwork/billing/i;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/ezjoynetwork/billing/i;

.field public static final enum b:Lcom/ezjoynetwork/billing/i;

.field public static final enum c:Lcom/ezjoynetwork/billing/i;

.field private static final synthetic d:[Lcom/ezjoynetwork/billing/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ezjoynetwork/billing/i;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/ezjoynetwork/billing/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ezjoynetwork/billing/i;->a:Lcom/ezjoynetwork/billing/i;

    new-instance v0, Lcom/ezjoynetwork/billing/i;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/ezjoynetwork/billing/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ezjoynetwork/billing/i;->b:Lcom/ezjoynetwork/billing/i;

    new-instance v0, Lcom/ezjoynetwork/billing/i;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/ezjoynetwork/billing/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ezjoynetwork/billing/i;->c:Lcom/ezjoynetwork/billing/i;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ezjoynetwork/billing/i;

    sget-object v1, Lcom/ezjoynetwork/billing/i;->a:Lcom/ezjoynetwork/billing/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ezjoynetwork/billing/i;->b:Lcom/ezjoynetwork/billing/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ezjoynetwork/billing/i;->c:Lcom/ezjoynetwork/billing/i;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ezjoynetwork/billing/i;->d:[Lcom/ezjoynetwork/billing/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/ezjoynetwork/billing/i;
    .locals 2

    invoke-static {}, Lcom/ezjoynetwork/billing/i;->values()[Lcom/ezjoynetwork/billing/i;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/ezjoynetwork/billing/i;->b:Lcom/ezjoynetwork/billing/i;

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ezjoynetwork/billing/i;
    .locals 1

    const-class v0, Lcom/ezjoynetwork/billing/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ezjoynetwork/billing/i;

    return-object v0
.end method

.method public static values()[Lcom/ezjoynetwork/billing/i;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ezjoynetwork/billing/i;->d:[Lcom/ezjoynetwork/billing/i;

    array-length v1, v0

    new-array v2, v1, [Lcom/ezjoynetwork/billing/i;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
