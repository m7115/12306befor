.class public Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "AllDirtyActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;
    }
.end annotation


# static fields
.field private static final PARAM_SELECTED_DOCS:Ljava/lang/String; = "selectedDocs"

.field private static final SQL_ALL_DIRTY:Ljava/lang/String; = "SELECT {0}, {1}, {2}, {3} FROM {4} WHERE {3} > 0 ORDER BY {3}"


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 39
    const-string v0, "allDirty"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v0, "selectedDocs"

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 48
    return-void
.end method

.method private getSelectedDocs(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const-string v0, "selectedDocs"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getUntypedParameter(Ljava/lang/String;)Ljava/lang/Object;

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
    .line 60
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 61
    .local v5, idsToCheck:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;->getSelectedDocs(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/Object;

    move-result-object v9

    .line 62
    .local v9, selectedDocs:Ljava/lang/Object;
    new-instance v8, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;

    invoke-direct {v8}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;-><init>()V

    .line 64
    .local v8, result:Lorg/json/JSONArray;
    new-instance v10, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;

    const/4 v11, 0x0

    invoke-direct {v10, p0, p1, v11}, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;-><init>(Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$1;)V

    invoke-virtual {p1, v10}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->performReadableDatabaseAction(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 67
    .local v0, actionResult:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    if-eqz v9, :cond_0

    .line 68
    instance-of v10, v9, Lorg/json/JSONObject;

    if-eqz v10, :cond_1

    .line 73
    check-cast v9, Lorg/json/JSONObject;

    .end local v9           #selectedDocs:Ljava/lang/Object;
    const-string v10, "_id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 76
    .local v4, id:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v4           #id:I
    :cond_0
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v10

    if-nez v10, :cond_2

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 103
    .local v7, obj:Lorg/json/JSONObject;
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #obj:Lorg/json/JSONObject;
    .restart local v9       #selectedDocs:Ljava/lang/Object;
    :cond_1
    move-object v1, v9

    .line 80
    check-cast v1, Lorg/json/JSONArray;

    .line 81
    .local v1, array:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 86
    .local v6, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 88
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 90
    .restart local v7       #obj:Lorg/json/JSONObject;
    const-string v10, "_id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 92
    .restart local v4       #id:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v4           #id:I
    .end local v6           #length:I
    .end local v7           #obj:Lorg/json/JSONObject;
    .end local v9           #selectedDocs:Ljava/lang/Object;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 108
    .restart local v7       #obj:Lorg/json/JSONObject;
    const-string v10, "_id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 110
    .restart local v4       #id:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 111
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 115
    .end local v4           #id:I
    .end local v7           #obj:Lorg/json/JSONObject;
    :cond_4
    new-instance v10, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedPluginResult;

    sget-object v11, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v10, v11, v8}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedPluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V

    return-object v10
.end method
