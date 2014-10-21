.class public Lcom/tl/uic/model/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4bcafe8a4a339ed0L


# instance fields
.field private clientEnvironment:Lcom/tl/uic/model/ClientEnvironment;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tl/uic/model/JSONMessage;",
            ">;"
        }
    .end annotation
.end field

.field private sessionID:Ljava/lang/String;

.field private sessionStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/tl/uic/model/Session;->messages:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final cleanMessages()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tl/uic/model/Session;->messages:Ljava/util/List;

    invoke-static {v0}, Lcom/tl/uic/util/GCUtil;->clean(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getClientEnvironment()Lcom/tl/uic/model/ClientEnvironment;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tl/uic/model/Session;->clientEnvironment:Lcom/tl/uic/model/ClientEnvironment;

    return-object v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 104
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v4, mainJsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "id"

    invoke-virtual {p0}, Lcom/tl/uic/model/Session;->getSessionID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v5, "startTime"

    invoke-virtual {p0}, Lcom/tl/uic/model/Session;->getSessionStartTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 108
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 109
    .local v3, jsonSessions:Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/tl/uic/model/Session;->getMessages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 113
    const-string v5, "messages"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v5, "clientEnvironment"

    invoke-virtual {p0}, Lcom/tl/uic/model/Session;->getClientEnvironment()Lcom/tl/uic/model/ClientEnvironment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tl/uic/model/ClientEnvironment;->getJSON()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    .end local v3           #jsonSessions:Lorg/json/JSONArray;
    :goto_1
    return-object v4

    .line 109
    .restart local v3       #jsonSessions:Lorg/json/JSONArray;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tl/uic/model/JSONMessage;

    .line 110
    .local v1, jsonClass:Lcom/tl/uic/model/JSONMessage;
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/tl/uic/model/JSONMessage;->getJsonData()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, jsonObject:Lorg/json/JSONObject;
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v1           #jsonClass:Lcom/tl/uic/model/JSONMessage;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #jsonSessions:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tl/uic/model/JSONMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tl/uic/model/Session;->messages:Ljava/util/List;

    return-object v0
.end method

.method public final getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tl/uic/model/Session;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionStartTime()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/tl/uic/model/Session;->sessionStartTime:J

    return-wide v0
.end method

.method public final setClientEnvironment(Lcom/tl/uic/model/ClientEnvironment;)V
    .locals 0
    .parameter "clientEnvironment"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tl/uic/model/Session;->clientEnvironment:Lcom/tl/uic/model/ClientEnvironment;

    .line 97
    return-void
.end method

.method public final setMessages(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tl/uic/model/JSONMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<Lcom/tl/uic/model/JSONMessage;>;"
    iput-object p1, p0, Lcom/tl/uic/model/Session;->messages:Ljava/util/List;

    .line 83
    return-void
.end method

.method public final setSessionID(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionID"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tl/uic/model/Session;->sessionID:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public final setSessionStartTime(J)V
    .locals 0
    .parameter "sessionStartTime"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/tl/uic/model/Session;->sessionStartTime:J

    .line 61
    return-void
.end method
