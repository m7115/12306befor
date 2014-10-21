.class public Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "FindByIdActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;
    }
.end annotation


# static fields
.field private static final PARAM_IDS:Ljava/lang/String; = "ids"


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 36
    const-string v0, "findById"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v0, "ids"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const/4 v2, 0x0

    sget-object v3, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 42
    return-void
.end method

.method private getIds(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/json/JSONArray;
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const-string v0, "ids"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getArrayParameter(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v6, 0x16

    .line 52
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;->getIds(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 55
    .local v1, ids:Lorg/json/JSONArray;
    :try_start_0
    new-instance v3, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;-><init>(Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;Lorg/json/JSONArray;Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$1;)V

    invoke-virtual {p1, v3}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->performReadableDatabaseAction(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 58
    .local v2, result:Lorg/json/JSONArray;
    if-nez v2, :cond_0

    .line 61
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v5, 0x16

    invoke-direct {v3, v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    .line 79
    .end local v2           #result:Lorg/json/JSONArray;
    :goto_0
    return-object v3

    .line 65
    .restart local v2       #result:Lorg/json/JSONArray;
    :cond_0
    new-instance v3, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedPluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v2}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedPluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v2           #result:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while executing find by ID query on database \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :cond_1
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto :goto_0
.end method
