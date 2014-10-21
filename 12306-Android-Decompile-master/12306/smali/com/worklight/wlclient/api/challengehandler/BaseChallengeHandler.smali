.class public abstract Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;
.super Ljava/lang/Object;
.source "BaseChallengeHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected activeRequest:Lcom/worklight/wlclient/WLRequest;

.field private realm:Ljava/lang/String;

.field private requestWaitingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/worklight/wlclient/WLRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "realm"

    .prologue
    .line 41
    .local p0, this:Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;,"Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->activeRequest:Lcom/worklight/wlclient/WLRequest;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->requestWaitingList:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->realm:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private clearChallengeRequests()V
    .locals 1

    .prologue
    .line 86
    .local p0, this:Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;,"Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler<TT;>;"
    monitor-enter p0

    .line 88
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->activeRequest:Lcom/worklight/wlclient/WLRequest;

    .line 89
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->clearWaitingList()V

    .line 90
    monitor-exit p0

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearWaitingList()V
    .locals 1

    .prologue
    .line 131
    .local p0, this:Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;,"Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->requestWaitingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    .local p0, this:Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;,"Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler<TT;>;"
    iget-object v0, p0, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public abstract handleChallenge(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public declared-synchronized releaseWaitingList()V
    .locals 3

    .prologue
    .line 114
    .local p0, this:Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;,"Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->requestWaitingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/worklight/wlclient/WLRequest;

    .line 117
    .local v1, request:Lcom/worklight/wlclient/WLRequest;
    iget-object v2, p0, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->realm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/worklight/wlclient/WLRequest;->removeExpectedAnswer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 114
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #request:Lcom/worklight/wlclient/WLRequest;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 121
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->clearWaitingList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    monitor-exit p0

    return-void
.end method

.method public startHandleChallenge(Lcom/worklight/wlclient/WLRequest;Ljava/lang/Object;)V
    .locals 1
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/worklight/wlclient/WLRequest;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;,"Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler<TT;>;"
    .local p2, challenge:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lcom/worklight/wlclient/WLRequest;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLRequestOptions;->isFromChallenge()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->activeRequest:Lcom/worklight/wlclient/WLRequest;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->requestWaitingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    monitor-exit p0

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->activeRequest:Lcom/worklight/wlclient/WLRequest;

    .line 67
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p0, p2}, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->handleChallenge(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected submitFailure(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 0
    .parameter "wlResponse"

    .prologue
    .line 79
    .local p0, this:Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;,"Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler<TT;>;"
    invoke-direct {p0}, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->clearChallengeRequests()V

    .line 80
    return-void
.end method
