.class Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;)V
    .locals 0

    .line 1884
    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$1;->a:Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1888
    iget-object p1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$1;->a:Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;

    new-instance v0, Lcom/gameloft/android/ANMP/GloftA8HM/GLUtils/CutoutHelper;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gameloft/android/ANMP/GloftA8HM/GLUtils/CutoutHelper;-><init>(Landroid/view/DisplayCutout;)V

    iput-object v0, p1, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->b:Lcom/gameloft/android/ANMP/GloftA8HM/GLUtils/CutoutHelper;

    return-object p2
.end method
