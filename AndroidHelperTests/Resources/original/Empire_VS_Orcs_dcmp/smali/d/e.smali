.class final Ld/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ld/a;


# direct methods
.method constructor <init>(Ld/a;)V
    .locals 0

    iput-object p1, p0, Ld/e;->a:Ld/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld/e;->a:Ld/a;

    invoke-static {v0}, Ld/a;->a(Ld/a;)Lb/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a;->g()V

    return-void
.end method
