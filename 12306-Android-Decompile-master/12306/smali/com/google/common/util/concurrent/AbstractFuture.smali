.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFuture$Sync;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/AbstractFuture$Sync",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture;,"Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    .line 189
    return-void
.end method


# virtual methods
.method protected final cancel()Z
    .locals 2

    .prologue
    .line 156
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture;,"Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->cancel()Z

    move-result v0

    .line 157
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->done()V

    .line 160
    :cond_0
    return v0
.end method

.method public cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 103
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture;,"Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected done()V
    .locals 0

    .prologue
    .line 171
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture;,"Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture;,"Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture;,"Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->get(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture;,"Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 86
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture;,"Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->isDone()Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture;,"Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-virtual {v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->set(Ljava/lang/Object;)Z

    move-result v0

    .line 117
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->done()V

    .line 120
    :cond_0
    return v0
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 3
    .parameter "throwable"

    .prologue
    .line 134
    .local p0, this:Lcom/google/common/util/concurrent/AbstractFuture;,"Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->sync:Lcom/google/common/util/concurrent/AbstractFuture$Sync;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Sync;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    .line 135
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->done()V

    .line 141
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 142
    check-cast p1, Ljava/lang/Error;

    .end local p1
    throw p1

    .line 144
    .restart local p1
    :cond_1
    return v0
.end method