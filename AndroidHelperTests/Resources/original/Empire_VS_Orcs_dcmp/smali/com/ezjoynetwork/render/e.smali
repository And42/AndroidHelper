.class final Lcom/ezjoynetwork/render/e;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:[Ljava/lang/String;


# direct methods
.method constructor <init>(II[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ezjoynetwork/render/e;->a:I

    iput p2, p0, Lcom/ezjoynetwork/render/e;->c:I

    array-length v0, p3

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/ezjoynetwork/render/e;->b:I

    iput-object p3, p0, Lcom/ezjoynetwork/render/e;->d:[Ljava/lang/String;

    return-void
.end method
