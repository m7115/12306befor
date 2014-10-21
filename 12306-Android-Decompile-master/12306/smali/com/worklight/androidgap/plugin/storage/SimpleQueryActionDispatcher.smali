.class public abstract Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "SimpleQueryActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v1, -0x1

    .line 45
    .local v1, result:I
    :try_start_0
    new-instance v2, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;-><init>(Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$1;)V

    invoke-virtual {p1, v2}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->performReadableDatabaseAction(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 59
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;->getModifiedResultValue(I)I

    move-result v1

    .line 61
    invoke-virtual {p0, p1, v1}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;->logResult(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;I)V

    .line 63
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v3, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    return-object v2

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const-string v3, "error occurred while performing query:"

    invoke-virtual {v2, v3}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;->getFormattedQuery(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract getFormattedQuery(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method protected getModifiedResultValue(I)I
    .locals 0
    .parameter "result"

    .prologue
    .line 29
    return p1
.end method

.method protected getNotFoundResultValue()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, -0x1

    return v0
.end method

.method protected logResult(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;I)V
    .locals 0
    .parameter "context"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 68
    return-void
.end method
