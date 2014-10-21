.class public Lcom/worklight/wlclient/api/WLResponse;
.super Ljava/lang/Object;
.source "WLResponse.java"


# instance fields
.field private headers:[Lorg/apache/http/Header;

.field private httpResponseCache:Lorg/apache/http/HttpResponse;

.field private requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

.field private responseJSON:Lorg/json/JSONObject;

.field protected responseText:Ljava/lang/String;

.field private status:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V
    .locals 0
    .parameter "status"
    .parameter "responseText"
    .parameter "requestOptions"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/worklight/wlclient/api/WLResponse;->status:I

    .line 73
    iput-object p3, p0, Lcom/worklight/wlclient/api/WLResponse;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    .line 74
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    .line 76
    invoke-direct {p0, p2}, Lcom/worklight/wlclient/api/WLResponse;->responseTextToJSON(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget v0, p1, Lcom/worklight/wlclient/api/WLResponse;->status:I

    iput v0, p0, Lcom/worklight/wlclient/api/WLResponse;->status:I

    .line 65
    iget-object v0, p1, Lcom/worklight/wlclient/api/WLResponse;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    .line 66
    iget-object v0, p1, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/worklight/wlclient/api/WLResponse;->responseJSON:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->responseJSON:Lorg/json/JSONObject;

    .line 68
    iget-object v0, p1, Lcom/worklight/wlclient/api/WLResponse;->httpResponseCache:Lorg/apache/http/HttpResponse;

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->httpResponseCache:Lorg/apache/http/HttpResponse;

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/worklight/wlclient/api/WLResponse;->status:I

    .line 40
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->headers:[Lorg/apache/http/Header;

    .line 41
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLResponse;->httpResponseCache:Lorg/apache/http/HttpResponse;

    .line 44
    :try_start_0
    const-string v1, "Content-Encoding"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content encoding is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Encoding"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 46
    const-string v1, "Content-Encoding"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->convertGZIPStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    .line 48
    const-string v1, "Content encoding is gzip"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/worklight/common/WLUtils;->log(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/worklight/wlclient/api/WLResponse;->responseTextToJSON(Ljava/lang/String;)V

    .line 61
    return-void

    .line 50
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response from Worklight server failed because could not read text from response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 53
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string v1, "No Content-Encoding header"

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 54
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private responseTextToJSON(Ljava/lang/String;)V
    .locals 8
    .parameter "responseText"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 80
    iget-object v4, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 81
    .local v1, firstIndex:I
    iget-object v4, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 83
    .local v3, lastIndex:I
    if-eq v1, v6, :cond_0

    if-ne v3, v6, :cond_1

    .line 84
    :cond_0
    iput-object v7, p0, Lcom/worklight/wlclient/api/WLResponse;->responseJSON:Lorg/json/JSONObject;

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v4, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, jsonText:Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/worklight/wlclient/api/WLResponse;->responseJSON:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response from Worklight server failed because could not read JSON from response with text "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    iput-object v7, p0, Lcom/worklight/wlclient/api/WLResponse;->responseJSON:Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 2
    .parameter "text"

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->headers:[Lorg/apache/http/Header;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->headers:[Lorg/apache/http/Header;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->headers:[Lorg/apache/http/Header;

    aget-object v1, v1, v0

    .line 145
    :goto_1
    return-object v1

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->headers:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getInvocationContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLRequestOptions;->getInvocationContext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    return-object v0
.end method

.method public getResponseJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->responseJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResponseText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/worklight/wlclient/api/WLResponse;->status:I

    return v0
.end method

.method setInvocationContext(Ljava/lang/Object;)V
    .locals 1
    .parameter "invocationContext"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-virtual {v0, p1}, Lcom/worklight/wlclient/api/WLRequestOptions;->setInvocationContext(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public setOptions(Lcom/worklight/wlclient/api/WLRequestOptions;)V
    .locals 0
    .parameter "wlOptions"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLResponse;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    .line 133
    return-void
.end method

.method setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->httpResponseCache:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->httpResponseCache:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLResponse;->headers:[Lorg/apache/http/Header;

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WLResponse [invocationContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-virtual {v1}, Lcom/worklight/wlclient/api/WLRequestOptions;->getInvocationContext()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLResponse;->responseText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/worklight/wlclient/api/WLResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
