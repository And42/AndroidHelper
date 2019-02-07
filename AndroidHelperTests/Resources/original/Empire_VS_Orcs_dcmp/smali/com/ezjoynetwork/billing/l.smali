.class public final Lcom/ezjoynetwork/billing/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Lcom/ezjoynetwork/billing/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "productId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "purchaseTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ezjoynetwork/billing/l;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ezjoynetwork/billing/m;

    invoke-direct {v0, p0, p1}, Lcom/ezjoynetwork/billing/m;-><init>(Lcom/ezjoynetwork/billing/l;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ezjoynetwork/billing/l;->c:Lcom/ezjoynetwork/billing/m;

    :try_start_0
    iget-object v0, p0, Lcom/ezjoynetwork/billing/l;->c:Lcom/ezjoynetwork/billing/m;

    invoke-virtual {v0}, Lcom/ezjoynetwork/billing/m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ezjoynetwork/billing/l;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "PurchaseDatabase"

    const-string v1, "SQLiteException: unable to open database file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/ezjoynetwork/billing/i;J)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "productId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {p3}, Lcom/ezjoynetwork/billing/i;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "purchaseTime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/ezjoynetwork/billing/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "record"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/billing/l;->c:Lcom/ezjoynetwork/billing/m;

    invoke-virtual {v0}, Lcom/ezjoynetwork/billing/m;->close()V

    return-void
.end method

.method public final a(Lcom/ezjoynetwork/billing/q;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ezjoynetwork/billing/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ezjoynetwork/billing/l;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "record"

    sget-object v2, Lcom/ezjoynetwork/billing/l;->a:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v9, [Ljava/lang/String;

    iget-object v6, p1, Lcom/ezjoynetwork/billing/q;->d:Ljava/lang/String;

    aput-object v6, v4, v10

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v1, p1, Lcom/ezjoynetwork/billing/q;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/ezjoynetwork/billing/q;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/ezjoynetwork/billing/q;->a:Lcom/ezjoynetwork/billing/i;

    iget-wide v4, p1, Lcom/ezjoynetwork/billing/q;->e:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ezjoynetwork/billing/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ezjoynetwork/billing/i;J)V

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    iget-object v1, p1, Lcom/ezjoynetwork/billing/q;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/ezjoynetwork/billing/q;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/ezjoynetwork/billing/q;->a:Lcom/ezjoynetwork/billing/i;

    iget-wide v4, p1, Lcom/ezjoynetwork/billing/q;->e:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ezjoynetwork/billing/l;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ezjoynetwork/billing/i;J)V

    move v0, v10

    goto :goto_0
.end method
