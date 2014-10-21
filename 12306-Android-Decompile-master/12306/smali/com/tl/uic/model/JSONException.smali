.class public Lcom/tl/uic/model/JSONException;
.super Lcom/tl/uic/model/ClientMessageHeader;
.source "JSONException.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x193a2a0ed8275145L


# instance fields
.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 29
    sget-object v0, Lcom/tl/uic/model/MessageType;->EXCEPTION:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/JSONException;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/JSONException;->setLogLevel(I)V

    .line 31
    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->clean()Ljava/lang/Boolean;

    .line 117
    iput-object v0, p0, Lcom/tl/uic/model/JSONException;->name:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/tl/uic/model/JSONException;->description:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/tl/uic/model/JSONException;->stackTrace:Ljava/lang/String;

    .line 120
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tl/uic/model/JSONException;->data:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tl/uic/model/JSONException;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, jsonObject:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v1, jsonInnerObject:Lorg/json/JSONObject;
    :try_start_0
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 98
    const-string v3, "name"

    invoke-virtual {p0}, Lcom/tl/uic/model/JSONException;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v3, "description"

    invoke-virtual {p0}, Lcom/tl/uic/model/JSONException;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v3, "stackTrace"

    invoke-virtual {p0}, Lcom/tl/uic/model/JSONException;->getStackTrace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    invoke-virtual {p0}, Lcom/tl/uic/model/JSONException;->getData()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 102
    const-string v3, "data"

    invoke-virtual {p0}, Lcom/tl/uic/model/JSONException;->getData()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v4}, Lcom/tl/uic/util/JsonUtil;->getHashValues(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_0
    const-string v3, "exception"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tl/uic/model/JSONException;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tl/uic/model/JSONException;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public final setData(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tl/uic/model/JSONException;->data:Ljava/util/HashMap;

    .line 87
    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tl/uic/model/JSONException;->description:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tl/uic/model/JSONException;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final setStackTrace(Ljava/lang/String;)V
    .locals 0
    .parameter "stackTrace"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tl/uic/model/JSONException;->stackTrace:Ljava/lang/String;

    .line 73
    return-void
.end method
