.class final Lcom/mobclick/android/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Lcom/mobclick/android/b;

.field private c:Landroid/content/Context;

.field private d:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mobclick/android/q;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/mobclick/android/b;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mobclick/android/b;->a()Lcom/mobclick/android/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclick/android/q;->b:Lcom/mobclick/android/b;

    iput-object p2, p0, Lcom/mobclick/android/q;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobclick/android/q;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobclick/android/q;->d:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclick/android/q;->b:Lcom/mobclick/android/b;

    iget-object v1, p0, Lcom/mobclick/android/q;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobclick/android/q;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/mobclick/android/b;->a(Lcom/mobclick/android/b;Landroid/content/Context;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobclick/android/q;->d:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "online_config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclick/android/q;->b:Lcom/mobclick/android/b;

    iget-object v1, p0, Lcom/mobclick/android/q;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobclick/android/q;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/mobclick/android/b;->b(Lcom/mobclick/android/b;Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred when sending message."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/mobclick/android/q;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/mobclick/android/q;->b:Lcom/mobclick/android/b;

    iget-object v2, p0, Lcom/mobclick/android/q;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobclick/android/q;->d:Lorg/json/JSONObject;

    invoke-static {v0, v2, v3}, Lcom/mobclick/android/b;->c(Lcom/mobclick/android/b;Landroid/content/Context;Lorg/json/JSONObject;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method
