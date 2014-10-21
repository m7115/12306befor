.class Lcom/worklight/wlclient/InternalRequestSender;
.super Ljava/lang/Object;
.source "AsynchronousRequestSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field request:Lcom/worklight/wlclient/WLRequest;


# direct methods
.method protected constructor <init>(Lcom/worklight/wlclient/WLRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    .line 104
    return-void
.end method

.method private addInstanceAuthHeader()V
    .locals 3

    .prologue
    .line 168
    invoke-static {}, Lcom/worklight/wlclient/WLCookieManager;->getInstanceAuthId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v0}, Lcom/worklight/wlclient/WLRequest;->getPostRequest()Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "WL-Instance-Id"

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v0}, Lcom/worklight/wlclient/WLRequest;->getPostRequest()Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "WL-Instance-Id"

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->removeHeaders(Ljava/lang/String;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v0}, Lcom/worklight/wlclient/WLRequest;->getPostRequest()Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    const-string v1, "WL-Instance-Id"

    invoke-static {}, Lcom/worklight/wlclient/WLCookieManager;->getInstanceAuthId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_1
    return-void
.end method

.method private setConnectionTimeout(Lorg/apache/http/client/HttpClient;)V
    .locals 2
    .parameter "httpClient"

    .prologue
    .line 143
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v1}, Lcom/worklight/wlclient/WLRequest;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/worklight/wlclient/api/WLRequestOptions;->getTimeout()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 144
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v1}, Lcom/worklight/wlclient/WLRequest;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/worklight/wlclient/api/WLRequestOptions;->getTimeout()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 145
    return-void
.end method

