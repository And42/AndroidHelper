.class public Lcom/mindstormstudios/tinybuilders/UnityPlayerNativeActivity;
.super Lcom/mindstormstudios/tinybuilders/UnityPlayerActivity;
.source "UnityPlayerNativeActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mindstormstudios/tinybuilders/UnityPlayerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    const-string v0, "Unity"

    const-string v1, "UnityPlayerNativeActivity has been deprecated, please update your AndroidManifest to use UnityPlayerActivity instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-super {p0, p1}, Lcom/mindstormstudios/tinybuilders/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method
