.class public final Lcom/google/ads/at;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/ads/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/ads/internal/a;->a:Lcom/google/ads/util/f;

    invoke-interface {v0}, Lcom/google/ads/util/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/a;

    sput-object v0, Lcom/google/ads/at;->a:Lcom/google/ads/internal/a;

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/ads/at$a;

    invoke-direct {v1, p0}, Lcom/google/ads/at$a;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/ads/at;->a(Landroid/content/Context;JLandroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/ads/at$1;

    invoke-direct {v1, p0}, Lcom/google/ads/at$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Landroid/content/Context;JLandroid/content/SharedPreferences;)Z
    .locals 4

    const-string v0, "drt"

    invoke-interface {p3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "drt_ts"

    invoke-interface {p3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "drt_ts"

    const-wide/16 v1, 0x0

    invoke-interface {p3, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
