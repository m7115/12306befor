.class public Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "ReplaceActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;
    }
.end annotation


# static fields
.field private static final OPTION_IS_REFRESH:Ljava/lang/String; = "isRefresh"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"

.field private static final PARAM_TO_UPDATE:Ljava/lang/String; = "toUpdate"


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    const-string v0, "replace"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v0, "toUpdate"

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 40
    const-string v0, "options"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 42
    return-void
.end method

.method private getOptions(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/json/JSONObject;
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const-string v0, "options"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getObjectParameter(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getToUpdate(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const-string v0, "toUpdate"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getUntypedParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, action:Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;
    const/4 v1, 0x0

    .line 59
    .local v1, isRefresh:Z
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;->getOptions(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 60
    .local v2, options:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 61
    .local v3, result:Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;->getToUpdate(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/Object;

    move-result-object v4

    .line 65
    .local v4, toUpdate:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 66
    const-string v5, "isRefresh"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 70
    :cond_0
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 71
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;

    .end local v0           #action:Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;
    check-cast v4, Lorg/json/JSONObject;

    .end local v4           #toUpdate:Ljava/lang/Object;
    invoke-direct {v0, p0, v4, v1, v6}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;-><init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONObject;ZLcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$1;)V

    .line 83
    .restart local v0       #action:Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->performWritableDatabaseAction(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 91
    .end local v3           #result:Ljava/lang/Object;
    :goto_1
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 94
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    .line 100
    :goto_2
    return-object v5

    .line 76
    .restart local v3       #result:Ljava/lang/Object;
    .restart local v4       #toUpdate:Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;

    .end local v0           #action:Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;
    check-cast v4, Lorg/json/JSONArray;

    .end local v4           #toUpdate:Ljava/lang/Object;
    invoke-direct {v0, p0, v4, v1, v6}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;-><init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONArray;ZLcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$1;)V

    .restart local v0       #action:Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;
    goto :goto_0

    .line 100
    .end local v3           #result:Ljava/lang/Object;
    :cond_2
    new-instance v5, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedPluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    check-cast v3, Lorg/json/JSONArray;

    invoke-direct {v5, v6, v3}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedPluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V

    goto :goto_2

    .line 86
    .restart local v3       #result:Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_1
.end method
