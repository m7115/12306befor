.class public Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "FindActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;
    }
.end annotation


# static fields
.field private static final OPTION_EXACT:Ljava/lang/String; = "exact"

.field private static final OPTION_LIMIT:Ljava/lang/String; = "limit"

.field private static final OPTION_OFFSET:Ljava/lang/String; = "offset"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"

.field private static final PARAM_QUERY_OBJ:Ljava/lang/String; = "queryObj"


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 39
    const-string v0, "find"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v0, "queryObj"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 46
    const-string v0, "options"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v3, v1}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 48
    return-void
.end method

.method private getOptions(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/json/JSONObject;
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const-string v0, "options"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getObjectParameter(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getQueryObj(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/json/JSONArray;
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const-string v0, "queryObj"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getArrayParameter(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .locals 21
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    .local v16, resultHash:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    invoke-direct/range {p0 .. p1}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;->getQueryObj(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/json/JSONArray;

    move-result-object v13

    .line 70
    .local v13, queryArray:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_5

    .line 71
    invoke-virtual {v13, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 73
    .local v14, queryObj:Lorg/json/JSONObject;
    new-instance v2, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v14, v1}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;-><init>(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;Lorg/json/JSONObject;Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$1;)V

    .line 76
    .local v2, action:Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;
    invoke-direct/range {p0 .. p1}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;->getOptions(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/json/JSONObject;

    move-result-object v12

    .line 79
    .local v12, options:Lorg/json/JSONObject;
    const-string v17, "exact"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 80
    .local v5, exact:Ljava/lang/Boolean;
    invoke-virtual {v2, v5}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->setExact(Ljava/lang/Boolean;)V

    .line 84
    const/4 v10, 0x0

    .line 85
    .local v10, limit:Ljava/lang/String;
    const/4 v11, 0x0

    .line 88
    .local v11, offset:Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 89
    const-string v17, "limit"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 91
    if-eqz v10, :cond_0

    .line 92
    #calls: Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->setLimit(Ljava/lang/String;)V
    invoke-static {v2, v10}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->access$100(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;Ljava/lang/String;)V

    .line 95
    :cond_0
    const-string v17, "offset"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 97
    if-eqz v11, :cond_1

    .line 98
    #calls: Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->setOffset(Ljava/lang/String;)V
    invoke-static {v2, v11}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->access$200(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;Ljava/lang/String;)V

    .line 102
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->performReadableDatabaseAction(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONArray;

    .line 104
    .local v15, result:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    const-string v18, "find query result:"

    invoke-virtual/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 109
    :cond_2
    if-eqz v15, :cond_4

    .line 112
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    .line 113
    invoke-virtual {v15, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 114
    .local v9, jso:Lorg/json/JSONObject;
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 115
    .local v7, id:Ljava/lang/Integer;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 116
    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 70
    .end local v7           #id:Ljava/lang/Integer;
    .end local v8           #j:I
    .end local v9           #jso:Lorg/json/JSONObject;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 122
    .end local v2           #action:Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;
    .end local v5           #exact:Ljava/lang/Boolean;
    .end local v10           #limit:Ljava/lang/String;
    .end local v11           #offset:Ljava/lang/String;
    .end local v12           #options:Lorg/json/JSONObject;
    .end local v14           #queryObj:Lorg/json/JSONObject;
    .end local v15           #result:Lorg/json/JSONArray;
    :cond_5
    new-instance v17, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedPluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    new-instance v19, Lorg/json/JSONArray;

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v17 .. v19}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedPluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v6           #i:I
    .end local v13           #queryArray:Lorg/json/JSONArray;
    .end local v16           #resultHash:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lorg/json/JSONObject;>;"
    :goto_2
    return-object v17

    .line 126
    :catch_0
    move-exception v3

    .line 127
    .local v3, e:Ljava/lang/Throwable;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error while executing find query on database \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getDatabaseName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, errorStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v3}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    :cond_6
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v19, 0x16

    invoke-direct/range {v17 .. v19}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto :goto_2
.end method
