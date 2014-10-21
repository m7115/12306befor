.class Lcom/tl/uic/TLFCache$2;
.super Ljava/lang/Object;
.source "TLFCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/TLFCache;->flushPostTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 383
    :try_start_0
    invoke-static {}, Lcom/tl/uic/TLFCache;->closePostTask()Ljava/lang/Boolean;

    .line 384
    new-instance v1, Lcom/tl/uic/util/PostTask;

    invoke-direct {v1}, Lcom/tl/uic/util/PostTask;-><init>()V

    invoke-static {v1}, Lcom/tl/uic/TLFCache;->access$1(Lcom/tl/uic/util/PostTask;)V

    .line 385
    invoke-static {}, Lcom/tl/uic/TLFCache;->access$0()Lcom/tl/uic/util/PostTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/tl/uic/util/PostTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
