.class final Lc/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/b;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lc/b;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lc/c;->a:Lc/b;

    iput-object p2, p0, Lc/c;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc/c;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
