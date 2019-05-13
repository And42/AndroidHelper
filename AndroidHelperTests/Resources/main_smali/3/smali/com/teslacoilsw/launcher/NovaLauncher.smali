.class public Lcom/teslacoilsw/launcher/NovaLauncher;
.super Lcom/android/launcher3/Launcher;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lo/fvy;
.implements Lo/gyb;
.implements Lo/gyd;


# static fields
.field public static AM:Z

.field public static Nl:Z

.field public static final check:Landroid/content/ComponentName;

.field private static e9:Lcom/teslacoilsw/launcher/NovaLauncher;

.field public static final fo:Landroid/content/ComponentName;

.field public static k3:Z


# instance fields
.field private Ba:J

.field private Ch:Z

.field private Dm:Z

.field public E0:Lo/gzo;

.field private E3:Ljava/lang/Runnable;

.field private E4:Lo/hqd;

.field private F0:Lo/hqd;

.field private GH:Lo/gya;

.field public Ge:Lo/hlx;

.field private I6:Z

.field private Ic:Ljava/lang/Runnable;

.field private L7:Lo/hqd;

.field private final L9:Lo/fit;

.field private N:Lo/hqd;

.field private Nn:Lo/fvq;

.field private OA:Z

.field private cL:Lo/hlz;

.field private constructor:Landroid/util/Pair;

.field private eM:Lo/gyc;

.field private g2:Landroid/content/ComponentName;

.field private g6:Ljava/lang/Runnable;

.field private gF:Lo/hqd;

.field private final gtz:Lo/hqd;

.field private hF:Lo/hqd;

.field private ha:J

.field private i4:Z

.field private iM:Landroid/app/Dialog;

.field private instructions:Landroid/content/BroadcastReceiver;

.field private jJ:Lo/gxs;

.field private kh:Landroid/os/HandlerThread;

.field private lC:Landroid/content/ServiceConnection;

.field private length:Z

.field private n1:Z

.field private nA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/teslacoilsw/launcher/NovaLauncher;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.teslacoilsw.launcher"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/teslacoilsw/launcher/NovaLauncher;->fo:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.launcher2.Launcher"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/teslacoilsw/launcher/NovaLauncher;->check:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/teslacoilsw/launcher/NovaLauncher;->Nl:Z

    sput-boolean v0, Lcom/teslacoilsw/launcher/NovaLauncher;->AM:Z

    sput-boolean v0, Lcom/teslacoilsw/launcher/NovaLauncher;->k3:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->nA:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->i4:Z

    iput-boolean v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->OA:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->ha:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ba:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->g2:Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    iput-object v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->GH:Lo/gya;

    iput-boolean v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->length:Z

    iput-boolean v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Dm:Z

    new-instance v3, Lo/fhq;

    invoke-direct {v3, p0}, Lo/fhq;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v3, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->F0:Lo/hqd;

    new-instance v3, Lo/fio;

    invoke-direct {v3, p0}, Lo/fio;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v3, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->hF:Lo/hqd;

    new-instance v3, Lo/fip;

    invoke-direct {v3, p0}, Lo/fip;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v3, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->L7:Lo/hqd;

    new-instance v3, Lo/fhr;

    invoke-direct {v3, p0}, Lo/fhr;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v3, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E4:Lo/hqd;

    iput-boolean v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ch:Z

    iput-object v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->iM:Landroid/app/Dialog;

    new-instance v0, Lo/fhu;

    invoke-direct {v0, p0}, Lo/fhu;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->gtz:Lo/hqd;

    new-instance v0, Lo/hlx;

    invoke-direct {v0}, Lo/hlx;-><init>()V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ge:Lo/hlx;

    new-instance v0, Lo/fit;

    invoke-direct {v0, p0}, Lo/fit;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->L9:Lo/fit;

    iput-object v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->cL:Lo/hlz;

    new-instance v0, Lo/fhy;

    invoke-direct {v0, p0}, Lo/fhy;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->lC:Landroid/content/ServiceConnection;

    iput-object v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->instructions:Landroid/content/BroadcastReceiver;

    new-instance v0, Lo/fia;

    invoke-direct {v0, p0}, Lo/fia;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->N:Lo/hqd;

    new-instance v0, Lo/fic;

    invoke-direct {v0, p0}, Lo/fic;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E3:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->n1:Z

    new-instance v0, Lo/fie;

    invoke-direct {v0, p0}, Lo/fie;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->gF:Lo/hqd;

    new-instance v0, Lo/fif;

    invoke-direct {v0, p0}, Lo/fif;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ic:Ljava/lang/Runnable;

    new-instance v0, Lo/fij;

    invoke-direct {v0, p0}, Lo/fij;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->g6:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->I6:Z

    return-void
.end method

.method public static synthetic CN(Lcom/teslacoilsw/launcher/NovaLauncher;)Lo/hqd;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->gtz:Lo/hqd;

    return-object p0
.end method

.method public static synthetic DC(Lcom/teslacoilsw/launcher/NovaLauncher;)Lo/gxs;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->jJ:Lo/gxs;

    return-object p0
.end method