.method private setUserAgentHeader(Lorg/apache/http/client/HttpClient;)V
    .locals 5
    .parameter "httpClient"

    .prologue
    .line 152
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.useragent"

    invoke-interface {v2, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    .local v1, userAgent:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " WLNativeAPI("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; SDK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, strWLAgent:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "WLNativeAPI("

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_1

    .line 161
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.useragent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    if-nez v1, :cond_0

    .line 163
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.useragent"

    invoke-interface {v2, v3, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v6}, Lcom/worklight/wlclient/WLRequest;->getPostRequest()Lorg/apache/http/client/methods/HttpPost;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 109
    const/4 v3, 0x0

    .line 111
    .local v3, response:Lcom/worklight/wlclient/api/WLResponse;
    :try_start_0
    iget-object v5, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v5}, Lcom/worklight/wlclient/WLRequest;->getConfig()Lcom/worklight/common/WLConfig;

    move-result-object v5

    invoke-static {v5}, Lcom/worklight/wlclient/HttpClientFactory;->getInstance(Lcom/worklight/common/WLConfig;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 112
    .local v1, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-direct {p0, v1}, Lcom/worklight/wlclient/InternalRequestSender;->setUserAgentHeader(Lorg/apache/http/client/HttpClient;)V

    .line 113
    invoke-direct {p0, v1}, Lcom/worklight/wlclient/InternalRequestSender;->setConnectionTimeout(Lorg/apache/http/client/HttpClient;)V

    .line 114
    iget-object v5, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-static {v5}, Lcom/worklight/wlclient/WLCookieManager;->addCookies(Lcom/worklight/wlclient/WLRequest;)V

    .line 115
    invoke-direct {p0}, Lcom/worklight/wlclient/InternalRequestSender;->addInstanceAuthHeader()V

    .line 116
    iget-object v5, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v5}, Lcom/worklight/wlclient/WLRequest;->getPostRequest()Lorg/apache/http/client/methods/HttpPost;

    move-result-object v5

    iget-object v6, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v6}, Lcom/worklight/wlclient/WLRequest;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 118
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    new-instance v4, Lcom/worklight/wlclient/api/WLResponse;

    invoke-direct {v4, v2}, Lcom/worklight/wlclient/api/WLResponse;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 119
    .end local v3           #response:Lcom/worklight/wlclient/api/WLResponse;
    .local v4, response:Lcom/worklight/wlclient/api/WLResponse;
    :try_start_1
    iget-object v5, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v5}, Lcom/worklight/wlclient/WLRequest;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/worklight/wlclient/api/WLResponse;->setOptions(Lcom/worklight/wlclient/api/WLRequestOptions;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 135
    iget-object v5, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v5, v4}, Lcom/worklight/wlclient/WLRequest;->requestFinished(Lcom/worklight/wlclient/api/WLResponse;)V

    move-object v3, v4

    .line 136
    .end local v1           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #response:Lcom/worklight/wlclient/api/WLResponse;
    .restart local v3       #response:Lcom/worklight/wlclient/api/WLResponse;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/net/SocketTimeoutException;
    :goto_1
    iget-object v5, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v5}, Lcom/worklight/wlclient/WLRequest;->getRequestListener()Lcom/worklight/wlclient/WLRequestListener;

    move-result-object v5

    new-instance v6, Lcom/worklight/wlclient/api/WLFailResponse;

    sget-object v7, Lcom/worklight/wlclient/api/WLErrorCode;->REQUEST_TIMEOUT:Lcom/worklight/wlclient/api/WLErrorCode;

    sget-object v8, Lcom/worklight/wlclient/api/WLErrorCode;->REQUEST_TIMEOUT:Lcom/worklight/wlclient/api/WLErrorCode;

    invoke-virtual {v8}, Lcom/worklight/wlclient/api/WLErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v9}, Lcom/worklight/wlclient/WLRequest;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lcom/worklight/wlclient/api/WLErrorCode;Ljava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V

    invoke-interface {v5, v6}, Lcom/worklight/wlclient/WLRequestListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    goto :goto_0

    .line 126
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Lorg/apache/http/conn/ConnectTimeoutException;
    :goto_2
    iget-object v5, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v5}, Lcom/worklight/wlclient/WLRequest;->getRequestListener()Lcom/worklight/wlclient/WLRequestListener;

    move-result-object v5

    new-instance v6, Lcom/worklight/wlclient/api/WLFailResponse;

    sget-object v7, Lcom/worklight/wlclient/api/WLErrorCode;->UNRESPONSIVE_HOST:Lcom/worklight/wlclient/api/WLErrorCode;

    sget-object v8, Lcom/worklight/wlclient/api/WLErrorCode;->UNRESPONSIVE_HOST:Lcom/worklight/wlclient/api/WLErrorCode;

    invoke-virtual {v8}, Lcom/worklight/wlclient/api/WLErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v9}, Lcom/worklight/wlclient/WLRequest;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lcom/worklight/wlclient/api/WLErrorCode;Ljava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V

    invoke-interface {v5, v6}, Lcom/worklight/wlclient/WLRequestListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    goto :goto_0

    .line 130
    .end local v0           #e:Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_2
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    iget-object v5, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v5}, Lcom/worklight/wlclient/WLRequest;->getRequestListener()Lcom/worklight/wlclient/WLRequestListener;

    move-result-object v5

    new-instance v6, Lcom/worklight/wlclient/api/WLFailResponse;

    sget-object v7, Lcom/worklight/wlclient/api/WLErrorCode;->UNEXPECTED_ERROR:Lcom/worklight/wlclient/api/WLErrorCode;

    sget-object v8, Lcom/worklight/wlclient/api/WLErrorCode;->UNEXPECTED_ERROR:Lcom/worklight/wlclient/api/WLErrorCode;

    invoke-virtual {v8}, Lcom/worklight/wlclient/api/WLErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/worklight/wlclient/InternalRequestSender;->request:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v9}, Lcom/worklight/wlclient/WLRequest;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lcom/worklight/wlclient/api/WLErrorCode;Ljava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V

    invoke-interface {v5, v6}, Lcom/worklight/wlclient/WLRequestListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #response:Lcom/worklight/wlclient/api/WLResponse;
    .restart local v1       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v2       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v4       #response:Lcom/worklight/wlclient/api/WLResponse;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4           #response:Lcom/worklight/wlclient/api/WLResponse;
    .restart local v3       #response:Lcom/worklight/wlclient/api/WLResponse;
    goto :goto_3

    .line 126
    .end local v3           #response:Lcom/worklight/wlclient/api/WLResponse;
    .restart local v4       #response:Lcom/worklight/wlclient/api/WLResponse;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #response:Lcom/worklight/wlclient/api/WLResponse;
    .restart local v3       #response:Lcom/worklight/wlclient/api/WLResponse;
    goto :goto_2

    .line 122
    .end local v3           #response:Lcom/worklight/wlclient/api/WLResponse;
    .restart local v4       #response:Lcom/worklight/wlclient/api/WLResponse;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4           #response:Lcom/worklight/wlclient/api/WLResponse;
    .restart local v3       #response:Lcom/worklight/wlclient/api/WLResponse;
    goto :goto_1
.end method
