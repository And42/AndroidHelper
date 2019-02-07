.class public final Lc/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lc/a;


# instance fields
.field private b:Z

.field private c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/a;

    invoke-direct {v0}, Lc/a;-><init>()V

    sput-object v0, Lc/a;->a:Lc/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/a;->c:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    invoke-virtual {v3}, Lcom/ezjoynetwork/render/GameActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    if-nez v0, :cond_0

    invoke-static {p0}, Lc/a;->b(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/io/File;

    sget-object v0, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    array-length v5, v3

    invoke-virtual {v0, v3, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    invoke-virtual {v1}, Lcom/ezjoynetwork/render/GameActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    const-wide/32 v5, -0x65813800

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a(Lc/a;)V
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lc/a;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    :try_start_0
    sget-object v1, Lc/e;->a:Lc/e;

    invoke-virtual {v1}, Lc/e;->a()Ljava/util/List;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a;->b:Z

    :goto_1
    return-void

    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d;

    iget v3, v0, Lc/d;->j:I

    sget-object v4, Lc/i;->a:Lc/i;

    invoke-virtual {v4}, Lc/i;->a()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, v0, Lc/d;->h:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lc/d;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v3, Lc/f;

    invoke-direct {v3}, Lc/f;-><init>()V

    iput-object v0, v3, Lc/f;->a:Lc/d;

    iget-object v4, v3, Lc/f;->a:Lc/d;

    iget-object v4, v4, Lc/d;->m:Ljava/lang/String;

    invoke-static {v4}, Lc/i;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    const/4 v4, 0x0

    iput v4, v3, Lc/f;->d:I

    :goto_2
    iget-object v4, v0, Lc/d;->h:Ljava/lang/String;

    invoke-static {v4}, Lc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lc/f;->b:Ljava/lang/String;

    iget-object v4, v0, Lc/d;->i:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lc/d;->i:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v0, v0, Lc/d;->i:Ljava/lang/String;

    invoke-static {v0}, Lc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lc/f;->c:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lc/a;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    iget-object v5, v3, Lc/f;->a:Lc/d;

    iget v5, v5, Lc/d;->c:I

    if-ge v4, v5, :cond_6

    const/4 v4, 0x1

    iput v4, v3, Lc/f;->d:I

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    iput v4, v3, Lc/f;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method static synthetic b(Lc/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lc/a;->c:Ljava/util/List;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x400

    new-array v2, v1, [B

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    if-lez v4, :cond_0

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lc/b;

    invoke-direct {v0, p0, p1}, Lc/b;-><init>(Lc/a;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lc/b;->start()V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lc/a;->b:Z

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lc/a;->c:Ljava/util/List;

    return-object v0
.end method
