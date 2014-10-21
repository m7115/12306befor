.class public Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "StoreActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;
    }
.end annotation


# static fields
.field private static final OPTION_ADD_INDEXES:Ljava/lang/String; = "additionalSearchFields"

.field private static final OPTION_IS_ADD:Ljava/lang/String; = "isAdd"

.field private static final OPTION_IS_ARRAY:Ljava/lang/String; = "isArray"

.field private static final PARAM_DATA:Ljava/lang/String; = "data"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const-string v0, "store"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v0, "data"

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 43
    const-string v0, "options"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 45
    return-void
.end method

.method private getData(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getUntypedParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getOptions(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/json/JSONObject;
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const-string v0, "options"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getObjectParameter(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 61
    const/4 v4, 0x0

    .line 62
    .local v4, addIndexes:Lorg/json/JSONObject;
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;->getData(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/Object;

    move-result-object v6

    .line 63
    .local v6, data:Ljava/lang/Object;
    const/4 v7, 0x0

    .line 64
    .local v7, docsStored:I
    const/4 v8, 0x0

    .line 65
    .local v8, expectedDocsStored:I
    const/4 v3, 0x0

    .line 66
    .local v3, isAdd:Z
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;->getOptions(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/json/JSONObject;

    move-result-object v9

    .line 67
    .local v9, options:Lorg/json/JSONObject;
    const/4 v10, 0x0

    .line 71
    .local v10, storeEntireArray:Z
    if-eqz v9, :cond_0

    .line 72
    const-string v1, "additionalSearchFields"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 74
    const-string v1, "isAdd"

    invoke-virtual {v9, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 76
    const-string v1, "isArray"

    invoke-virtual {v9, v1, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 82
    :cond_0
    if-nez v10, :cond_1

    instance-of v1, v6, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 85
    :cond_1
    const/4 v8, 0x1

    .line 91
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;

    move-object v2, v6

    check-cast v2, Lorg/json/JSONObject;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;-><init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONObject;ZLorg/json/JSONObject;Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$1;)V

    .line 108
    .local v0, action:Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->performWritableDatabaseAction(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 116
    :goto_1
    if-eq v7, v8, :cond_3

    .line 119
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v5, v7}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    .line 122
    :goto_2
    return-object v1

    .end local v0           #action:Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;
    :cond_2
    move-object v2, v6

    .line 96
    check-cast v2, Lorg/json/JSONArray;

    .line 97
    .local v2, array:Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 101
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;-><init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONArray;ZLorg/json/JSONObject;Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$1;)V

    .restart local v0       #action:Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;
    goto :goto_0

    .line 122
    .end local v2           #array:Lorg/json/JSONArray;
    :cond_3
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v5, v7}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto :goto_2

    .line 111
    :catch_0
    move-exception v1

    goto :goto_1
.end method
