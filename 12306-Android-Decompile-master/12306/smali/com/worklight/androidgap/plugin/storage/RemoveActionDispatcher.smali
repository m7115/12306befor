.class public Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "RemoveActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;
    }
.end annotation


# static fields
.field private static final OPTION_EXACT:Ljava/lang/String; = "exact"

.field private static final OPTION_IS_ERASE:Ljava/lang/String; = "isErase"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"

.field private static final PARAM_QUERY_OBJ:Ljava/lang/String; = "queryObj"


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    const-string v0, "remove"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v0, "queryObj"

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 41
    const-string v0, "options"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 43
    return-void
.end method

.method private getOptions(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/json/JSONObject;
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const-string v0, "options"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getObjectParameter(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getQueryObj(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const-string v0, "queryObj"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getUntypedParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, action:Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;
    const/4 v3, 0x0

    .line 61
    .local v3, isErase:Z
    const/4 v4, 0x0

    .line 62
    .local v4, exact:Z
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;->getOptions(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/json/JSONObject;

    move-result-object v6

    .line 63
    .local v6, options:Lorg/json/JSONObject;
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;->getQueryObj(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/Object;

    move-result-object v7

    .line 64
    .local v7, queryObj:Ljava/lang/Object;
    const/4 v8, 0x0

    .line 68
    .local v8, result:Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 69
    const-string v1, "isErase"

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 70
    const-string v1, "exact"

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 73
    :cond_0
    instance-of v1, v7, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 74
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;

    .end local v0           #action:Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;
    move-object v2, v7

    check-cast v2, Lorg/json/JSONObject;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;-><init>(Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;Lorg/json/JSONObject;ZZLcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$1;)V

    .line 84
    .restart local v0       #action:Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->performWritableDatabaseAction(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 92
    .end local v8           #result:Ljava/lang/Object;
    :goto_1
    instance-of v1, v8, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 95
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v1, v2, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    .line 101
    :goto_2
    return-object v1

    .line 78
    .restart local v8       #result:Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;

    .end local v0           #action:Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;
    move-object v2, v7

    check-cast v2, Lorg/json/JSONArray;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;-><init>(Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;Lorg/json/JSONArray;ZZLcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$1;)V

    .restart local v0       #action:Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher$RemoveAction;
    goto :goto_0

    .line 101
    .end local v8           #result:Ljava/lang/Object;
    :cond_2
    new-instance v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedPluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    check-cast v8, Lorg/json/JSONArray;

    invoke-direct {v1, v2, v8}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedPluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V

    goto :goto_2

    .line 87
    .restart local v8       #result:Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
