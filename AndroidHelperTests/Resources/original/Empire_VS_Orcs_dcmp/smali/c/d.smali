.class public final Lc/d;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lc/d;->a:I

    iput-object v0, p0, Lc/d;->b:Ljava/lang/String;

    iput v1, p0, Lc/d;->c:I

    iput-object v0, p0, Lc/d;->d:Ljava/lang/String;

    iput v1, p0, Lc/d;->e:I

    iput-object v0, p0, Lc/d;->f:Ljava/lang/String;

    iput-object v0, p0, Lc/d;->g:Ljava/lang/String;

    iput-object v0, p0, Lc/d;->h:Ljava/lang/String;

    iput-object v0, p0, Lc/d;->i:Ljava/lang/String;

    iput v2, p0, Lc/d;->j:I

    iput v1, p0, Lc/d;->k:I

    iput v2, p0, Lc/d;->l:I

    iput-object v0, p0, Lc/d;->m:Ljava/lang/String;

    iput-object v0, p0, Lc/d;->n:Ljava/lang/String;

    iput v2, p0, Lc/d;->o:I

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lc/d;
    .locals 2

    new-instance v0, Lc/d;

    invoke-direct {v0}, Lc/d;-><init>()V

    :try_start_0
    const-string v1, "AppID"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lc/d;->a:I

    const-string v1, "AppName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc/d;->b:Ljava/lang/String;

    const-string v1, "VerCode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lc/d;->c:I

    const-string v1, "VerName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc/d;->d:Ljava/lang/String;

    const-string v1, "UpdateMode"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lc/d;->e:I

    const-string v1, "ApkUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc/d;->f:Ljava/lang/String;

    const-string v1, "MarketUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc/d;->g:Ljava/lang/String;

    const-string v1, "IconUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc/d;->h:Ljava/lang/String;

    const-string v1, "DescUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc/d;->i:Ljava/lang/String;

    const-string v1, "AppType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lc/d;->j:I

    const-string v1, "MinSdkVersion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lc/d;->k:I

    const-string v1, "ShowSeconds"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lc/d;->l:I

    const-string v1, "GameSuggestion"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lc/d;->o:I

    const-string v1, "Package"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc/d;->m:Ljava/lang/String;

    const-string v1, "Activity"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc/d;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
