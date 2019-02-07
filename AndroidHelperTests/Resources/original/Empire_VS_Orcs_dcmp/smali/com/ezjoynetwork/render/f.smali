.class final Lcom/ezjoynetwork/render/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ezjoynetwork/render/GameGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/ezjoynetwork/render/GameGLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/ezjoynetwork/render/f;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ezjoynetwork/render/f;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$0(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/f;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$0(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/f;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$0(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$1()Lcom/ezjoynetwork/render/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/ezjoynetwork/render/f;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$0(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ezjoynetwork/render/f;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v1}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$0(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$1()Lcom/ezjoynetwork/render/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ezjoynetwork/render/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ezjoynetwork/render/f;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$0(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$1()Lcom/ezjoynetwork/render/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$2()Lcom/ezjoynetwork/render/GameGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/ezjoynetwork/render/f;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v1}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$0(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const-string v0, "GLSurfaceView"

    const-string v1, "showSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ezjoynetwork/render/f;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$0(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ezjoynetwork/render/f;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$0(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$1()Lcom/ezjoynetwork/render/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$2()Lcom/ezjoynetwork/render/GameGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/ezjoynetwork/render/f;->a:Lcom/ezjoynetwork/render/GameGLSurfaceView;

    invoke-static {v1}, Lcom/ezjoynetwork/render/GameGLSurfaceView;->access$0(Lcom/ezjoynetwork/render/GameGLSurfaceView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const-string v0, "GLSurfaceView"

    const-string v1, "HideSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
