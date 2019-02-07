.class final Lc/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/i;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lc/d;


# direct methods
.method constructor <init>(Lc/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc/d;)V
    .locals 0

    iput-object p1, p0, Lc/m;->a:Lc/i;

    iput-object p2, p0, Lc/m;->b:Landroid/content/Context;

    iput-object p3, p0, Lc/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lc/m;->d:Ljava/lang/String;

    iput-object p5, p0, Lc/m;->e:Lc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lc/m;)Lc/i;
    .locals 1

    iget-object v0, p0, Lc/m;->a:Lc/i;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lc/m;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lc/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lc/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lc/n;

    iget-object v3, p0, Lc/m;->e:Lc/d;

    iget-object v4, p0, Lc/m;->b:Landroid/content/Context;

    iget-object v5, p0, Lc/m;->c:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4, v5}, Lc/n;-><init>(Lc/m;Lc/d;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lc/p;

    invoke-direct {v2, p0}, Lc/p;-><init>(Lc/m;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
