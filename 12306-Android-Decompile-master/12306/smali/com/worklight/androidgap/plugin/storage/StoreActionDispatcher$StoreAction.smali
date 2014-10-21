.class Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;
.super Ljava/lang/Object;
.source "StoreActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private addIndexes:Lorg/json/JSONObject;

.field private isAdd:Z

.field private objs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;


# direct methods
.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONArray;ZLorg/json/JSONObject;)V
    .locals 4
    .parameter
    .parameter "objs"
    .parameter "isAdd"
    .parameter "addIndexes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0, p1, p3, p4}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;-><init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;ZLorg/json/JSONObject;)V

    .line 146
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 148
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 149
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->objs:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONArray;ZLorg/json/JSONObject;Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;-><init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONArray;ZLorg/json/JSONObject;)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONObject;ZLorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter "obj"
    .parameter "isAdd"
    .parameter "addIndexes"

    .prologue
    .line 137
    invoke-direct {p0, p1, p3, p4}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;-><init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;ZLorg/json/JSONObject;)V

    .line 139
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->objs:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONObject;ZLorg/json/JSONObject;Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;-><init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;Lorg/json/JSONObject;ZLorg/json/JSONObject;)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;ZLorg/json/JSONObject;)V
    .locals 1
    .parameter
    .parameter "isAdd"
    .parameter "addIndexes"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->this$0:Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->addIndexes:Lorg/json/JSONObject;

    .line 132
    iput-boolean p2, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->isAdd:Z

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->objs:Ljava/util/LinkedList;

    .line 134
    return-void
.end method


# virtual methods
.method public performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Integer;
    .locals 10
    .parameter "schema"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 161
    .local v0, docsStored:I
    :try_start_0
    iget-object v7, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->objs:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 162
    .local v4, obj:Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->addIndexes:Lorg/json/JSONObject;

    invoke-virtual {p1, v4, v7}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->mapObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 167
    .local v3, mappedObj:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "json"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-boolean v7, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->isAdd:Z

    if-eqz v7, :cond_0

    .line 171
    const-string v7, "_dirty"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v7, "_operation"

    const-string v8, "add"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :goto_1
    invoke-virtual {p2, v3}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->insert(Ljava/util/Map;)J

    move-result-wide v5

    .line 185
    .local v5, rc:J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v5           #rc:J
    :cond_0
    const-string v7, "_dirty"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v7, "_operation"

    const-string v8, "store"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 198
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mappedObj:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 202
    .local v1, e:Ljava/lang/Throwable;
    iget-object v7, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->this$0:Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;

    iget-object v7, v7, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 203
    iget-object v7, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->this$0:Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;

    iget-object v7, v7, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error while storing items in database \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 188
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #mappedObj:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4       #obj:Lorg/json/JSONObject;
    .restart local v5       #rc:J
    :cond_2
    const/4 v0, -0x1

    .line 189
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    const-string v7, "Error inserting row"

    invoke-direct {v1, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->this$0:Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;

    iget-object v7, v7, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const-string v8, "Could not insert document"

    invoke-virtual {v7, v8, v1}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    iget-object v7, p0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->this$0:Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;

    iget-object v7, v7, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Object was: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;)V

    .line 192
    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public bridge synthetic performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher$StoreAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
