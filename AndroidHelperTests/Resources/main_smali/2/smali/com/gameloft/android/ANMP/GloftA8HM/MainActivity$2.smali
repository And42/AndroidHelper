.class Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->a()V
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

    .line 2210
    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$2;->a:Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2213
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$2;->a:Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->moveTaskToBack(Z)Z

    return-void
.end method
