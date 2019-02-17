.class public Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static C:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsNetworkStateReceiver; = null

.field private static D:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsBatteryStateReceiver; = null

.field private static E:I = 0x0

.field public static e:Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity; = null

.field public static i:Z = false

.field public static j:Z = false

.field public static k:Z = false

.field public static l:Ljava/lang/Boolean; = null

.field private static m:Ljava/lang/String; = "MainActivity"


# instance fields
.field private A:Landroid/net/wifi/WifiManager$MulticastLock;

.field private B:Landroid/net/ConnectivityManager;

.field a:Z

.field public b:Lcom/gameloft/android/ANMP/GloftA8HM/GLUtils/CutoutHelper;

.field public c:Landroid/content/Intent;

.field public d:Z

.field public f:F

.field public g:I

.field public h:I

.field private n:Z

.field private o:Landroid/widget/RelativeLayout;

.field private p:Landroid/view/SurfaceView;

.field private q:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;

.field private r:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Landroid/app/PendingIntent;

.field private z:Lcom/gameloft/android/ANMP/GloftA8HM/OtherInputDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1764
    new-instance v0, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsNetworkStateReceiver;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsNetworkStateReceiver;-><init>()V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->C:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsNetworkStateReceiver;

    .line 1765
    new-instance v0, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsBatteryStateReceiver;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsBatteryStateReceiver;-><init>()V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->D:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsBatteryStateReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1717
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 1722
    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->n:Z

    const/4 v1, 0x0

    .line 1724
    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->o:Landroid/widget/RelativeLayout;

    .line 1725
    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->p:Landroid/view/SurfaceView;

    .line 1726
    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->q:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;

    .line 1727
    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->r:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;

    .line 1731
    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->a:Z

    .line 1734
    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->b:Lcom/gameloft/android/ANMP/GloftA8HM/GLUtils/CutoutHelper;

    .line 1737
    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->c:Landroid/content/Intent;

    .line 1738
    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->d:Z

    .line 1743
    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->t:Z

    const/4 v2, 0x1

    .line 1744
    iput-boolean v2, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->u:Z

    .line 1745
    iput v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->v:I

    .line 1746
    iput v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->w:I

    const-string v2, ""

    .line 1747
    iput-object v2, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->x:Ljava/lang/String;

    .line 1748
    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->y:Landroid/app/PendingIntent;

    .line 1749
    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->z:Lcom/gameloft/android/ANMP/GloftA8HM/OtherInputDispatcher;

    .line 1750
    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->A:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 1751
    iput-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->B:Landroid/net/ConnectivityManager;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1753
    iput v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->f:F

    .line 1754
    iput v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->g:I

    .line 1755
    iput v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->h:I

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;Z)V
    .locals 0

    .line 1717
    invoke-direct {p0, p1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->d(Z)V

    return-void
.end method

.method public static canReach(Ljava/lang/String;)Z
    .locals 6

    .line 2562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2564
    new-instance v2, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$5;-><init>(Ljava/lang/String;)V

    .line 2592
    invoke-virtual {v2}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$5;->start()V

    .line 2594
    :goto_0
    sget-object p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->l:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/16 v2, 0x7d0

    cmp-long p0, v4, v2

    if-gez p0, :cond_0

    goto :goto_0

    .line 2596
    :cond_0
    sget-object p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->l:Ljava/lang/Boolean;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 2597
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->l:Ljava/lang/Boolean;

    .line 2599
    :cond_1
    sget-object p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->l:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private d(Z)V
    .locals 1

    .line 2236
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->p:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 1774
    new-instance v0, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->q:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;

    .line 1777
    new-instance v0, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->r:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;

    .line 1778
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->r:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0, v1}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 1782
    new-instance v0, Lcom/gameloft/android/ANMP/GloftA8HM/OtherInputDispatcher;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftA8HM/OtherInputDispatcher;-><init>()V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->z:Lcom/gameloft/android/ANMP/GloftA8HM/OtherInputDispatcher;

    return-void
.end method

.method private g()V
    .locals 0

    .line 1787
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/JNIBridge;->NativeInit()V

    return-void
.end method

.method public static getActivityContext()Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;
    .locals 1

    .line 2202
    sget-object v0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->e:Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;

    return-object v0
.end method

.method private h()V
    .locals 0

    .line 1793
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->f()V

    .line 1794
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->g()V

    .line 1796
    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/GLUtils/LowProfileListener;->ActivateImmersiveMode(Landroid/app/Activity;)V

    return-void
.end method

