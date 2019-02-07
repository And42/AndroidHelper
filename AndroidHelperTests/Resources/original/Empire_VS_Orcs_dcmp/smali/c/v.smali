.class final Lc/v;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lc/i;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lc/w;


# direct methods
.method constructor <init>(Lc/i;Ljava/lang/String;Ljava/lang/String;Lc/w;)V
    .locals 0

    iput-object p1, p0, Lc/v;->a:Lc/i;

    iput-object p2, p0, Lc/v;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/v;->c:Ljava/lang/String;

    iput-object p4, p0, Lc/v;->d:Lc/w;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lc/v;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lc/v;->c:Ljava/lang/String;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v8, v1, [B

    iget-object v1, p0, Lc/v;->d:Lc/w;

    long-to-int v2, v3

    invoke-virtual {v1, v2}, Lc/w;->a(I)V

    move v1, v0

    :goto_0
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_0

    iget-object v9, p0, Lc/v;->a:Lc/i;

    invoke-virtual {v9}, Lc/i;->c()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lc/v;->a:Lc/i;

    invoke-virtual {v0}, Lc/i;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/v;->d:Lc/w;

    invoke-virtual {v0, v6}, Lc/w;->a(Ljava/io/File;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v2}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v2, v1

    const-wide/16 v9, 0x0

    cmp-long v1, v3, v9

    if-lez v1, :cond_4

    int-to-float v1, v2

    long-to-float v9, v3

    div-float/2addr v1, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v1, v9

    float-to-int v1, v1

    if-le v1, v0, :cond_4

    iget-object v0, p0, Lc/v;->d:Lc/w;

    invoke-virtual {v0, v1, v2}, Lc/w;->a(II)V

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lc/v;->d:Lc/w;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lc/v;->d:Lc/w;

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lc/v;->d:Lc/w;

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method
