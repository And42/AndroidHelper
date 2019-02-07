.class public Lcom/ezjoynetwork/render/GameGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;


# static fields
.field private static final HANDLER_CLOSE_IME_KEYBOARD:I = 0x3

.field private static final HANDLER_OPEN_IME_KEYBOARD:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final debug:Z

.field private static handler:Landroid/os/Handler;

.field private static mainView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

.field private static textInputWraper:Lcom/ezjoynetwork/render/r;


# instance fields
.field private mRenderer:Lcom/ezjoynetwork/render/GameRenderer;

.field private mTextField:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->initView()V

    return-void
.end method

.method static synthetic access$0(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mTextField:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1()Lcom/ezjoynetwork/render/r;
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->textInputWraper:Lcom/ezjoynetwork/render/r;

    return-object v0
.end method

.method static synthetic access$2()Lcom/ezjoynetwork/render/GameGLSurfaceView;
    .locals 1

    sget-object v0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mainView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Lcom/ezjoynetwork/render/GameRenderer;
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mRenderer:Lcom/ezjoynetwork/render/GameRenderer;

    return-object v0
.end method

.method public static closeIMEKeyboard()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/ezjoynetwork/render/GameGLSurfaceView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private dumpEvent(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v0, 0x0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DOWN"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "UP"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "MOVE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "CANCEL"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "OUTSIDE"

    aput-object v3, v1, v2

    const-string v2, "POINTER_DOWN"

    aput-object v2, v1, v6

    const-string v2, "POINTER_UP"

    aput-object v2, v1, v7

    const/4 v2, 0x7

    const-string v3, "7?"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8?"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9?"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v4, v3, 0xff

    const-string v5, "event ACTION_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v1, v1, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v4, v6, :cond_0

    if-ne v4, v7, :cond_1

    :cond_0
    const-string v1, "(pid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v3, v3, 0x8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_2

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(pid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getContentText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mRenderer:Lcom/ezjoynetwork/render/GameRenderer;

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameRenderer;->getContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openIMEKeyboard()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mainView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-direct {v1}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->getContentText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/ezjoynetwork/render/GameGLSurfaceView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public deleteBackward()V
    .locals 1

    new-instance v0, Lcom/ezjoynetwork/render/m;

    invoke-direct {v0, p0}, Lcom/ezjoynetwork/render/m;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTextField()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mTextField:Landroid/widget/TextView;

    return-object v0
.end method

.method protected initView()V
    .locals 1

    new-instance v0, Lcom/ezjoynetwork/render/GameRenderer;

    invoke-direct {v0}, Lcom/ezjoynetwork/render/GameRenderer;-><init>()V

    iput-object v0, p0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mRenderer:Lcom/ezjoynetwork/render/GameRenderer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mRenderer:Lcom/ezjoynetwork/render/GameRenderer;

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    new-instance v0, Lcom/ezjoynetwork/render/r;

    invoke-direct {v0, p0}, Lcom/ezjoynetwork/render/r;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;)V

    sput-object v0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->textInputWraper:Lcom/ezjoynetwork/render/r;

    new-instance v0, Lcom/ezjoynetwork/render/f;

    invoke-direct {v0, p0}, Lcom/ezjoynetwork/render/f;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;)V

    sput-object v0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->handler:Landroid/os/Handler;

    sput-object p0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mainView:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    return-void
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ezjoynetwork/render/l;

    invoke-direct {v0, p0, p1}, Lcom/ezjoynetwork/render/l;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/ezjoynetwork/render/i;

    invoke-direct {v0, p0, p1}, Lcom/ezjoynetwork/render/i;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;I)V

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    new-instance v0, Lcom/ezjoynetwork/render/j;

    invoke-direct {v0, p0}, Lcom/ezjoynetwork/render/j;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    new-instance v0, Lcom/ezjoynetwork/render/k;

    invoke-direct {v0, p0}, Lcom/ezjoynetwork/render/k;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mRenderer:Lcom/ezjoynetwork/render/GameRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/ezjoynetwork/render/GameRenderer;->setScreenWidthAndHeight(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    new-array v3, v2, [I

    new-array v4, v2, [F

    new-array v5, v2, [F

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    aput v6, v3, v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    aput v6, v4, v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    new-instance v3, Lcom/ezjoynetwork/render/n;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/ezjoynetwork/render/n;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;IFF)V

    invoke-virtual {p0, v3}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    aget v2, v4, v1

    aget v1, v5, v1

    new-instance v3, Lcom/ezjoynetwork/render/o;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/ezjoynetwork/render/o;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;IFF)V

    invoke-virtual {p0, v3}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/ezjoynetwork/render/p;

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/ezjoynetwork/render/p;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;[I[F[F)V

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    new-instance v3, Lcom/ezjoynetwork/render/q;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/ezjoynetwork/render/q;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;IFF)V

    invoke-virtual {p0, v3}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    aget v2, v4, v1

    aget v1, v5, v1

    new-instance v3, Lcom/ezjoynetwork/render/g;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/ezjoynetwork/render/g;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;IFF)V

    invoke-virtual {p0, v3}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_6
    new-instance v0, Lcom/ezjoynetwork/render/h;

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/ezjoynetwork/render/h;-><init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;[I[F[F)V

    invoke-virtual {p0, v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public setTextField(Landroid/widget/TextView;)V
    .locals 2

    iput-object p1, p0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mTextField:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mTextField:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->textInputWraper:Lcom/ezjoynetwork/render/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/GameGLSurfaceView;->mTextField:Landroid/widget/TextView;

    sget-object v1, Lcom/ezjoynetwork/render/GameGLSurfaceView;->textInputWraper:Lcom/ezjoynetwork/render/r;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->requestFocus()Z

    :cond_0
    return-void
.end method
