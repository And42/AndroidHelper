.class public Lcom/ezjoynetwork/render/GameMusic;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "GameMusic"


# instance fields
.field private mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

.field private mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mIsPaused:Z

.field private mLeftVolume:F

.field private mRightVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ezjoynetwork/render/GameMusic;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ezjoynetwork/render/GameMusic;->initData()V

    return-void
.end method

.method private createMediaplayerFromAssets(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget v1, p0, Lcom/ezjoynetwork/render/GameMusic;->mLeftVolume:F

    iget v2, p0, Lcom/ezjoynetwork/render/GameMusic;->mRightVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-direct {p0, p1}, Lcom/ezjoynetwork/render/GameMusic;->loadMusicFromRes(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "GameMusic"

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

.method private createMediaplayerFromBuffer(Ljava/lang/String;[B)Landroid/media/MediaPlayer;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x2f

    const/16 v2, 0x5f

    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ezjoynetwork/render/GameMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    iget v2, p0, Lcom/ezjoynetwork/render/GameMusic;->mLeftVolume:F

    iget v4, p0, Lcom/ezjoynetwork/render/GameMusic;->mRightVolume:F

    invoke-virtual {v1, v2, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static native getMusicResData(Ljava/lang/String;)[B
.end method

.method private initData()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mLeftVolume:F

    iput v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mRightVolume:F

    iput-object v1, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mIsPaused:Z

    iput-object v1, p0, Lcom/ezjoynetwork/render/GameMusic;->mCurrentPath:Ljava/lang/String;

    return-void
.end method

.method private loadMusicFromRes(Ljava/lang/String;)Landroid/media/MediaPlayer;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/ezjoynetwork/render/GameMusic;->getMusicResData(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/16 v2, 0x2f

    const/16 v3, 0x5f

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/ezjoynetwork/render/GameMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    iget v3, p0, Lcom/ezjoynetwork/render/GameMusic;->mLeftVolume:F

    iget v4, p0, Lcom/ezjoynetwork/render/GameMusic;->mRightVolume:F

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public end()V
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/ezjoynetwork/render/GameMusic;->initData()V

    return-void
.end method

.method public getBackgroundVolume()F
    .locals 2

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mLeftVolume:F

    iget v1, p0, Lcom/ezjoynetwork/render/GameMusic;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBackgroundMusicPlaying()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "GameMusic"

    const-string v2, "isBackgroundMusicPlaying: error state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pauseBackgroundMusic()V
    .locals 2

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mIsPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GameMusic"

    const-string v1, "pauseBackgroundMusic: error state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mCurrentPath:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/ezjoynetwork/render/GameMusic;->createMediaplayerFromAssets(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    iput-object p1, p0, Lcom/ezjoynetwork/render/GameMusic;->mCurrentPath:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mIsPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_3
    const/16 v0, 0x2f

    const/16 v1, 0x5f

    :try_start_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    invoke-virtual {v2}, Lcom/ezjoynetwork/render/GameActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v1, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/ezjoynetwork/render/GameMusic;->mLeftVolume:F

    iget v3, p0, Lcom/ezjoynetwork/render/GameMusic;->mRightVolume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iput-object p1, p0, Lcom/ezjoynetwork/render/GameMusic;->mCurrentPath:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GameMusic"

    const-string v1, "playBackgroundMusic: background media player is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v0, "GameMusic"

    const-string v1, "playBackgroundMusic: error state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/ezjoynetwork/render/GameMusic;->createMediaplayerFromAssets(Ljava/lang/String;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    iput-object p1, p0, Lcom/ezjoynetwork/render/GameMusic;->mCurrentPath:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public preloadBackgroundMusic(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mCurrentPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ezjoynetwork/render/GameMusic;->createMediaplayerFromBuffer(Ljava/lang/String;[B)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    iput-object p1, p0, Lcom/ezjoynetwork/render/GameMusic;->mCurrentPath:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public resumeBackgroundMusic()V
    .locals 2

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mIsPaused:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mIsPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GameMusic"

    const-string v1, "resumeBackgroundMusic: error state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rewindBackgroundMusic()V
    .locals 2

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mIsPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GameMusic"

    const-string v1, "rewindBackgroundMusic: error state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundVolume(F)V
    .locals 3

    iput p1, p0, Lcom/ezjoynetwork/render/GameMusic;->mRightVolume:F

    iput p1, p0, Lcom/ezjoynetwork/render/GameMusic;->mLeftVolume:F

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/ezjoynetwork/render/GameMusic;->mLeftVolume:F

    iget v2, p0, Lcom/ezjoynetwork/render/GameMusic;->mRightVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public stopBackgroundMusic()V
    .locals 2

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ezjoynetwork/render/GameMusic;->mIsPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GameMusic"

    const-string v1, "stopBackgroundMusic: error state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
