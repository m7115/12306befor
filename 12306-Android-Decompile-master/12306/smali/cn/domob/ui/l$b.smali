.class Lcn/domob/ui/l$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/l;


# direct methods
.method private constructor <init>(Lcn/domob/ui/l;)V
    .locals 0
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lcn/domob/ui/l$b;->a:Lcn/domob/ui/l;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/domob/ui/l;Lcn/domob/ui/l$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Lcn/domob/ui/l$b;-><init>(Lcn/domob/ui/l;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1065
    .line 1067
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/domob/ui/l$b;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->n(Lcn/domob/ui/l;)Lcn/domob/ui/DGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/DGallery;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1068
    iget-object v0, p0, Lcn/domob/ui/l$b;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->o(Lcn/domob/ui/l;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1070
    :cond_1
    :goto_1
    iget-object v2, p0, Lcn/domob/ui/l$b;->a:Lcn/domob/ui/l;

    invoke-static {v2}, Lcn/domob/ui/l;->p(Lcn/domob/ui/l;)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    if-ge v0, v2, :cond_2

    .line 1071
    add-int/lit8 v0, v0, 0x1

    .line 1073
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    :goto_2
    iget-object v2, p0, Lcn/domob/ui/l$b;->a:Lcn/domob/ui/l;

    invoke-static {v2}, Lcn/domob/ui/l;->q(Lcn/domob/ui/l;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1078
    goto :goto_1

    .line 1074
    :catch_0
    move-exception v2

    .line 1075
    invoke-static {}, Lcn/domob/ui/l;->b()Lcn/domob/ui/o;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/domob/ui/o;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1082
    :cond_2
    iget-object v0, p0, Lcn/domob/ui/l$b;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->n(Lcn/domob/ui/l;)Lcn/domob/ui/DGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/DGallery;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcn/domob/ui/l$b;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->o(Lcn/domob/ui/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcn/domob/ui/l$b;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->m(Lcn/domob/ui/l;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/ui/l$b$1;

    invoke-direct {v2, p0}, Lcn/domob/ui/l$b$1;-><init>(Lcn/domob/ui/l$b;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1100
    :cond_3
    return-void
.end method
