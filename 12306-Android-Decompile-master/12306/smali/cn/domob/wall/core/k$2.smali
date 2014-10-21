.class Lcn/domob/wall/core/k$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/k;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/k;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/k;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcn/domob/wall/core/k$2;->a:Lcn/domob/wall/core/k;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    :try_start_0
    sget-boolean v0, Lcn/domob/wall/core/d;->a:Z

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcn/domob/wall/core/d;

    iget-object v1, p0, Lcn/domob/wall/core/k$2;->a:Lcn/domob/wall/core/k;

    invoke-direct {v0, v1}, Lcn/domob/wall/core/d;-><init>(Lcn/domob/wall/core/k;)V

    invoke-virtual {v0}, Lcn/domob/wall/core/d;->a()V

    .line 108
    :cond_0
    new-instance v0, Lcn/domob/wall/core/i;

    iget-object v1, p0, Lcn/domob/wall/core/k$2;->a:Lcn/domob/wall/core/k;

    invoke-direct {v0, v1}, Lcn/domob/wall/core/i;-><init>(Lcn/domob/wall/core/k;)V

    invoke-virtual {v0}, Lcn/domob/wall/core/i;->a()V
    :try_end_0
    .catch Lcn/domob/wall/core/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {}, Lcn/domob/wall/core/k;->i()Lcn/domob/wall/core/p;

    move-result-object v0

    const-string v1, "Config request is ongoing, Thread will sleep 1 seconds, and then restart to request"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :catch_1
    move-exception v0

    .line 115
    invoke-static {}, Lcn/domob/wall/core/k;->i()Lcn/domob/wall/core/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
