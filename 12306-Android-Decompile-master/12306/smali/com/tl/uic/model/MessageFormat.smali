.class public Lcom/tl/uic/model/MessageFormat;
.super Ljava/lang/Object;
.source "MessageFormat.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x67adf602e9b29f81L


# instance fields
.field private messageVersion:Ljava/lang/String;

.field private serialNumber:I

.field private session:Lcom/tl/uic/model/Session;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lcom/tl/uic/model/MessageFormat;->messageVersion:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/tl/uic/model/MessageFormat;->serialNumber:I

    .line 88
    iget-object v0, p0, Lcom/tl/uic/model/MessageFormat;->session:Lcom/tl/uic/model/Session;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/tl/uic/model/MessageFormat;->session:Lcom/tl/uic/model/Session;

    invoke-virtual {v0}, Lcom/tl/uic/model/Session;->clean()Ljava/lang/Boolean;

    .line 91
    :cond_0
    iput-object v1, p0, Lcom/tl/uic/model/MessageFormat;->session:Lcom/tl/uic/model/Session;

    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 68
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "messageVersion"

    invoke-virtual {p0}, Lcom/tl/uic/model/MessageFormat;->getMessageVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v3, "serialNumber"

    invoke-virtual {p0}, Lcom/tl/uic/model/MessageFormat;->getSerialNumber()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 73
    .local v2, jsonSessions:Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/tl/uic/model/MessageFormat;->getSession()Lcom/tl/uic/model/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tl/uic/model/Session;->getJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 74
    const-string v3, "sessions"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v2           #jsonSessions:Lorg/json/JSONArray;
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getMessageVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tl/uic/model/MessageFormat;->messageVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerialNumber()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/tl/uic/model/MessageFormat;->serialNumber:I

    return v0
.end method

.method public final getSession()Lcom/tl/uic/model/Session;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tl/uic/model/MessageFormat;->session:Lcom/tl/uic/model/Session;

    return-object v0
.end method

.method public final setMessageVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "messageVersion"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tl/uic/model/MessageFormat;->messageVersion:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public final setSerialNumber(I)V
    .locals 0
    .parameter "serialNumber"

    .prologue
    .line 47
    iput p1, p0, Lcom/tl/uic/model/MessageFormat;->serialNumber:I

    .line 48
    return-void
.end method

.method public final setSession(Lcom/tl/uic/model/Session;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tl/uic/model/MessageFormat;->session:Lcom/tl/uic/model/Session;

    .line 62
    return-void
.end method
