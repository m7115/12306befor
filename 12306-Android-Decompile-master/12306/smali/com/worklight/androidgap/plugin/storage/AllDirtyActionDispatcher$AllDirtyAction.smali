.class Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;
.super Ljava/lang/Object;
.source "AllDirtyActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllDirtyAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction",
        "<",
        "Ljava/util/List",
        "<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private context:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;


# direct methods
.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;->this$0:Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;->context:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;-><init>(Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)V

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
    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/util/List;
    .locals 10
    .parameter "schema"
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;",
            "Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 133
    .local v4, result:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/json/JSONObject;>;"
    const-string v6, "SELECT {0}, {1}, {2}, {3} FROM {4} WHERE {3} > 0 ORDER BY {3}"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "json"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "_operation"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "_dirty"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher$AllDirtyAction;->context:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

    invoke-virtual {v9}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getDatabaseName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, sql:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 143
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 145
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 146
    new-instance v3, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;

    invoke-direct {v3}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;-><init>()V

    .line 148
    .local v3, obj:Lorg/json/JSONObject;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 150
    const-string v6, "_id"

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    const-string v6, "json"

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->deserializeJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v6, "_operation"

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v6, "_dirty"

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 157
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v3           #obj:Lorg/json/JSONObject;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 162
    return-object v4
.end method
