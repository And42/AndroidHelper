.class public Lcom/ezjoynetwork/empirevsorcs/GameApp;
.super Lcom/ezjoynetwork/render/GameActivity;


# static fields
.field public static a:Lcom/ezjoynetwork/empirevsorcs/GameApp;


# instance fields
.field final b:Lc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EmpireVsOrcs"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/ezjoynetwork/render/GameActivity;-><init>()V

    sput-object p0, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a:Lcom/ezjoynetwork/empirevsorcs/GameApp;

    new-instance v0, Lc/i;

    const-string v1, "com.ezjoynetwork.empirevsorcs"

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lc/i;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/ezjoynetwork/empirevsorcs/GameApp;->b:Lc/i;

    return-void
.end method

.method private a(II)Landroid/app/Dialog;
    .locals 5

    const v0, 0x7f040009

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%lang%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%region%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%lang%"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "%region%"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x108008a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f040008

    new-instance v4, Lcom/ezjoynetwork/empirevsorcs/a;

    invoke-direct {v4, p0, v0}, Lcom/ezjoynetwork/empirevsorcs/a;-><init>(Lcom/ezjoynetwork/empirevsorcs/GameApp;Landroid/net/Uri;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ezjoynetwork/render/GameActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/ezjoynetwork/render/GameActivity;->setPackageName(Ljava/lang/String;)V

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->setContentView(I)V

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ezjoynetwork/render/GameGLSurfaceView;

    const/high16 v1, 0x7f050000

    invoke-virtual {p0, v1}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->setTextField(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->setGLView(Lcom/ezjoynetwork/render/GameGLSurfaceView;)V

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    sput-object v0, Ld/a;->a:Ld/a;

    invoke-virtual {v0, p0}, Ld/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f040006

    const v1, 0x7f040007

    invoke-direct {p0, v0, v1}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f040004

    const v1, 0x7f040005

    invoke-direct {p0, v0, v1}, Lcom/ezjoynetwork/empirevsorcs/GameApp;->a(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
