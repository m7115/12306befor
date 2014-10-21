.class Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;
.super Ljava/lang/Object;
.source "FindActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindAction"
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
.field private exact:Ljava/lang/Boolean;

.field private limit:Ljava/lang/String;

.field private offset:Ljava/lang/String;

.field private queryObj:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;


# direct methods
.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter "queryObj"

    .prologue
    const/4 v0, 0x0

    .line 149
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->this$0:Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->limit:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->offset:Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->exact:Ljava/lang/Boolean;

    .line 150
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->queryObj:Lorg/json/JSONObject;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;Lorg/json/JSONObject;Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;-><init>(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$100(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->setLimit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->setOffset(Ljava/lang/String;)V

    return-void
.end method

.method private getLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->limit:Ljava/lang/String;

    return-object v0
.end method

.method private getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->offset:Ljava/lang/String;

    return-object v0
.end method

.method private setLimit(Ljava/lang/String;)V
    .locals 1
    .parameter "limit"

    .prologue
    .line 158
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->limit:Ljava/lang/String;

    .line 159
    return-void
.end method

.method private setOffset(Ljava/lang/String;)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 166
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->offset:Ljava/lang/String;

    .line 167
    return-void
.end method


# virtual methods
.method public getExact()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->exact:Ljava/lang/Boolean;

    return-object v0
.end method

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
    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Lorg/json/JSONArray;
    .locals 12
    .parameter "schema"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v10, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;

    invoke-direct {v10}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;-><init>()V

    .line 186
    .local v10, result:Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->queryObj:Lorg/json/JSONObject;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "json"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_deleted = 0"

    aput-object v4, v3, v0

    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->getLimit()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->getOffset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->getExact()Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->findUsingQueryObject(Lorg/json/JSONObject;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/database/Cursor;

    move-result-object v7

    .line 189
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 191
    .local v11, resultSize:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v11, :cond_0

    .line 192
    new-instance v9, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;

    invoke-direct {v9}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;-><init>()V

    .line 194
    .local v9, item:Lorg/json/JSONObject;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 196
    const-string v0, "_id"

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string v0, "json"

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->deserializeJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 191
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 203
    .end local v9           #item:Lorg/json/JSONObject;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 205
    return-object v10
.end method

.method public setExact(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "exact"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher$FindAction;->exact:Ljava/lang/Boolean;

    .line 175
    return-void
.end method
