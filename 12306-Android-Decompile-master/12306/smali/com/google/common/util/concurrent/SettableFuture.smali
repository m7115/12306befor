.class public final Lcom/google/common/util/concurrent/SettableFuture;
.super Lcom/google/common/util/concurrent/AbstractListenableFuture;
.source "SettableFuture.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractListenableFuture",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    .local p0, this:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractListenableFuture;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/SettableFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 81
    .local p0, this:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<TV;>;"
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractListenableFuture;->cancel()Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 1
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
    .line 56
    .local p0, this:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<TV;>;"
    .local p1, newValue:Ljava/lang/Object;,"TV;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractListenableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 70
    .local p0, this:Lcom/google/common/util/concurrent/SettableFuture;,"Lcom/google/common/util/concurrent/SettableFuture<TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractListenableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
