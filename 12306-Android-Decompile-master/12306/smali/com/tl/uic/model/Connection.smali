.class public Lcom/tl/uic/model/Connection;
.super Lcom/tl/uic/model/ClientMessageHeader;
.source "Connection.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3cfd58480bd84dceL


# instance fields
.field private initTime:J

.field private loadTime:J

.field private responseDataSize:J

.field private responseTime:J

.field private statusCode:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 29
    sget-object v0, Lcom/tl/uic/model/MessageType;->CONNECTION:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/Connection;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 145
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->clean()Ljava/lang/Boolean;

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tl/uic/model/Connection;->url:Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/tl/uic/model/Connection;->statusCode:I

    .line 148
    iput-wide v1, p0, Lcom/tl/uic/model/Connection;->responseDataSize:J

    .line 149
    iput-wide v1, p0, Lcom/tl/uic/model/Connection;->initTime:J

    .line 150
    iput-wide v1, p0, Lcom/tl/uic/model/Connection;->responseTime:J

    .line 151
    iput-wide v1, p0, Lcom/tl/uic/model/Connection;->loadTime:J

    .line 152
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getInitTime()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/tl/uic/model/Connection;->initTime:J

    return-wide v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, jsonObject:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 126
    .local v1, jsonInnerObject:Lorg/json/JSONObject;
    :try_start_0
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 127
    const-string v3, "url"

    invoke-virtual {p0}, Lcom/tl/uic/model/Connection;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v3, "statusCode"

    invoke-virtual {p0}, Lcom/tl/uic/model/Connection;->getStatusCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string v3, "responseDataSize"

    invoke-virtual {p0}, Lcom/tl/uic/model/Connection;->getResponseDataSize()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 130
    const-string v3, "initTime"

    invoke-virtual {p0}, Lcom/tl/uic/model/Connection;->getInitTime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    const-string v3, "responseTime"

    invoke-virtual {p0}, Lcom/tl/uic/model/Connection;->getResponseTime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 132
    const-string v3, "loadTime"

    invoke-virtual {p0}, Lcom/tl/uic/model/Connection;->getLoadTime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 133
    const-string v3, "connection"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-object v2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getLoadTime()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/tl/uic/model/Connection;->loadTime:J

    return-wide v0
.end method

.method public final getResponseDataSize()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/tl/uic/model/Connection;->responseDataSize:J

    return-wide v0
.end method

.method public final getResponseTime()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/tl/uic/model/Connection;->responseTime:J

    return-wide v0
.end method

.method public final getStatusCode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/tl/uic/model/Connection;->statusCode:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tl/uic/model/Connection;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final setInitTime(J)V
    .locals 0
    .parameter "initTime"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/tl/uic/model/Connection;->initTime:J

    .line 88
    return-void
.end method

.method public final setLoadTime(J)V
    .locals 0
    .parameter "loadTime"

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/tl/uic/model/Connection;->loadTime:J

    .line 116
    return-void
.end method

.method public final setResponseDataSize(J)V
    .locals 0
    .parameter "responseDataSize"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/tl/uic/model/Connection;->responseDataSize:J

    .line 74
    return-void
.end method

.method public final setResponseTime(J)V
    .locals 0
    .parameter "responseTime"

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/tl/uic/model/Connection;->responseTime:J

    .line 102
    return-void
.end method

.method public final setStatusCode(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 59
    iput p1, p0, Lcom/tl/uic/model/Connection;->statusCode:I

    .line 60
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tl/uic/model/Connection;->url:Ljava/lang/String;

    .line 45
    return-void
.end method
