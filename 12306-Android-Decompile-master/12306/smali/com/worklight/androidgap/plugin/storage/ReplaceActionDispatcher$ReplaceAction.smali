.class Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;
.super Ljava/lang/Object;
.source "ReplaceActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplaceAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private isRefresh:Z

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

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;


# direct methods
.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONArray;Z)V
    .locals 4
    .parameter
    .parameter "array"
    .parameter "isRefresh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p3}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;-><init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Z)V

    .line 123
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 125
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->objs:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONArray;ZLcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;-><init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONArray;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONObject;Z)V
    .locals 1
    .parameter
    .parameter "obj"
    .parameter "isRefresh"

    .prologue
    .line 114
    invoke-direct {p0, p1, p3}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;-><init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Z)V

    .line 116
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->objs:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONObject;ZLcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;-><init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;Z)V
    .locals 1
    .parameter
    .parameter "isRefresh"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->this$0:Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean p2, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->isRefresh:Z

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->objs:Ljava/util/LinkedList;

    .line 111
    return-void
.end method


# virtual methods
.method public performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Object;
    .locals 9
    .parameter "schema"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;

    invoke-direct {v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;-><init>()V

    .line 134
    .local v1, failures:Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 138
    .local v5, updatedCount:I
    iget-object v6, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->objs:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 140
    .local v3, obj:Lorg/json/JSONObject;
    :try_start_0
    iget-boolean v6, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->isRefresh:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p2, v3, v6}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->update(Lorg/json/JSONObject;Z)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 142
    .local v4, result:I
    add-int/2addr v5, v4

    goto :goto_0

    .line 140
    .end local v4           #result:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->this$0:Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;

    iget-object v6, v6, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    iget-object v6, p0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher$ReplaceAction;->this$0:Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;

    iget-object v6, v6, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error while updating document on database \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :cond_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 159
    .end local v0           #e:Ljava/lang/Throwable;
    .end local v3           #obj:Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 160
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 164
    .end local v1           #failures:Lorg/json/JSONArray;
    :cond_3
    return-object v1
.end method
