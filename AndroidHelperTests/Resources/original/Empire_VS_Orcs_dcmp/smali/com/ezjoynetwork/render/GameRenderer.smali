.class public Lcom/ezjoynetwork/render/GameRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final NANOSECONDSPERMINISECOND:J = 0xf4240L

.field private static final NANOSECONDSPERSECOND:J = 0x3b9aca00L

.field private static animationInterval:J


# instance fields
.field private last:J

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0xfe502a

    sput-wide v0, Lcom/ezjoynetwork/render/GameRenderer;->animationInterval:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeInit(II)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method private static native nativeKeyDown(I)Z
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeRender()V
.end method

.method private static native nativeTouchesBegin(IFF)V
.end method

.method private static native nativeTouchesCancel([I[F[F)V
.end method

.method private static native nativeTouchesEnd(IFF)V
.end method

.method private static native nativeTouchesMove([I[F[F)V
.end method

.method public static setAnimationInterval(D)V
    .locals 2

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, p0

    double-to-long v0, v0

    sput-wide v0, Lcom/ezjoynetwork/render/GameRenderer;->animationInterval:J

    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/ezjoynetwork/render/GameRenderer;->nativeGetContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionCancel([I[F[F)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/ezjoynetwork/render/GameRenderer;->nativeTouchesCancel([I[F[F)V

    return-void
.end method

.method public handleActionDown(IFF)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/ezjoynetwork/render/GameRenderer;->nativeTouchesBegin(IFF)V

    return-void
.end method

.method public handleActionMove([I[F[F)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/ezjoynetwork/render/GameRenderer;->nativeTouchesMove([I[F[F)V

    return-void
.end method

.method public handleActionUp(IFF)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/ezjoynetwork/render/GameRenderer;->nativeTouchesEnd(IFF)V

    return-void
.end method

.method public handleDeleteBackward()V
    .locals 0

    invoke-static {}, Lcom/ezjoynetwork/render/GameRenderer;->nativeDeleteBackward()V

    return-void
.end method

.method public handleInsertText(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/ezjoynetwork/render/GameRenderer;->nativeInsertText(Ljava/lang/String;)V

    return-void
.end method

.method public handleKeyDown(I)V
    .locals 0

    invoke-static {p1}, Lcom/ezjoynetwork/render/GameRenderer;->nativeKeyDown(I)Z

    return-void
.end method

.method public handleOnPause()V
    .locals 0

    invoke-static {}, Lcom/ezjoynetwork/render/GameRenderer;->nativeOnPause()V

    return-void
.end method

.method public handleOnResume()V
    .locals 0

    invoke-static {}, Lcom/ezjoynetwork/render/GameRenderer;->nativeOnResume()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ezjoynetwork/render/GameRenderer;->last:J

    sub-long v2, v0, v2

    invoke-static {}, Lcom/ezjoynetwork/render/GameRenderer;->nativeRender()V

    sget-wide v4, Lcom/ezjoynetwork/render/GameRenderer;->animationInterval:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    :try_start_0
    sget-wide v4, Lcom/ezjoynetwork/render/GameRenderer;->animationInterval:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/ezjoynetwork/render/GameRenderer;->last:J

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    iget v0, p0, Lcom/ezjoynetwork/render/GameRenderer;->screenWidth:I

    iget v1, p0, Lcom/ezjoynetwork/render/GameRenderer;->screenHeight:I

    invoke-static {v0, v1}, Lcom/ezjoynetwork/render/GameRenderer;->nativeInit(II)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ezjoynetwork/render/GameRenderer;->last:J

    return-void
.end method

.method public setScreenWidthAndHeight(II)V
    .locals 0

    iput p1, p0, Lcom/ezjoynetwork/render/GameRenderer;->screenWidth:I

    iput p2, p0, Lcom/ezjoynetwork/render/GameRenderer;->screenHeight:I

    return-void
.end method
