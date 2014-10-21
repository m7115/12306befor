.class Lcn/domob/wall/core/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/k;->c(Lcn/domob/wall/core/k;)V
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
    .line 62
    iput-object p1, p0, Lcn/domob/wall/core/k$1;->a:Lcn/domob/wall/core/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 67
    :goto_0
    :try_start_0
    invoke-static {}, Lcn/domob/wall/core/k;->i()Lcn/domob/wall/core/p;

    move-result-object v0

    const-string v1, "imp report thread start to sleep %s seconds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x12c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcn/domob/wall/core/k$1;->a:Lcn/domob/wall/core/k;

    invoke-static {v0}, Lcn/domob/wall/core/k;->a(Lcn/domob/wall/core/k;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-static {}, Lcn/domob/wall/core/k;->i()Lcn/domob/wall/core/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
