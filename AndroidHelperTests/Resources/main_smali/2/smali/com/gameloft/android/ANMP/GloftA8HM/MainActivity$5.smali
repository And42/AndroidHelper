.class final Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$5;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->canReach(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2565
    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2572
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$5;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2573
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 2574
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 2575
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v2, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->l:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2578
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2586
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->l:Ljava/lang/Boolean;

    .line 2589
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
