.class final Lcom/mobclick/android/h;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/mobclick/android/f;


# direct methods
.method constructor <init>(Lcom/mobclick/android/f;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclick/android/h;->a:Lcom/mobclick/android/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mobclick/android/h;->a:Lcom/mobclick/android/f;

    invoke-static {v0}, Lcom/mobclick/android/f;->d(Lcom/mobclick/android/f;)I

    move-result v0

    sget v1, Lcom/mobclick/android/i;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mobclick/android/h;->a:Lcom/mobclick/android/f;

    invoke-static {v0}, Lcom/mobclick/android/f;->e(Lcom/mobclick/android/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclick/android/h;->a:Lcom/mobclick/android/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mobclick/android/f;->b(Lcom/mobclick/android/f;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mobclick/android/h;->a:Lcom/mobclick/android/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mobclick/android/f;->b(Lcom/mobclick/android/f;Z)V

    goto :goto_0
.end method
