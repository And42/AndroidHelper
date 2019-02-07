.class public final Lcom/google/ads/au;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I

.field private final e:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/ads/au;->d:I

    iput-object p1, p0, Lcom/google/ads/au;->e:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/ads/au;->a:[B

    iput v0, p0, Lcom/google/ads/au;->c:I

    array-length v0, p2

    iput v0, p0, Lcom/google/ads/au;->b:I

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/google/ads/au;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/ads/au;->a(Ljava/io/OutputStream;I)Lcom/google/ads/au;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/google/ads/au;
    .locals 2

    new-instance v0, Lcom/google/ads/au;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/google/ads/au;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/ads/au;->e:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/ads/au$a;

    invoke-direct {v0}, Lcom/google/ads/au$a;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/au;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/ads/au;->a:[B

    iget v2, p0, Lcom/google/ads/au;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/ads/au;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/au;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/au;->b()V

    :cond_0
    return-void
.end method

.method public final a(B)V
    .locals 3

    iget v0, p0, Lcom/google/ads/au;->c:I

    iget v1, p0, Lcom/google/ads/au;->b:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/ads/au;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/au;->a:[B

    iget v1, p0, Lcom/google/ads/au;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/ads/au;->c:I

    aput-byte p1, v0, v1

    iget v0, p0, Lcom/google/ads/au;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/au;->d:I

    return-void
.end method

.method public final a(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/ads/au;->a(B)V

    return-void
.end method

.method public final a(II)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/ads/av;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/ads/au;->b(I)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/au;->a(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/ads/au;->b(J)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/au;->a(II)V

    invoke-virtual {p0, p2}, Lcom/google/ads/au;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/au;->b(J)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/google/ads/au;->b(I)V

    invoke-virtual {p0, v0}, Lcom/google/ads/au;->a([B)V

    return-void
.end method

.method public final a([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/au;->a([BII)V

    return-void
.end method

.method public final a([BII)V
    .locals 3

    iget v0, p0, Lcom/google/ads/au;->b:I

    iget v1, p0, Lcom/google/ads/au;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/google/ads/au;->a:[B

    iget v1, p0, Lcom/google/ads/au;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/ads/au;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/ads/au;->c:I

    :goto_0
    iget v0, p0, Lcom/google/ads/au;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/ads/au;->d:I

    return-void

    :cond_0
    iget v0, p0, Lcom/google/ads/au;->b:I

    iget v1, p0, Lcom/google/ads/au;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/ads/au;->a:[B

    iget v2, p0, Lcom/google/ads/au;->c:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v1, p2, v0

    sub-int/2addr p3, v0

    iget v2, p0, Lcom/google/ads/au;->b:I

    iput v2, p0, Lcom/google/ads/au;->c:I

    iget v2, p0, Lcom/google/ads/au;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/ads/au;->d:I

    invoke-direct {p0}, Lcom/google/ads/au;->b()V

    iget v0, p0, Lcom/google/ads/au;->b:I

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/au;->a:[B

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/ads/au;->c:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/au;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/ads/au;->a(B)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/ads/au;->a(B)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public final b(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/ads/au;->a(B)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lcom/google/ads/au;->a(B)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method
