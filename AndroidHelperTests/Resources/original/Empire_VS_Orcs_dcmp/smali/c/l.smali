.class final Lc/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/i;


# direct methods
.method constructor <init>(Lc/i;)V
    .locals 0

    iput-object p1, p0, Lc/l;->a:Lc/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lc/l;->a:Lc/i;

    invoke-static {v0}, Lc/i;->c(Lc/i;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ezjoynetwork/render/GameActivity;->instance:Lcom/ezjoynetwork/render/GameActivity;

    const-string v2, "ezjoy.update.preference"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ezjoynetwork/render/GameActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "LastUpdateDate"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