.method public static synthetic Dc(Lcom/teslacoilsw/launcher/NovaLauncher;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->instructions:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static Dc(Landroid/view/View;)Lcom/android/launcher3/Folder;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/android/launcher3/Folder;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/launcher3/Folder;

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic De(Lcom/teslacoilsw/launcher/NovaLauncher;)Lo/fit;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->L9:Lo/fit;

    return-object p0
.end method

.method public static Ni()V
    .locals 2

    invoke-static {}, Lo/aua;->eN()Lo/aua;

    move-result-object v0

    invoke-virtual {v0}, Lo/aua;->DC()V

    sget-object v0, Lcom/teslacoilsw/launcher/NovaLauncher;->e9:Lcom/teslacoilsw/launcher/NovaLauncher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    iget-object v0, v0, Lcom/teslacoilsw/launcher/NovaLauncher;->F0:Lo/hqd;

    invoke-virtual {v0}, Lo/hqd;->aB()Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic OJ(Lcom/teslacoilsw/launcher/NovaLauncher;)Lo/hlz;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->cL:Lo/hlz;

    return-object p0
.end method

.method public static synthetic aB(Lcom/teslacoilsw/launcher/NovaLauncher;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->fb:Landroid/view/View;

    return-object p0
.end method

.method public static aB(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic aB(Lcom/teslacoilsw/launcher/NovaLauncher;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/teslacoilsw/launcher/NovaLauncher;->CN(Landroid/view/View;)V

    return-void
.end method

.method private aB(ZZ)V
    .locals 3

    const/16 v0, 0x400

    const/16 v1, 0x1c

    if-nez p1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sget-object v2, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {v2}, Lo/ggu;->I6()Lo/ggv;

    move-result-object v2

    invoke-virtual {v2}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_2

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_2
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->eq()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->CN()V

    if-eqz p2, :cond_3

    sget-object p2, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {p2}, Lo/ggu;->g6()Lo/ggv;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/ggv;->mK(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static synthetic aB(Lcom/teslacoilsw/launcher/NovaLauncher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->n1:Z

    return p1
.end method

.method public static final aB(Lo/aqt;)Z
    .locals 3

    instance-of v0, p0, Lo/ayy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lo/ayy;

    iget-object v0, p0, Lo/ayy;->eN:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ayy;->eN:Landroid/content/Intent;

    invoke-static {v0}, Lo/fhn;->eN(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ayy;->eN:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.teslacoilsw.launcher.ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lo/fhn;->aB:Lo/fhn;

    invoke-virtual {v0}, Lo/fhn;->name()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lo/ayy;->eN:Landroid/content/Intent;

    const-string v2, "LAUNCHER_ACTION"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static synthetic aE(Lcom/teslacoilsw/launcher/NovaLauncher;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E3:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic dB(Lcom/teslacoilsw/launcher/NovaLauncher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->n1:Z

    return p0
.end method

.method public static synthetic declared(Lcom/teslacoilsw/launcher/NovaLauncher;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->iM:Landroid/app/Dialog;

    return-object p0
.end method

.method public static synthetic dn(Lcom/teslacoilsw/launcher/NovaLauncher;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->lC:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static synthetic eN(Lcom/teslacoilsw/launcher/NovaLauncher;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->iM:Landroid/app/Dialog;

    return-object p1
.end method

.method public static synthetic eN(Lcom/teslacoilsw/launcher/NovaLauncher;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->instructions:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method public static synthetic eN(Lcom/teslacoilsw/launcher/NovaLauncher;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->fb:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic eN(Lcom/teslacoilsw/launcher/NovaLauncher;Lo/hlz;)Lo/hlz;
    .locals 0

    iput-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->cL:Lo/hlz;

    return-object p1
.end method

.method public static synthetic eN(Lcom/teslacoilsw/launcher/NovaLauncher;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/teslacoilsw/launcher/NovaLauncher;->fb(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic eN(Lcom/teslacoilsw/launcher/NovaLauncher;Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ge:Lo/hlx;

    invoke-virtual {p0, p1, p2}, Lo/hlx;->eN(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic eN(Lcom/teslacoilsw/launcher/NovaLauncher;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/teslacoilsw/launcher/NovaLauncher;->k5(Z)V

    return-void
.end method

.method public static eN(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    sget-object v0, Lo/aua;->eN:Lo/gzu;

    invoke-virtual {v0, p0}, Lo/gzu;->eN(Ljava/lang/Throwable;)V

    sget-boolean v0, Lo/aua;->aB:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lo/boc;->eN(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lo/bqg;->eN(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static synthetic eN(JLo/aqt;Landroid/view/View;Lcom/android/launcher3/FolderIcon;)Z
    .locals 0

    iget-wide p2, p2, Lo/aqt;->De:J

    cmp-long p4, p2, p0

    if-nez p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic eN(Lo/aqt;Lo/aqt;Landroid/view/View;Lcom/android/launcher3/FolderIcon;)Z
    .locals 1

    iget-wide p2, p0, Lo/aqt;->De:J

    iget-wide p0, p1, Lo/aqt;->De:J

    cmp-long v0, p2, p0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic fb(Lcom/teslacoilsw/launcher/NovaLauncher;)Lo/aue;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->mK:Lo/aue;

    return-object p0
.end method

.method public static synthetic k5(Lcom/teslacoilsw/launcher/NovaLauncher;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    return-object p0
.end method

.method private k5(Z)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_0

    invoke-static {}, Lo/gyx;->eN()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v0, v2, v3}, Lo/hpv;->aB(FFF)F

    move-result v0

    const/high16 v2, 0x437a0000    # 250.0f

    mul-float v0, v0, v2

    invoke-static {v0}, Lo/hpv;->aB(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {v2}, Lo/ggu;->g6()Lo/ggv;

    move-result-object v2

    invoke-virtual {v2}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/teslacoilsw/launcher/NovaLauncher;->aB(ZZ)V

    iput-boolean v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->i4:Z

    iget-object v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E0:Lo/gzo;

    invoke-virtual {v2, v1}, Lo/gzo;->eN(Z)I

    move-result v1

    int-to-long v1, v1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->L7:Lo/hqd;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->hF:Lo/hqd;

    :goto_1
    invoke-virtual {p1}, Lo/hqd;->aB()Ljava/lang/Runnable;

    move-result-object p1

    iget-object v3, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    invoke-virtual {v3, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    int-to-long v4, v0

    add-long/2addr v1, v4

    invoke-virtual {v3, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E0:Lo/gzo;

    invoke-virtual {p1}, Lo/gzo;->aB()V

    if-lez v0, :cond_5

    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->L7:Lo/hqd;

    invoke-virtual {v1}, Lo/hqd;->aB()Ljava/lang/Runnable;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "htc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->L7:Lo/hqd;

    invoke-virtual {v1}, Lo/hqd;->aB()Ljava/lang/Runnable;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->L7:Lo/hqd;

    invoke-virtual {v1}, Lo/hqd;->aB()Ljava/lang/Runnable;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E0:Lo/gzo;

    invoke-virtual {p1}, Lo/gzo;->eN()V

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic lambda$POeQLsLsyC8lcaFMEjPvyBcNhNQ(JLo/aqt;Landroid/view/View;Lcom/android/launcher3/FolderIcon;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/teslacoilsw/launcher/NovaLauncher;->eN(JLo/aqt;Landroid/view/View;Lcom/android/launcher3/FolderIcon;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$vZNE4wyNSqiqZaQwbCzkJ-zv-L4(Lo/aqt;Lo/aqt;Landroid/view/View;Lcom/android/launcher3/FolderIcon;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/teslacoilsw/launcher/NovaLauncher;->eN(Lo/aqt;Lo/aqt;Landroid/view/View;Lcom/android/launcher3/FolderIcon;)Z

    move-result p0

    return p0
.end method

.method public static mJ()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oomCleanup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/aua;->check()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aua;->eN(Ljava/lang/String;)V

    invoke-static {}, Lo/fmr;->eN()V

    invoke-static {}, Lcom/teslacoilsw/launcher/NovaLauncher;->neg()Lcom/teslacoilsw/launcher/NovaLauncher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/teslacoilsw/launcher/NovaLauncher;->Ng()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    invoke-static {}, Lo/aua;->eN()Lo/aua;

    move-result-object v0

    invoke-virtual {v0}, Lo/aua;->fo()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/oomCleanup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo/aua;->check()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aua;->eN(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic mK(Lcom/teslacoilsw/launcher/NovaLauncher;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic native(Lcom/teslacoilsw/launcher/NovaLauncher;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    return-object p0
.end method

.method public static neg()Lcom/teslacoilsw/launcher/NovaLauncher;
    .locals 1

    sget-object v0, Lcom/teslacoilsw/launcher/NovaLauncher;->e9:Lcom/teslacoilsw/launcher/NovaLauncher;

    return-object v0
.end method

.method public static synthetic oa(Lcom/teslacoilsw/launcher/NovaLauncher;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    return-object p0
.end method

.method private result()V
    .locals 1

    invoke-static {p0}, Lo/hgx;->eN(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->local()Landroid/view/ContextThemeWrapper;

    move-result-object v0

    invoke-static {v0}, Lo/hgx;->eN(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public BG()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->I6:Z

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/teslacoilsw/launcher/NovaLauncher;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public DC()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Dc()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public Do()Z
    .locals 4

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->gtz()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->Jc()I

    move-result v0

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->gtz()I

    move-result v0

    sget-object v3, Lo/gfn;->eN:Lo/ggo;

    invoke-virtual {v3}, Lo/ggo;->eN()I

    move-result v3

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public GM()V
    .locals 5

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->GM()V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Nn:Lo/fvq;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lo/fvq;->eN(Z)V

    :cond_0
    sget-object v0, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {v0}, Lo/ggu;->b4()Lo/ggv;

    move-result-object v0

    invoke-virtual {v0}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gzf;

    invoke-virtual {v0, p0}, Lo/gzf;->eN(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E0:Lo/gzo;

    iget-object v0, v0, Lo/gzo;->eN:Lo/gzt;

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/gzt;->eN(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E0:Lo/gzo;

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lo/gzo;->eN(Landroid/view/Window;Z)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->nA:Z

    iget-boolean v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ch:Z

    if-eqz v1, :cond_4

    invoke-static {p0}, Lo/aua;->aB(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sget-object v2, Lo/gfn;->eN:Lo/ggo;

    iget-object v2, v2, Lo/ggo;->eN:Landroid/content/SharedPreferences;

    const-string v3, "oemSavedBuildDisplay"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.teslacoilsw.launcher.OEM_FIRST_DISPLAYED_DESKTOP_AFTER_SYSTEM_UPDATE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.permission.BIND_APPWIDGET"

    invoke-virtual {p0, v2, v4}, Lcom/teslacoilsw/launcher/NovaLauncher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    sget-object v2, Lo/gfn;->eN:Lo/ggo;

    iget-object v2, v2, Lo/ggo;->eN:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    iput-boolean v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ch:Z

    :cond_4
    return-void
.end method

.method public Ge()Z
    .locals 6

    sget-object v0, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {v0}, Lo/ggu;->F0()Lo/ggv;

    move-result-object v0

    invoke-virtual {v0}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->L9()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->Jc()I

    move-result v4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->gtz()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->Jc()I

    move-result v0

    if-ne v3, v0, :cond_3

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher3/Hotseat;->gtz()I

    move-result v0

    invoke-virtual {v2}, Lcom/android/launcher3/Hotseat;->mK()I

    move-result v2

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    xor-int/lit8 v0, v1, 0x1

    return v0
.end method

.method public HC()Lo/gxs;
    .locals 1

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->jJ:Lo/gxs;

    return-object v0
.end method

.method public IE()V
    .locals 1

    invoke-static {}, Lo/aua;->eN()Lo/aua;

    move-result-object v0

    invoke-virtual {v0}, Lo/aua;->aE()Lo/anx;

    move-result-object v0

    invoke-virtual {v0}, Lo/anx;->eN()Lo/amy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/amy;->eN(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->Ea()V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->oa()V

    return-void
.end method

.method public Ng()V
    .locals 2

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->g6:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public aB(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.teslacoilsw.widgetlocker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->eN:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "reset5SecondRule for \'%s\'"

    invoke-static {p1, v0}, Lo/mcz;->aB(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "ACTION_FINISH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/teslacoilsw/launcher/NovaShortcutHandler;->eN:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/teslacoilsw/launcher/NovaLauncher;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "reset5SecondRule not allowed for \'%s\'"

    invoke-static {p1, v0}, Lo/mcz;->aB(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public aB(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 6

    invoke-static {p2}, Lo/fhn;->aB(Landroid/content/Intent;)Lo/fhn;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/teslacoilsw/launcher/NovaLauncher;->eN(Lo/fhn;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)V

    sget-object p1, Lo/fhn;->aB:Lo/fhn;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    sget-object v0, Lcom/teslacoilsw/launcher/preferences/SettingsActivity;->DC:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Lo/fhn;->DC:Lo/fhn;

    invoke-virtual {p2}, Lo/fhn;->mK()Landroid/content/Intent;

    move-result-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {}, Lo/bfr;->eN()Lo/bfr;

    move-result-object v2

    invoke-static {v0, v2}, Lo/fzn;->aB(Landroid/content/ComponentName;Lo/bfr;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->k5:Lcom/android/launcher3/AppsCustomizePagedView;

    iget-object v0, v0, Lcom/android/launcher3/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->k5:Lcom/android/launcher3/AppsCustomizePagedView;

    iget-object v0, v0, Lcom/android/launcher3/AppsCustomizePagedView;->aB:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fzo;

    instance-of v2, v0, Lo/fzn;

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lo/fzo;->mK()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Lo/azi;->eN(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v0, Lo/fzn;

    new-instance p2, Lo/fsh;

    invoke-direct {p2, p0, p1, v0}, Lo/fsh;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Lo/apt;)V

    invoke-virtual {p0, p2}, Lcom/teslacoilsw/launcher/NovaLauncher;->eN(Lo/fsg;)V

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->aB(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b4()V
    .locals 3

    sget-object v0, Lo/gfn;->eN:Lo/ggo;

    iget-object v0, v0, Lo/ggo;->constructor:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lo/gfn;->eN:Lo/ggo;

    iget-object v1, v1, Lo/ggo;->constructor:Landroid/content/Intent;

    const-string v2, "home-button"

    invoke-virtual {p0, v0, v1, v2}, Lcom/teslacoilsw/launcher/NovaLauncher;->aB(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cL()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->cL()V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lo/fgd;

    if-eqz v1, :cond_0

    check-cast v0, Lo/fgd;

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lo/fzu;

    iget-object v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lo/fgd;->eN(Lo/fzu;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dn(Landroid/view/View;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    instance-of v0, p1, Lcom/android/launcher3/SearchDropTargetBar;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.ASSIST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/teslacoilsw/launcher/NovaLauncher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fzu;

    sget-object v3, Lo/gfn;->eN:Lo/ggo;

    iget-boolean v3, v3, Lo/ggo;->Ba:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lo/fzu;->ha:Lo/gxx;

    if-eqz v3, :cond_2

    sget-object v3, Lo/gfn;->eN:Lo/ggo;

    iget-boolean v3, v3, Lo/ggo;->i4:Z

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lo/fzu;->DC:J

    const-wide/16 v5, -0x65

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    const-string v3, "translationX"

    goto :goto_0

    :cond_1
    const-string v3, "translationY"

    :goto_0
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lo/atx;->aB()Landroid/animation/AnimatorSet;

    move-result-object v5

    new-array v6, v1, [F

    aput v4, v6, v2

    invoke-static {p1, v3, v6}, Lo/atx;->eN(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x7d

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v6, v1, [F

    const/4 v7, 0x0

    aput v7, v6, v2

    invoke-static {p1, v3, v6}, Lo/atx;->eN(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lo/fhs;

    invoke-direct {v3, p0, p1}, Lo/fhs;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lo/fht;

    invoke-direct {v2, p0, p1, v0}, Lo/fht;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;Landroid/view/View;Lo/fzu;)V

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return v1

    :cond_2
    return v2
.end method

.method public eN(Lcom/android/launcher3/CellLayout;Lo/ayy;)Landroid/view/View;
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->eN(Lcom/android/launcher3/CellLayout;Lo/ayy;)Landroid/view/View;

    move-result-object p1

    iget-wide v0, p2, Lo/ayy;->De:J

    iget-wide v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ba:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    :cond_0
    return-object p1
.end method

.method public eN(Lcom/android/launcher3/CellLayout;Lo/apt;)Lcom/android/launcher3/FolderIcon;
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->eN(Lcom/android/launcher3/CellLayout;Lo/apt;)Lcom/android/launcher3/FolderIcon;

    move-result-object p1

    iget-wide v0, p2, Lo/apt;->De:J

    iget-wide v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ba:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    :cond_0
    return-object p1
.end method

.method public eN(Landroid/content/Intent;Lo/gya;)V
    .locals 4

    const/16 v0, 0x7d93

    const/4 v1, 0x0

    const v2, 0x7f13002f

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/teslacoilsw/launcher/NovaLauncher;->startActivityForResult(Landroid/content/Intent;I)V

    iput-object p2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->GH:Lo/gya;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string p1, "Launcher does not have the permission to launch \'%s\'. Make sure to create a MAIN intent-filter for the corresponding activity or use the exported attribute for this activity."

    invoke-static {v0, p1, v2}, Lo/mcz;->fb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2, p0, v3, v1}, Lo/gya;->onActivityResult(Landroid/content/Context;ILandroid/content/Intent;)Z

    goto :goto_0

    :catch_1
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-interface {p2, p0, v3, v1}, Lo/gya;->onActivityResult(Landroid/content/Context;ILandroid/content/Intent;)Z

    :goto_0
    return-void
.end method

.method public eN(Landroid/view/View;Lo/fzu;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->i4()V

    new-instance p3, Landroid/util/Pair;

    invoke-direct {p3, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p3, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    invoke-static {}, Lo/fgd;->eN()Lo/fgd;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lo/fgd;->eN(Lo/fzu;Landroid/view/View;)V

    invoke-virtual {p3, v0, v1}, Lo/fgd;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method

.method public eN(Lo/aqt;Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/teslacoilsw/launcher/NovaLauncher;->eN(Landroid/view/View;Lo/aqt;Z)Z

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Lcom/android/launcher3/Workspace;->eN(ZZ)V

    :cond_0
    return-void
.end method

.method public eN(Lo/auf;)V
    .locals 6

    invoke-virtual {p1}, Lo/auf;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/aul;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/aul;->eN(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lo/aul;->aB:Landroid/content/ComponentName;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v2, v3}, Lo/gxq;->eN(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v3, v4, v5, v2}, Lo/auf;->eN(IIII)V

    invoke-virtual {v0, v1}, Lo/aul;->aB(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v2}, Lo/auf;->eN(IIII)V

    invoke-virtual {v0, v1}, Lo/aul;->mK(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->AM()Lo/bhy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/bhy;->eN(Lo/aqt;)V

    return-void
.end method

.method public eN(Lo/aul;Landroid/view/View;Ljava/lang/Throwable;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, v1, Lo/aul;->aB:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lo/aul;->aB:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->K8()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0e003d

    invoke-virtual {v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v3, p3

    invoke-static {v4, v3}, Lo/auf;->eN(Landroid/content/ComponentName;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lo/fih;

    invoke-direct {v4, v0, v3, v8, v1}, Lo/fih;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;Ljava/lang/String;Landroid/view/View;Lo/aul;)V

    new-instance v3, Lo/fii;

    invoke-direct {v3, v0, v4}, Lo/fii;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object v7

    iget-wide v9, v1, Lo/aul;->DC:J

    iget-wide v11, v1, Lo/aul;->aE:J

    iget v13, v1, Lo/aul;->k3:I

    iget v14, v1, Lo/aul;->Dc:F

    iget v15, v1, Lo/aul;->dn:F

    iget v2, v1, Lo/aul;->dB:F

    iget v1, v1, Lo/aul;->native:F

    const/16 v18, 0x0

    move/from16 v16, v2

    move/from16 v17, v1

    invoke-virtual/range {v7 .. v18}, Lcom/android/launcher3/Workspace;->eN(Landroid/view/View;JJIFFFFZ)V

    iget-object v1, v0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public eN(Lo/fhn;Landroid/view/View;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/teslacoilsw/launcher/NovaLauncher;->eN(Lo/fhn;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

.method public eN(Lo/fhn;Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 8

    instance-of v0, p2, Lcom/android/launcher3/DragLayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    instance-of v0, p4, Lo/ggv;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    check-cast p4, Lo/ggv;

    sget-object v0, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {v0}, Lo/ggu;->gtz()Lo/ggv;

    move-result-object v0

    if-eq p4, v0, :cond_1

    sget-object v0, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {v0}, Lo/ggu;->iM()Lo/ggv;

    move-result-object v0

    if-ne p4, v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move-object p4, v1

    :cond_3
    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lo/fik;->eN:[I

    invoke-virtual {p1}, Lo/fhn;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, 0x64

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {p0, v2}, Lcom/teslacoilsw/launcher/homereset/HomeReset;->eN(Landroid/content/Context;Z)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, p4}, Lcom/teslacoilsw/launcher/NovaLauncher;->eN(Lo/ggv;)V

    goto/16 :goto_2

    :pswitch_2
    const/4 p1, 0x2

    invoke-virtual {p0, p2, v3, v2, p1}, Lcom/teslacoilsw/launcher/NovaLauncher;->eN(Landroid/view/View;ZII)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->Ba()V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->onSearchRequested()Z

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/teslacoilsw/launcher/NovaLauncher;->eN(Landroid/view/View;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->e9()V

    sget-object p1, Lo/gfn;->eN:Lo/ggo;

    invoke-virtual {p1}, Lo/ggo;->eN()I

    move-result p1

    const-string p2, "PAGE_NUMBER"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sget-object p2, Lo/gfn;->eN:Lo/ggo;

    iget p2, p2, Lo/ggo;->CN:I

    sub-int/2addr p2, v3

    invoke-static {p1, v2, p2}, Lo/hpv;->eN(III)I

    move-result p1

    sget-boolean p2, Lcom/teslacoilsw/launcher/NovaLauncher;->k3:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    new-instance p3, Lo/fin;

    invoke-direct {p3, p0, p1}, Lo/fin;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;I)V

    invoke-virtual {p2, p3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    invoke-virtual {p0, v2}, Lcom/teslacoilsw/launcher/NovaLauncher;->mK(Z)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object p2

    iget-boolean p3, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->OA:Z

    if-nez p3, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    iget-wide v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->ha:J

    sub-long/2addr p3, v0

    const-wide/16 v0, 0xfa

    cmp-long v4, p3, v0

    if-gez v4, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    invoke-virtual {p2, p1, v2}, Lcom/android/launcher3/Workspace;->k5(IZ)V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->e9()V

    sget-boolean p1, Lcom/teslacoilsw/launcher/NovaLauncher;->k3:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    new-instance p2, Lo/fim;

    invoke-direct {p2, p0}, Lo/fim;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    invoke-virtual {p1, p2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    invoke-virtual {p0, v2}, Lcom/teslacoilsw/launcher/NovaLauncher;->mK(Z)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea()Lcom/android/launcher3/Hotseat;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea()Lcom/android/launcher3/Hotseat;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/launcher3/Hotseat;->mK(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/launcher3/Workspace;->DC(Z)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->HC()V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->e9()V

    if-eqz p3, :cond_a

    const-string p1, "EDIT_MODE"

    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lo/gfn;->eN:Lo/ggo;

    invoke-virtual {p1}, Lo/ggo;->declared()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lo/gfn;->eN:Lo/ggo;

    iput-boolean v3, p1, Lo/ggo;->GH:Z

    :cond_9
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->Fc()Z

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->aI()Lo/bdf;

    move-result-object p1

    sget-object p2, Lo/bdf;->fb:Lo/bdf;

    if-eq p1, p2, :cond_f

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->Fc()Z

    goto/16 :goto_2

    :pswitch_9
    sget-object p1, Lo/gfn;->eN:Lo/ggo;

    iget-boolean p1, p1, Lo/ggo;->k3:Z

    xor-int/2addr p1, v3

    invoke-virtual {p0, p1, v3}, Lcom/teslacoilsw/launcher/NovaLauncher;->eN(ZZ)V

    goto/16 :goto_2

    :pswitch_a
    sget-object p1, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {p1}, Lo/ggu;->g6()Lo/ggv;

    move-result-object p1

    invoke-virtual {p1}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-direct {p0, p1, v3}, Lcom/teslacoilsw/launcher/NovaLauncher;->aB(ZZ)V

    goto :goto_2

    :pswitch_b
    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E0:Lo/gzo;

    invoke-virtual {p1}, Lo/gzo;->mK()V

    goto :goto_2

    :pswitch_c
    sget-object p1, Lo/gfn;->eN:Lo/ggo;

    iget-boolean p1, p1, Lo/ggo;->Ic:Z

    if-eqz p1, :cond_b

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    new-instance p2, Lo/fil;

    invoke-direct {p2, p0}, Lo/fil;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_b
    invoke-direct {p0, v3}, Lcom/teslacoilsw/launcher/NovaLauncher;->k5(Z)V

    goto :goto_2

    :pswitch_d
    sget-object p1, Lo/gfn;->eN:Lo/ggo;

    iget-boolean p1, p1, Lo/ggo;->Ic:Z

    if-eqz p1, :cond_c

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    new-instance p2, Lo/fid;

    invoke-direct {p2, p0}, Lo/fid;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_c
    invoke-direct {p0, v2}, Lcom/teslacoilsw/launcher/NovaLauncher;->k5(Z)V

    goto :goto_2

    :pswitch_e
    if-eqz p2, :cond_d

    invoke-virtual {p0, p2}, Lcom/teslacoilsw/launcher/NovaLauncher;->aB(Landroid/view/View;)V

    goto :goto_2

    :cond_d
    const/4 p1, -0x1

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p3}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {p3}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    goto :goto_1

    :cond_e
    const/4 p2, -0x1

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/teslacoilsw/launcher/NovaLauncher;->eN(II)V

    :cond_f
    :goto_2
    :pswitch_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_f
        :pswitch_f
        :pswitch_0
    .end packed-switch
.end method

.method public eN(Lo/fue;Ljava/util/ArrayList;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->eN(Lo/fue;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->g2:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/fzo;

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->g2:Landroid/content/ComponentName;

    invoke-interface {p2}, Lo/fzo;->mK()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/util/Pair;

    check-cast p2, Lo/fzu;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "dialog"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroid/app/DialogFragment;

    if-eqz p1, :cond_1

    instance-of p2, p1, Lo/fgd;

    if-eqz p2, :cond_1

    check-cast p1, Lo/fgd;

    iget-object p2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lo/fzu;

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, p2, v0}, Lo/fgd;->eN(Lo/fzu;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public eN(Lo/fzu;)V
    .locals 7

    if-eqz p1, :cond_4

    sget-object v0, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {v0}, Lo/ggu;->gF()Lo/ggv;

    move-result-object v0

    invoke-virtual {v0}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo/fzu;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lo/fzu;->f:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lo/apz;->aB(Landroid/graphics/Bitmap;)F

    move-result v0

    iput v0, p1, Lo/fzu;->i4:F

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/fzu;->OA:Z

    iget-object v0, p1, Lo/fzu;->f:Landroid/graphics/Bitmap;

    iget v1, p1, Lo/fzu;->i4:F

    invoke-static {v0, v1}, Lo/apz;->eN(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lo/fzu;->f:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->kh()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lo/aqt;

    if-eqz p1, :cond_4

    iget-wide v0, p1, Lo/aqt;->DC:J

    const-wide/16 v2, -0x64

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v0, p1, Lo/aqt;->DC:J

    const-wide/16 v2, -0x65

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v0, p1, Lo/aqt;->DC:J

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lo/aqt;->De:J

    :goto_0
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object v2

    new-instance v3, Lcom/teslacoilsw/launcher/-$$Lambda$NovaLauncher$POeQLsLsyC8lcaFMEjPvyBcNhNQ;

    invoke-direct {v3, v0, v1}, Lcom/teslacoilsw/launcher/-$$Lambda$NovaLauncher$POeQLsLsyC8lcaFMEjPvyBcNhNQ;-><init>(J)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher3/Workspace;->aB(ZLo/bdd;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-wide v5, p1, Lo/aqt;->De:J

    cmp-long v3, v0, v5

    if-eqz v3, :cond_3

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->DJ()Lcom/android/launcher3/Folder;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->DJ()Lcom/android/launcher3/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Folder;->aE()Lo/bge;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->DJ()Lcom/android/launcher3/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Folder;->aE()Lo/bge;

    move-result-object v1

    new-instance v2, Lcom/teslacoilsw/launcher/-$$Lambda$NovaLauncher$vZNE4wyNSqiqZaQwbCzkJ-zv-L4;

    invoke-direct {v2, p1}, Lcom/teslacoilsw/launcher/-$$Lambda$NovaLauncher$vZNE4wyNSqiqZaQwbCzkJ-zv-L4;-><init>(Lo/aqt;)V

    invoke-interface {v1, v4, v2}, Lo/bge;->eN(ZLo/bdd;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    :cond_3
    if-eqz v2, :cond_4

    check-cast p1, Lo/fzu;

    invoke-virtual {p1, p0, v2}, Lo/fzu;->eN(Lcom/teslacoilsw/launcher/NovaLauncher;Landroid/view/View;)V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->i4()V

    return-void
.end method

.method public eN(Lo/ggv;)V
    .locals 2

    invoke-static {}, Lo/ggp;->eN()Lo/ggp;

    move-result-object v0

    iget-object v0, v0, Lo/ggp;->k5:Lo/bxd;

    invoke-virtual {v0}, Lo/bxd;->aB()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/guo;

    invoke-virtual {v0, p0}, Lo/guo;->eN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lo/guo;->mK(Landroid/content/Context;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/ggp;->eN()Lo/ggp;

    move-result-object v0

    iget-object v0, v0, Lo/ggp;->k5:Lo/bxd;

    invoke-virtual {v0}, Lo/bxd;->fb()V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f14010c

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, p1}, Lo/guo;->eN(Landroid/content/Context;Lo/ggv;)V

    :goto_0
    return-void
.end method

.method public eN(ZZ)V
    .locals 4

    sget-object v0, Lo/gfn;->eN:Lo/ggo;

    iget-boolean v0, v0, Lo/ggo;->k3:Z

    if-eq v0, p1, :cond_0

    sget-object v0, Lo/gfn;->eN:Lo/ggo;

    iget-object v0, v0, Lo/ggo;->eN:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dock_enable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->eq()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->oa()V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->native()V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setAlpha(F)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->fb:Landroid/view/View;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->fb:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->NF()Lo/amy;

    move-result-object p2

    iget p2, p2, Lo/amy;->nA:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lo/atx;->eN(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xe1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lo/fkl;->mK:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lo/fiq;

    invoke-direct {v2, p0, v0, p1, p2}, Lo/fiq;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;Lcom/android/launcher3/Hotseat;ZI)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lo/fir;

    invoke-direct {p2, p0, p1, v0}, Lo/fir;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;ZLcom/android/launcher3/Hotseat;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->fb:Landroid/view/View;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->fb:Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    :cond_4
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->clearAnimation()V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Hotseat;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Hotseat;->setTranslationY(F)V

    :goto_0
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->IE()V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public eN([Ljava/lang/String;Lo/gyc;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/16 v0, 0x7d93

    invoke-virtual {p0, p1, v0}, Lcom/teslacoilsw/launcher/NovaLauncher;->requestPermissions([Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->eM:Lo/gyc;

    return-void
.end method

.method public en()V
    .locals 6

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->en()V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E0:Lo/gzo;

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/gzo;->eN(Landroid/view/Window;Z)V

    sget-object v0, Lo/gfn;->eN:Lo/ggo;

    iget-boolean v0, v0, Lo/ggo;->e9:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lo/gfn;->eN:Lo/ggo;

    iget-object v0, v0, Lo/ggo;->L7:Lo/ggl;

    sget-object v1, Lo/ggl;->fb:Lo/ggl;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->jJ:Lo/gxs;

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ic:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->gF:Lo/hqd;

    invoke-virtual {v3}, Lo/hqd;->aB()Ljava/lang/Runnable;

    move-result-object v3

    iget-boolean v4, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->nA:Z

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x7d0

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v0, v1, v3, v4, v5}, Lo/gxs;->eN(Ljava/lang/Runnable;Ljava/lang/Runnable;J)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Dc:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->oa(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->k5:Lcom/android/launcher3/AppsCustomizePagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizePagedView;->dB()V

    sget-object v0, Lo/ggu;->dB:Lo/ggu;

    sget-object v1, Lo/ggu;->Dc:Lo/ilf;

    sget-object v3, Lo/ggu;->eN:[Lo/imo;

    const/16 v4, 0x5c

    aget-object v3, v3, v4

    invoke-interface {v1, v0, v3}, Lo/ilf;->eN(Ljava/lang/Object;Lo/imo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ggv;

    invoke-virtual {v0}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->mK:Lo/aue;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v0, v0, Lo/aue;->aB:J

    sub-long/2addr v3, v0

    const-wide/32 v0, 0xdbba0

    cmp-long v5, v3, v0

    if-lez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    :cond_4
    const-wide/32 v0, 0x300000

    invoke-static {p0, v0, v1}, Lo/fmt;->eN(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->HC()Lo/gxs;

    move-result-object v0

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E4:Lo/hqd;

    invoke-virtual {v1}, Lo/hqd;->aB()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/gxs;->eN(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public fN()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/teslacoilsw/launcher/NovaLauncher;->mK(Z)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->f()Lo/anb;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->f()Lo/anb;

    move-result-object v1

    invoke-virtual {v1}, Lo/anb;->aB()V

    :cond_0
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->eq()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->eq()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/DragLayer;->fb(Z)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->eq()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DragLayer;->De()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->aE:Z

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->Nl()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherModel;->mK(Z)V

    return-void
.end method

.method public fm()V
    .locals 1

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->h6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->fN()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Dm:Z

    :goto_0
    return-void
.end method

.method public ha()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/launcher3/LauncherWallpaperPickerActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public jF()V
    .locals 2

    sget-boolean v0, Lo/hpq;->k5:Z

    if-eqz v0, :cond_2

    sget-object v0, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {v0}, Lo/ggu;->GM()Lo/ggv;

    move-result-object v0

    invoke-virtual {v0}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->eq:Lo/auo;

    if-nez v0, :cond_0

    new-instance v0, Lo/fvq;

    invoke-direct {v0, p0}, Lo/fvq;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Nn:Lo/fvq;

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Nn:Lo/fvq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/fvq;->eN(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Nn:Lo/fvq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/fvq;->eN()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Nn:Lo/fvq;

    :cond_2
    :goto_0
    return-void
.end method

.method public k3()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->k3()V

    invoke-direct {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->result()V

    return-void
.end method

.method public oa(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lo/fhn;->DC:Lo/fhn;

    invoke-virtual {v0}, Lo/fhn;->mK()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "onClickSettingsButton"

    invoke-virtual {p0, p1, v0, v1}, Lcom/teslacoilsw/launcher/NovaLauncher;->aB(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->length:Z

    return-void
.end method

.method public oa(Z)V
    .locals 2

    const/high16 v0, 0x100000

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Landroid/view/Window;->setFormat(I)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method

.method public og()V
    .locals 6

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f14010c

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e012b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b035f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/teslacoilsw/matcompat/TintableSwitchCompat;

    const v3, 0x7f0b0257

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0360

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Lo/aha;

    invoke-direct {v5, v0}, Lo/aha;-><init>(Landroid/content/Context;)V

    const v0, 0x7f13029c

    invoke-virtual {v5, v0}, Lo/aha;->eN(I)Lo/aha;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5}, Lo/aha;->eN(Landroid/view/View;Z)Lo/aha;

    move-result-object v0

    const v1, 0x7f13007f

    invoke-virtual {v0, v1}, Lo/aha;->De(I)Lo/aha;

    move-result-object v0

    invoke-virtual {v0}, Lo/aha;->aB()Lo/agv;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lo/fhv;

    invoke-direct {v1, p0}, Lo/fhv;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v1, Lo/fhw;

    invoke-direct {v1, p0, v4}, Lo/fhw;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;Landroid/widget/TextView;)V

    invoke-virtual {v2, v1}, Lcom/teslacoilsw/matcompat/TintableSwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v2, v5}, Lcom/teslacoilsw/matcompat/TintableSwitchCompat;->setChecked(Z)V

    new-instance v1, Lo/fhx;

    invoke-direct {v1, p0, v3, v2, v0}, Lo/fhx;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;Landroid/view/View;Lcom/teslacoilsw/matcompat/TintableSwitchCompat;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->iM:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    iget-object v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->gtz:Lo/hqd;

    invoke-virtual {v2}, Lo/hqd;->aB()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea:Landroid/os/Handler;

    iget-object v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->gtz:Lo/hqd;

    invoke-virtual {v2}, Lo/hqd;->aB()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->GH:Lo/gya;

    if-eqz v0, :cond_0

    const/16 v1, 0x7d93

    if-ne p1, v1, :cond_0

    invoke-interface {v0, p0, p2, p3}, Lo/gya;->onActivityResult(Landroid/content/Context;ILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->GH:Lo/gya;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/teslacoilsw/launcher/NovaLauncher;->aB(Z)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    sget-boolean v0, Lcom/teslacoilsw/launcher/NovaLauncher;->Nl:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/teslacoilsw/launcher/NovaLauncher;->e9:Lcom/teslacoilsw/launcher/NovaLauncher;

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/teslacoilsw/launcher/NovaLauncher;->Nl:Z

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "multiple instances, committing suicide"

    invoke-static {v2, v0}, Lo/mcz;->fb(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->nA:Z

    sput-object p0, Lcom/teslacoilsw/launcher/NovaLauncher;->e9:Lcom/teslacoilsw/launcher/NovaLauncher;

    sget-object v2, Lo/gfn;->eN:Lo/ggo;

    iget-boolean v2, v2, Lo/ggo;->Ba:Z

    const-string v3, "Prime"

    invoke-static {v3, v2}, Lo/aua;->eN(Ljava/lang/String;Z)V

    sget-object v2, Lo/gfn;->eN:Lo/ggo;

    iget-object v2, v2, Lo/ggo;->g2:Lo/ggf;

    invoke-virtual {v2}, Lo/ggf;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Auto-Rotate"

    invoke-static {v3, v2}, Lo/aua;->eN(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const-string v2, "DontKeepActivites"

    invoke-static {v2, v0}, Lo/aua;->eN(Ljava/lang/String;Z)V

    if-eqz p1, :cond_4

    const-wide/16 v2, -0x1

    const-string v0, "nova.edit_info_id"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ba:J

    const-string v0, "nova.edit_info_component"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->g2:Landroid/content/ComponentName;

    :cond_4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "NovaLauncherBg"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->kh:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->kh:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lo/gxs;

    iget-object v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->kh:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lo/gxs;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->jJ:Lo/gxs;

    new-instance v0, Lo/gzo;

    invoke-direct {v0, p0}, Lo/gzo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E0:Lo/gzo;

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->jF()V

    sget-object p1, Lo/gfn;->eN:Lo/ggo;

    invoke-virtual {p1, p0}, Lo/ggo;->eN(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sget-object p1, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {p1}, Lo/ggu;->g6()Lo/ggv;

    move-result-object p1

    invoke-virtual {p1}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/teslacoilsw/launcher/NovaLauncher;->aB(ZZ)V

    sget-object p1, Lo/gfn;->eN:Lo/ggo;

    iget-object p1, p1, Lo/ggo;->eN:Landroid/content/SharedPreferences;

    const-string v0, "startSettingsOnCreate"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lo/fhn;->DC:Lo/fhn;

    invoke-virtual {p1}, Lo/fhn;->mK()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/teslacoilsw/launcher/NovaLauncher;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lo/gfn;->eN:Lo/ggo;

    iget-object p1, p1, Lo/ggo;->eN:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    sget-object p1, Lo/gfn;->eN:Lo/ggo;

    iget-object p1, p1, Lo/ggo;->eN:Landroid/content/SharedPreferences;

    const-string v0, "did_quickstart"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/teslacoilsw/launcher/onboarding/OnboardingActivity;->Dc()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/teslacoilsw/launcher/NovaLauncher;->startActivity(Landroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->nA()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    new-instance v0, Landroid/content/Intent;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    const-string v2, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    goto :goto_0

    :cond_1
    const-string v2, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    :goto_0
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x14800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/teslacoilsw/launcher/preferences/SettingsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x14880000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x7

    const v5, 0x7f13018a

    const/4 v6, 0x2

    invoke-interface {p1, v6, v4, v1, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x53

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.APP_MARKET"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const v7, 0x8000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    const/high16 v7, 0x10000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    const/high16 v7, 0x4000000

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    const v4, 0x7f130379

    const/4 v5, 0x1

    invoke-interface {p1, v5, v6, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x108003f

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v6, Lo/fig;

    invoke-direct {v6, p0}, Lo/fig;-><init>(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v6, 0x57

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v4, 0x3

    const v6, 0x7f1301b8

    invoke-interface {p1, v1, v4, v1, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v6, 0x1080042

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v4, 0x4d

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const v4, 0x7f1301ea

    invoke-interface {p1, v1, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v4, 0x1080049

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x4e

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v0, 0x5

    const v2, 0x7f1301bb

    invoke-interface {p1, v5, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object p1

    const/16 v0, 0x50

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return v5
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lo/gfn;->eN:Lo/ggo;

    invoke-virtual {v0, p0}, Lo/ggo;->aB(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->jJ:Lo/gxs;

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/gxs;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ic:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->jJ:Lo/gxs;

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/gxs;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E3:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Nn:Lo/fvq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/fvq;->eN()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->jJ:Lo/gxs;

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->kh:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->kh:Landroid/os/HandlerThread;

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onDestroy()V

    sput-object v0, Lcom/teslacoilsw/launcher/NovaLauncher;->e9:Lcom/teslacoilsw/launcher/NovaLauncher;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onPause()V

    sget-object v0, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {v0}, Lo/ggu;->b4()Lo/ggv;

    move-result-object v0

    invoke-virtual {v0}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/gzf;

    invoke-virtual {v0, p0}, Lo/gzf;->eN(Lcom/teslacoilsw/launcher/NovaLauncher;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->bj()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->oa:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->CN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->dB()Lcom/android/launcher3/Folder;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->hF()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    :cond_0
    return v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x7d93

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->eM:Lo/gyc;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lo/gyc;->eN([Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->eM:Lo/gyc;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onResume()V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->n1()V

    sget-boolean v0, Lcom/teslacoilsw/launcher/NovaLauncher;->Nl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    sput-boolean v1, Lcom/teslacoilsw/launcher/NovaLauncher;->Nl:Z

    return-void

    :cond_0
    sget-boolean v0, Lcom/teslacoilsw/launcher/NovaLauncher;->AM:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->recreate()V

    sput-boolean v1, Lcom/teslacoilsw/launcher/NovaLauncher;->AM:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->I6:Z

    if-eqz v0, :cond_2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lo/locals;->aB(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->recreate()V

    :cond_2
    iput-boolean v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->I6:Z

    iget-boolean v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Dm:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->fN()V

    iput-boolean v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Dm:Z

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    instance-of v0, v0, Lo/fzo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lo/fzo;

    invoke-interface {v0}, Lo/fzo;->mK()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "nova.edit_info_component"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->constructor:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lo/fzu;

    iget-wide v0, v0, Lo/fzu;->De:J

    const-string v2, "nova.edit_info_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->result()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    sget-object p1, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {p1}, Lo/ggu;->GM()Lo/ggv;

    move-result-object p1

    invoke-virtual {p1}, Lo/ggv;->eN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->jF()V

    :cond_0
    sget-object p1, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {p1}, Lo/ggu;->ff()Lo/ggv;

    move-result-object p1

    invoke-virtual {p1}, Lo/ggv;->eN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {p1}, Lo/ggu;->I6()Lo/ggv;

    move-result-object p1

    invoke-virtual {p1}, Lo/ggv;->eN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->E0:Lo/gzo;

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lo/gzo;->eN(Landroid/view/Window;Z)V

    sget-object p1, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {p1}, Lo/ggu;->g6()Lo/ggv;

    move-result-object p1

    invoke-virtual {p1}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/teslacoilsw/launcher/NovaLauncher;->aB(ZZ)V

    :cond_2
    const-string p1, "unread_count"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "unread_count_provider"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "unread_count_apk_installed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "unread_count_badge_style"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "unread_count_position"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_3
    sget-object p1, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {p1}, Lo/ggu;->g6()Lo/ggv;

    move-result-object p1

    invoke-virtual {p1}, Lo/ggv;->eN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {p1}, Lo/ggu;->g6()Lo/ggv;

    move-result-object p1

    invoke-virtual {p1}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/teslacoilsw/launcher/NovaLauncher;->aB(ZZ)V

    :cond_4
    sget-object p1, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {p1}, Lo/ggu;->Ic()Lo/ggv;

    move-result-object p1

    invoke-virtual {p1}, Lo/ggv;->eN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    sget-object p2, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {p2}, Lo/ggu;->Ic()Lo/ggv;

    move-result-object p2

    invoke-virtual {p2}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/gbs;

    invoke-virtual {p2}, Lo/gbs;->aB()I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onStop()V

    iget-boolean v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->length:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->bj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->DJ()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->mK(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->length:Z

    :cond_1
    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Nn:Lo/fvq;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lo/fvq;->eN(Z)V

    :cond_2
    sget-object v0, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {v0}, Lo/ggu;->Ea()Lo/ggv;

    move-result-object v0

    invoke-virtual {v0}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v1}, Lcom/teslacoilsw/launcher/NovaLauncher;->eN(ZZ)V

    :cond_3
    sget-object v0, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {v0}, Lo/ggu;->Nn()Lo/ggv;

    move-result-object v0

    invoke-virtual {v0}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/teslacoilsw/launcher/NovaLauncher;->mK(Z)V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->oa:Lcom/android/launcher3/AppsCustomizeTabHost;

    invoke-virtual {v0}, Lcom/android/launcher3/AppsCustomizeTabHost;->aB()V

    :cond_4
    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lo/ggu;->dB:Lo/ggu;

    sget-object v1, Lo/ggu;->CN:Lo/ilf;

    sget-object v2, Lo/ggu;->eN:[Lo/imo;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lo/ilf;->eN(Ljava/lang/Object;Lo/imo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ggv;

    invoke-virtual {v0}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->Ea()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->mK(Z)V

    :cond_5
    sget-object v0, Lo/gfn;->eN:Lo/ggo;

    iget-object v0, v0, Lo/ggo;->L7:Lo/ggl;

    sget-object v1, Lo/ggl;->fb:Lo/ggl;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->jJ:Lo/gxs;

    iget-object v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->gF:Lo/hqd;

    invoke-virtual {v1}, Lo/hqd;->aB()Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Ic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo/gxs;->eN(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->Nn:Lo/fvq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lo/fvq;->aB(Z)V

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->ha:J

    :cond_1
    iput-boolean p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->OA:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->i4:Z

    if-eqz p1, :cond_2

    sget-object p1, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {p1}, Lo/ggu;->g6()Lo/ggv;

    move-result-object p1

    invoke-virtual {p1}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/teslacoilsw/launcher/NovaLauncher;->aB(ZZ)V

    invoke-virtual {p0}, Lcom/teslacoilsw/launcher/NovaLauncher;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    iput-boolean v0, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->i4:Z

    :cond_2
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2

    sget-object v0, Lo/ggu;->dB:Lo/ggu;

    invoke-virtual {v0}, Lo/ggu;->g6()Lo/ggv;

    move-result-object v0

    invoke-virtual {v0}, Lo/ggv;->fb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/teslacoilsw/launcher/NovaLauncher;->aB(ZZ)V

    iput-boolean v1, p0, Lcom/teslacoilsw/launcher/NovaLauncher;->i4:Z

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method
