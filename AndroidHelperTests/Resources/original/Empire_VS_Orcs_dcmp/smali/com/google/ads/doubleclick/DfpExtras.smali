.class public Lcom/google/ads/doubleclick/DfpExtras;
.super Lcom/google/ads/mediation/admob/AdMobAdapterExtras;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/doubleclick/DfpExtras;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/ads/doubleclick/DfpExtras;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/doubleclick/DfpExtras;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/doubleclick/DfpExtras;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    return-object p0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/doubleclick/DfpExtras;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/doubleclick/DfpExtras;

    move-result-object v0

    return-object v0
.end method

.method public clearExtras()Lcom/google/ads/doubleclick/DfpExtras;
    .locals 0

    invoke-super {p0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->clearExtras()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    return-object p0
.end method

.method public bridge synthetic clearExtras()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/doubleclick/DfpExtras;->clearExtras()Lcom/google/ads/doubleclick/DfpExtras;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/doubleclick/DfpExtras;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setExtras(Ljava/util/Map;)Lcom/google/ads/doubleclick/DfpExtras;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    return-object p0
.end method

.method public bridge synthetic setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/ads/doubleclick/DfpExtras;->setExtras(Ljava/util/Map;)Lcom/google/ads/doubleclick/DfpExtras;

    move-result-object v0

    return-object v0
.end method

.method public setPlusOneOptOut(Z)Lcom/google/ads/doubleclick/DfpExtras;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setPlusOneOptOut(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    return-object p0
.end method

.method public bridge synthetic setPlusOneOptOut(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/ads/doubleclick/DfpExtras;->setPlusOneOptOut(Z)Lcom/google/ads/doubleclick/DfpExtras;

    move-result-object v0

    return-object v0
.end method

.method public setPublisherProvidedId(Ljava/lang/String;)Lcom/google/ads/doubleclick/DfpExtras;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/doubleclick/DfpExtras;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setUseExactAdSize(Z)Lcom/google/ads/doubleclick/DfpExtras;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->setUseExactAdSize(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    return-object p0
.end method

.method public bridge synthetic setUseExactAdSize(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/ads/doubleclick/DfpExtras;->setUseExactAdSize(Z)Lcom/google/ads/doubleclick/DfpExtras;

    move-result-object v0

    return-object v0
.end method
