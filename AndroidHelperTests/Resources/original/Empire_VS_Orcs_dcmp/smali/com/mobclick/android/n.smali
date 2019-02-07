.class final Lcom/mobclick/android/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclick/android/n;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mobclick/android/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobclick/android/n;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    new-instance v0, Lcom/mobclick/android/f;

    iget-object v1, p0, Lcom/mobclick/android/n;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobclick/android/n;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobclick/android/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/mobclick/android/r;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mobclick/android/n;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/mobclick/android/r;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-object v6, p0, Lcom/mobclick/android/n;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/mobclick/android/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mobclick/android/f;->a()V

    return-void
.end method
