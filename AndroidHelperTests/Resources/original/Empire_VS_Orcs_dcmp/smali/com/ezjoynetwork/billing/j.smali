.class public final enum Lcom/ezjoynetwork/billing/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/ezjoynetwork/billing/j;

.field public static final enum b:Lcom/ezjoynetwork/billing/j;

.field public static final enum c:Lcom/ezjoynetwork/billing/j;

.field public static final enum d:Lcom/ezjoynetwork/billing/j;

.field public static final enum e:Lcom/ezjoynetwork/billing/j;

.field public static final enum f:Lcom/ezjoynetwork/billing/j;

.field public static final enum g:Lcom/ezjoynetwork/billing/j;

.field private static final synthetic h:[Lcom/ezjoynetwork/billing/j;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ezjoynetwork/billing/j;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lcom/ezjoynetwork/billing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ezjoynetwork/billing/j;->a:Lcom/ezjoynetwork/billing/j;

    new-instance v0, Lcom/ezjoynetwork/billing/j;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/ezjoynetwork/billing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ezjoynetwork/billing/j;->b:Lcom/ezjoynetwork/billing/j;

    new-instance v0, Lcom/ezjoynetwork/billing/j;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/ezjoynetwork/billing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ezjoynetwork/billing/j;->c:Lcom/ezjoynetwork/billing/j;

    new-instance v0, Lcom/ezjoynetwork/billing/j;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/ezjoynetwork/billing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ezjoynetwork/billing/j;->d:Lcom/ezjoynetwork/billing/j;

    new-instance v0, Lcom/ezjoynetwork/billing/j;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lcom/ezjoynetwork/billing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ezjoynetwork/billing/j;->e:Lcom/ezjoynetwork/billing/j;

    new-instance v0, Lcom/ezjoynetwork/billing/j;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ezjoynetwork/billing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ezjoynetwork/billing/j;->f:Lcom/ezjoynetwork/billing/j;

    new-instance v0, Lcom/ezjoynetwork/billing/j;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ezjoynetwork/billing/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ezjoynetwork/billing/j;->g:Lcom/ezjoynetwork/billing/j;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ezjoynetwork/billing/j;

    sget-object v1, Lcom/ezjoynetwork/billing/j;->a:Lcom/ezjoynetwork/billing/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ezjoynetwork/billing/j;->b:Lcom/ezjoynetwork/billing/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ezjoynetwork/billing/j;->c:Lcom/ezjoynetwork/billing/j;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ezjoynetwork/billing/j;->d:Lcom/ezjoynetwork/billing/j;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ezjoynetwork/billing/j;->e:Lcom/ezjoynetwork/billing/j;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ezjoynetwork/billing/j;->f:Lcom/ezjoynetwork/billing/j;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ezjoynetwork/billing/j;->g:Lcom/ezjoynetwork/billing/j;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ezjoynetwork/billing/j;->h:[Lcom/ezjoynetwork/billing/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/ezjoynetwork/billing/j;
    .locals 2

    invoke-static {}, Lcom/ezjoynetwork/billing/j;->values()[Lcom/ezjoynetwork/billing/j;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/ezjoynetwork/billing/j;->g:Lcom/ezjoynetwork/billing/j;

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ezjoynetwork/billing/j;
    .locals 1

    const-class v0, Lcom/ezjoynetwork/billing/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ezjoynetwork/billing/j;

    return-object v0
.end method

.method public static values()[Lcom/ezjoynetwork/billing/j;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ezjoynetwork/billing/j;->h:[Lcom/ezjoynetwork/billing/j;

    array-length v1, v0

    new-array v2, v1, [Lcom/ezjoynetwork/billing/j;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
