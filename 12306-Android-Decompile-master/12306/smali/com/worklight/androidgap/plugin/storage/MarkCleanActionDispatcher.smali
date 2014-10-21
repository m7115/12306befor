.class public Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.source "MarkCleanActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;
    }
.end annotation


# static fields
.field private static final PARAM_DOCS:Ljava/lang/String; = "docs"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const-string v0, "markClean"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v0, "docs"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 34
    const-string v0, "options"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 35
    return-void
.end method

.method private getDocs(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/json/JSONArray;
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const-string v0, "docs"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getArrayParameter(Ljava/lang/String;)Lorg/json/JSONArray;

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
    const/16 v11, 0xf

    .line 46
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;->getDocs(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/json/JSONArray;

    move-result-object v2

    .line 50
    .local v2, docs:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 51
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 52
    .local v1, doc:Lorg/json/JSONObject;
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;

    const-string v8, "_id"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "_operation"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v0, p0, v8, v9, v10}, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;-><init>(Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;ILjava/lang/String;Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$1;)V

    .line 55
    .local v0, action:Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->performWritableDatabaseAction(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 56
    .local v6, rc:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gtz v8, :cond_0

    .line 57
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    sget-object v9, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v10, 0xf

    invoke-direct {v8, v9, v10}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0           #action:Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;
    .end local v1           #doc:Lorg/json/JSONObject;
    .end local v6           #rc:Ljava/lang/Integer;
    :goto_1
    return-object v8

    .line 60
    .restart local v0       #action:Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;
    .restart local v1       #doc:Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 62
    .local v7, t:Ljava/lang/Throwable;
    const-string v5, "Failed trying to mark document clean"

    .line 63
    .local v5, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    .local v3, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    invoke-virtual {v8, v5, v3}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    sget-object v9, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v8, v9, v11}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto :goto_1

    .line 50
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #t:Ljava/lang/Throwable;
    .restart local v6       #rc:Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .end local v0           #action:Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;
    .end local v1           #doc:Lorg/json/JSONObject;
    .end local v6           #rc:Ljava/lang/Integer;
    :cond_1
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    sget-object v9, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto :goto_1
.end method
