.class public Lcom/MindStormStudios/OhSheep/OhSheep;
.super Ljava/lang/Object;
.source "OhSheep.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/MindStormStudios/OhSheep/OhSheep;->context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public GetPackageName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 21
    iget-object v1, p0, Lcom/MindStormStudios/OhSheep/OhSheep;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/MindStormStudios/OhSheep/OhSheep;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "installer":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 24
    const-string v0, ""

    .line 26
    .end local v0    # "installer":Ljava/lang/String;
    :cond_14
    return-object v0
.end method
