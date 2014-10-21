.class public Lcom/worklight/androidgap/plugin/storage/IsDirtyActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;
.source "IsDirtyActionDispatcher.java"


# static fields
.field private static final PARAM_OBJ:Ljava/lang/String; = "obj"

.field private static final SQL_IS_DIRTY:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {0} > 0 AND _id = {2}"


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 26
    const-string v0, "isDirty"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v0, "obj"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const/4 v2, 0x0

    sget-object v3, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/IsDirtyActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 32
    return-void
.end method

.method private getId(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)I
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 44
    const-string v0, "obj"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getObjectParameter(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected getFormattedQuery(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "SELECT {0} FROM {1} WHERE {0} > 0 AND _id = {2}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "_dirty"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/IsDirtyActionDispatcher;->getId(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getModifiedResultValue(I)I
    .locals 0
    .parameter "result"

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    const/4 p1, 0x1

    .line 55
    .end local p1
    :cond_0
    return p1
.end method

.method protected getNotFoundResultValue()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method protected logResult(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;I)V
    .locals 3
    .parameter "context"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/IsDirtyActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/storage/IsDirtyActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is document with ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/IsDirtyActionDispatcher;->getId(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in database \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dirty? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez p2, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void

    .line 67
    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method
