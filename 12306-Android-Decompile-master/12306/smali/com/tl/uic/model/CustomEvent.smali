.class public Lcom/tl/uic/model/CustomEvent;
.super Lcom/tl/uic/model/ClientMessageHeader;
.source "CustomEvent.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3e77d4b2f65c439aL


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

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 29
    sget-object v0, Lcom/tl/uic/model/MessageType;->CUSTOM_EVENT:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/CustomEvent;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .parameter "logLevel"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 41
    sget-object v0, Lcom/tl/uic/model/MessageType;->CUSTOM_EVENT:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/CustomEvent;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/tl/uic/model/CustomEvent;->setLogLevel(I)V

    .line 43
    iput-object p3, p0, Lcom/tl/uic/model/CustomEvent;->data:Ljava/util/HashMap;

    .line 44
    iput-object p2, p0, Lcom/tl/uic/model/CustomEvent;->name:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->clean()Ljava/lang/Boolean;

    .line 97
    iput-object v1, p0, Lcom/tl/uic/model/CustomEvent;->name:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/tl/uic/model/CustomEvent;->data:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/tl/uic/util/GCUtil;->clean(Ljava/util/HashMap;)Ljava/lang/Boolean;

    .line 99
    iput-object v1, p0, Lcom/tl/uic/model/CustomEvent;->data:Ljava/util/HashMap;

    .line 100
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
    .line 65
    iget-object v0, p0, Lcom/tl/uic/model/CustomEvent;->data:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, jsonObject:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v1, jsonInnerObject:Lorg/json/JSONObject;
    :try_start_0
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 83
    const-string v3, "name"

    invoke-virtual {p0}, Lcom/tl/uic/model/CustomEvent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v3, "data"

    invoke-virtual {p0}, Lcom/tl/uic/model/CustomEvent;->getData()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v4}, Lcom/tl/uic/util/JsonUtil;->getHashValues(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v3, "customEvent"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-object v2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tl/uic/model/CustomEvent;->name:Ljava/lang/String;

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
    .line 72
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tl/uic/model/CustomEvent;->data:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tl/uic/model/CustomEvent;->name:Ljava/lang/String;

    .line 59
    return-void
.end method
