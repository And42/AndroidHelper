.class public Lcom/ezjoynetwork/render/GameSound;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_SIMULTANEOUS_STREAMS_DEFAULT:I = 0x5

.field private static final SOUND_PRIORITY:I = 0x1

.field private static final SOUND_QUALITY:I = 0x5

.field private static final SOUND_RATE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "GameSound"


# instance fields
.field private final INVALID_SOUND_ID:I

.field private final INVALID_STREAM_ID:I

.field private mContext:Landroid/content/Context;

.field private mLeftVolume:F

.field private mPathSoundIDMap:Ljava/util/HashMap;

.field private mRightVolume:F

.field private mSoundIdStreamIdMap:Ljava/util/HashMap;

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ezjoynetwork/render/GameSound;->INVALID_SOUND_ID:I

    iput v0, p0, Lcom/ezjoynetwork/render/GameSound;->INVALID_STREAM_ID:I

    iput-object p1, p0, Lcom/ezjoynetwork/render/GameSound;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ezjoynetwork/render/GameSound;->initData()V

    return-void
.end method

.method private static native getSoundResData(Ljava/lang/String;)[B
.end method

.method private initData()V
    .locals 4

    const/4 v3, 0x5

    const/high16 v2, 0x3f800000    # 1.0f

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    invoke-direct {v0, v3, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundPool:Landroid/media/SoundPool;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    iput v2, p0, Lcom/ezjoynetwork/render/GameSound;->mLeftVolume:F

    iput v2, p0, Lcom/ezjoynetwork/render/GameSound;->mRightVolume:F

    return-void
.end method

.method private loadSoundFromBuffer(Ljava/lang/String;[B)I
    .locals 9

    const/4 v7, -0x1

    if-nez p2, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2f

    const/16 v1, 0x5f

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ezjoynetwork/render/GameSound;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    array-length v4, p2

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_0
.end method

.method private loadSoundFromRes(Ljava/lang/String;)I
    .locals 9

    const/4 v7, -0x1

    invoke-static {p1}, Lcom/ezjoynetwork/render/GameSound;->getSoundResData(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2f

    const/16 v1, 0x5f

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ezjoynetwork/render/GameSound;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    array-length v4, v4

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_0
.end method

.method private pauseOrResumeAllEffects(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameSound;->pauseEffect(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameSound;->resumeEffect(I)V

    goto :goto_0
.end method


# virtual methods
.method public createSoundIdFromAsset(Ljava/lang/String;)I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameSound;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-direct {p0, p1}, Lcom/ezjoynetwork/render/GameSound;->loadSoundFromRes(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string v2, "GameSound"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public end()V
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/ezjoynetwork/render/GameSound;->initData()V

    return-void
.end method

.method public getEffectsVolume()F
    .locals 2

    iget v0, p0, Lcom/ezjoynetwork/render/GameSound;->mLeftVolume:F

    iget v1, p0, Lcom/ezjoynetwork/render/GameSound;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public pauseAllEffects()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ezjoynetwork/render/GameSound;->pauseOrResumeAllEffects(Z)V

    return-void
.end method

.method public pauseEffect(I)V
    .locals 3

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->pause(I)V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public playEffect(Ljava/lang/String;Z)I
    .locals 8

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/ezjoynetwork/render/GameSound;->mLeftVolume:F

    iget v3, p0, Lcom/ezjoynetwork/render/GameSound;->mRightVolume:F

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/ezjoynetwork/render/GameSound;->preloadEffect(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/ezjoynetwork/render/GameSound;->playEffect(Ljava/lang/String;Z)I

    goto :goto_1
.end method

.method public preloadEffect(Ljava/lang/String;)I
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ezjoynetwork/render/GameSound;->createSoundIdFromAsset(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public preloadEffect(Ljava/lang/String;[B)I
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ezjoynetwork/render/GameSound;->loadSoundFromBuffer(Ljava/lang/String;[B)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resumeAllEffects()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ezjoynetwork/render/GameSound;->pauseOrResumeAllEffects(Z)V

    return-void
.end method

.method public resumeEffect(I)V
    .locals 3

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->resume(I)V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setEffectsVolume(F)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    :goto_1
    iput v0, p0, Lcom/ezjoynetwork/render/GameSound;->mRightVolume:F

    iput v0, p0, Lcom/ezjoynetwork/render/GameSound;->mLeftVolume:F

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/ezjoynetwork/render/GameSound;->mLeftVolume:F

    iget v4, p0, Lcom/ezjoynetwork/render/GameSound;->mRightVolume:F

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, p1

    goto :goto_0
.end method

.method public stopAllEffects()V
    .locals 2

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameSound;->stopEffect(I)V

    goto :goto_0
.end method

.method public stopEffect(I)V
    .locals 3

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public unloadEffect(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameSound;->mSoundIdStreamIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