.method private i()V
    .locals 4

    .line 1869
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->o:Landroid/widget/RelativeLayout;

    .line 1870
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->p:Landroid/view/SurfaceView;

    .line 1873
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->p:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setEnabled(Z)V

    .line 1874
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->p:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 1875
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->p:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 1877
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->p:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1878
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->o:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->p:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1879
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->setContentView(Landroid/view/View;)V

    .line 1882
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->o:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$1;-><init>(Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1896
    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->o:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftA8HM/GLUtils/TopLayer;->SetContainer(Landroid/view/ViewGroup;)V

    .line 1897
    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/FrameworkApplication;->getContext(Landroid/app/Activity;)Landroid/content/Context;

    .line 1902
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftA8HM/GLUtils/Tracking;->init()V

    .line 1906
    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/GLUtils/CrashlyticsUtils;->Init(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1910
    invoke-virtual {p0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "StartCopyFile"

    .line 1911
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1914
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->h()V

    .line 1915
    iput-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    .line 1920
    :cond_1
    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/installer/SilentInstaller;->Schedule(Landroid/content/Context;)V

    .line 1923
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->d()V

    return-void
.end method

.method public static isSupportGlEs30()Z
    .locals 2

    .line 2382
    sget v0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->E:I

    const/high16 v1, 0x30000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()V
    .locals 10

    .line 1954
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "alarm"

    .line 1956
    invoke-virtual {p0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1958
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v3, 0x8000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x1

    .line 1960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x384

    add-long v8, v4, v6

    invoke-virtual {v0, v3, v8, v9, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1962
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_1

    .line 1964
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1965
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 1969
    :cond_1
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

.method private k()I
    .locals 8

    .line 2241
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 2242
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2243
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2244
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2245
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x8

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    :cond_0
    if-gt v1, v2, :cond_4

    :cond_1
    if-eq v0, v6, :cond_2

    const/4 v7, 0x3

    if-ne v0, v7, :cond_3

    :cond_2
    if-le v2, v1, :cond_3

    goto :goto_0

    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :cond_4
    :goto_0
    packed-switch v0, :pswitch_data_1

    :pswitch_0
    const/4 v5, 0x1

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x8

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x9

    :goto_1
    :pswitch_3
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private l()V
    .locals 2

    .line 2402
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->m()V

    .line 2403
    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->i:Z

    if-nez v0, :cond_0

    .line 2405
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    .line 2406
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "multicastLock"

    .line 2407
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->A:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 2408
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->A:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 4

    .line 2415
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2416
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 2418
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2419
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2420
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->g:I

    .line 2421
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->h:I

    goto :goto_0

    .line 2425
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->g:I

    .line 2426
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->h:I

    .line 2430
    :goto_0
    iget v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->g:I

    iget v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->h:I

    if-ge v0, v1, :cond_1

    .line 2432
    iget v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->h:I

    .line 2433
    iget v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->g:I

    iput v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->h:I

    .line 2434
    iput v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->g:I

    :cond_1
    const/4 v0, 0x0

    .line 2444
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kfjwi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "kftt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2464
    iput v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->f:F

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 2447
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "kfjwi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_4

    const v1, 0x3f19999a    # 0.6f

    .line 2449
    iput v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->f:F

    goto :goto_2

    .line 2451
    :cond_4
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->x:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "kftt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_5

    const v1, 0x3f4ccccd    # 0.8f

    .line 2453
    iput v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->f:F

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 2470
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->p:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2471
    iget v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2472
    iget v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->h:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2475
    iget v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->f:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->v:I

    .line 2476
    iget v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->f:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->w:I

    .line 2478
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->p:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->v:I

    iget v3, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->w:I

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 2479
    iget-object v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->p:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method private n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static native setOpenGlesVersion(I)V
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2207
    new-instance v0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$2;-><init>(Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;)V

    .line 2208
    invoke-virtual {p0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2221
    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->n:Z

    .line 2223
    new-instance p1, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$3;

    invoke-direct {p1, p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$3;-><init>(Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;)V

    invoke-virtual {p0, p1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 2362
    invoke-virtual {p0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2363
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "StartCopyFile"

    const/4 v2, 0x1

    .line 2364
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2365
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2366
    invoke-virtual {p0, v2}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->a(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 2308
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2316
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->k()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 2318
    :cond_1
    iget-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->a:Z

    const/16 v0, 0x12

    if-eqz p1, :cond_3

    .line 2320
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_2

    const/16 p1, 0xb

    .line 2322
    invoke-virtual {p0, p1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    .line 2326
    invoke-virtual {p0, p1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 2331
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_4

    const/16 p1, 0xc

    .line 2333
    invoke-virtual {p0, p1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x7

    .line 2337
    invoke-virtual {p0, p1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 2370
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2371
    const-class v1, Lcom/gameloft/android/ANMP/GloftA8HM/DataTransferActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0x190

    .line 2373
    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 2344
    new-instance v0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity$4;-><init>(Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected d()V
    .locals 7

    const-string v0, "uimode"

    .line 2489
    invoke-virtual {p0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 2490
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 2492
    sput-boolean v1, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->i:Z

    .line 2493
    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftA8HM/GL2JNILib;->nativeSetStatusSafeZone(Z)V

    .line 2502
    :cond_0
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "chromebook"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2504
    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftA8HM/GL2JNILib;->nativeSetStatusChromeBook(Z)V

    .line 2505
    sput-boolean v1, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->j:Z

    .line 2507
    :cond_1
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2508
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 2510
    aget v5, v0, v4

    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 2511
    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chromeos"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v2, :cond_2

    .line 2513
    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftA8HM/GL2JNILib;->nativeSetStatusChromeBook(Z)V

    .line 2514
    sput-boolean v1, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->j:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2520
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->i:Z

    if-eqz v0, :cond_4

    const-string v0, "connectivity"

    .line 2521
    invoke-virtual {p0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->B:Landroid/net/ConnectivityManager;

    .line 2526
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x14000000

    .line 2527
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2528
    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->y:Landroid/app/PendingIntent;

    if-nez v2, :cond_5

    .line 2530
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->y:Landroid/app/PendingIntent;

    .line 2537
    :cond_5
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->t:Z

    if-nez v0, :cond_6

    .line 2539
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftA8HM/GL2JNILib;->init()V

    .line 2541
    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/PushNotification/SimplifiedAndroidUtils;->Init(Landroid/app/Activity;)V

    .line 2543
    iput-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->t:Z

    :cond_6
    return-void
.end method

.method public e()Z
    .locals 2

    .line 2552
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->B:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->B:Landroid/net/ConnectivityManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2553
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->B:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 2073
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    if-eqz v0, :cond_0

    .line 2075
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->r:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;->a(IILandroid/content/Intent;)V

    goto :goto_1

    :cond_0
    const/16 p3, 0x190

    const/4 v0, 0x1

    if-ne p3, p1, :cond_2

    if-ne p2, v0, :cond_1

    .line 2084
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->h()V

    .line 2085
    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    goto :goto_0

    .line 2089
    :cond_1
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->finish()V

    .line 2090
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->j()V

    :cond_2
    :goto_0
    const/16 p3, 0x64

    if-ne p1, p3, :cond_4

    if-ne p2, v0, :cond_3

    .line 2098
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->h()V

    .line 2099
    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    goto :goto_1

    .line 2103
    :cond_3
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->finish()V

    .line 2104
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->j()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1802
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1804
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->c:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 1805
    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->d:Z

    .line 1809
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1811
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1812
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "android.intent.action.MAIN"

    .line 1813
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1815
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->finish()V

    return-void

    .line 1823
    :cond_0
    sput-object p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->e:Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;

    .line 1826
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1827
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1828
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1829
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 p1, 0x1

    .line 1831
    iput-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->a:Z

    .line 1832
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->x:Ljava/lang/String;

    .line 1833
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1835
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1836
    invoke-virtual {p0, p1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->b(Z)V

    .line 1844
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 1846
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1847
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1848
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    const-string p1, "c++_shared"

    .line 1854
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string p1, "myAndroid"

    .line 1855
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1858
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->i()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2127
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    if-eqz v0, :cond_1

    .line 2129
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->q:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;->b(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2137
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 2144
    invoke-static {p0, p1}, Lcom/gameloft/android/ANMP/GloftA8HM/GLUtils/LowProfileListener;->onKeyDown(Landroid/app/Activity;I)V

    .line 2148
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->q:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2152
    :cond_0
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->z:Lcom/gameloft/android/ANMP/GloftA8HM/OtherInputDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/gameloft/android/ANMP/GloftA8HM/OtherInputDispatcher;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2157
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 2164
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->q:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2168
    :cond_0
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->z:Lcom/gameloft/android/ANMP/GloftA8HM/OtherInputDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/gameloft/android/ANMP/GloftA8HM/OtherInputDispatcher;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2173
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1947
    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->d:Z

    .line 1948
    iput-object p1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->c:Landroid/content/Intent;

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 2051
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2053
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    if-eqz v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->r:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;->a()V

    .line 2059
    :cond_0
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2061
    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    .line 2064
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->j()V

    .line 2066
    :cond_1
    sget-object v0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->C:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsNetworkStateReceiver;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2067
    sget-object v0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->D:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsBatteryStateReceiver;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1986
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    .line 1988
    invoke-virtual {p0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "StartCopyFile"

    .line 1989
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    .line 1993
    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->c()V

    .line 1994
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "StartCopyFile"

    .line 1995
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1996
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2000
    :cond_0
    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    if-eqz v1, :cond_2

    .line 2003
    iget-boolean v1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->u:Z

    if-eqz v1, :cond_1

    .line 2005
    iput-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->u:Z

    .line 2006
    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->l()V

    .line 2009
    :cond_1
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->r:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/b;->b()V

    .line 2044
    :cond_2
    sget-object v0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->C:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsNetworkStateReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2045
    sget-object v0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->D:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsBatteryStateReceiver;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/UtilsBatteryStateReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2115
    iget-boolean v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->q:Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;

    invoke-virtual {v0, p1}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/a/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2120
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1931
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 1938
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftA8HM/GL2JNILib;->FreeMemory()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1976
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 1979
    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftA8HM/GLUtils/LowProfileListener;->ActivateImmersiveMode(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 2179
    iget-boolean p2, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    if-eqz p2, :cond_0

    .line 2181
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/JNIBridge;->NativeSurfaceChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 2193
    iget-boolean p1, p0, Lcom/gameloft/android/ANMP/GloftA8HM/MainActivity;->s:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2195
    invoke-static {p1, v0, v0}, Lcom/gameloft/android/ANMP/GloftA8HM/PackageUtils/JNIBridge;->NativeSurfaceChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method
