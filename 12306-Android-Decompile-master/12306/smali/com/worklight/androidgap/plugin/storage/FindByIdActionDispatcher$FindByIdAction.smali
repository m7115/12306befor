.class Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;
.super Ljava/lang/Object;
.source "FindByIdActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindByIdAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field private ids:Lorg/json/JSONArray;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;


# direct methods
.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;Lorg/json/JSONArray;)V
    .locals 0
    .parameter
    .parameter "ids"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;->this$0:Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;->ids:Lorg/json/JSONArray;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;Lorg/json/JSONArray;Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;-><init>(Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;Lorg/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Lorg/json/JSONArray;
    .locals 11
    .parameter "schema"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v9, p0, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;->ids:Lorg/json/JSONArray;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    new-array v5, v9, [I

    .line 97
    .local v5, ids:[I
    new-instance v7, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;

    invoke-direct {v7}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;-><init>()V

    .line 101
    .local v7, result:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v9, v5

    if-ge v1, v9, :cond_0

    .line 102
    iget-object v9, p0, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher$FindByIdAction;->ids:Lorg/json/JSONArray;

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    aput v9, v5, v1

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {v5}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->splitArray([I)Ljava/util/List;

    move-result-object v4

    .line 105
    .local v4, idList:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 106
    .local v3, idChunk:[I
    invoke-virtual {p2, v3}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->findByIds([I)Landroid/database/Cursor;

    move-result-object v0

    .line 107
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 109
    .local v8, resultSize:I
    if-gez v8, :cond_2

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 112
    const/4 v7, 0x0

    .line 130
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v3           #idChunk:[I
    .end local v7           #result:Lorg/json/JSONArray;
    .end local v8           #resultSize:I
    :cond_1
    return-object v7

    .line 115
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v3       #idChunk:[I
    .restart local v7       #result:Lorg/json/JSONArray;
    .restart local v8       #resultSize:I
    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_3

    .line 116
    new-instance v6, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;

    invoke-direct {v6}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;-><init>()V

    .line 118
    .local v6, obj:Lorg/json/JSONObject;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 120
    const-string v9, "_id"

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v9, "json"

    const/4 v10, 0x1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->deserializeJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 127
    .end local v6           #obj:Lorg/json/JSONObject;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
