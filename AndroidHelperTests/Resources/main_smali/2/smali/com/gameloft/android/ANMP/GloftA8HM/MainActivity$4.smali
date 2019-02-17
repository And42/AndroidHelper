.class Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;


# direct methods
.method constructor <init>(Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;Z)V
    .locals 0

    .line 2346
    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$4;->b:Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;

    iput-boolean p2, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2349
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$4;->b:Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;

    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$4;->a:Z

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->access$000(Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;Z)V

    return-void
.end method
