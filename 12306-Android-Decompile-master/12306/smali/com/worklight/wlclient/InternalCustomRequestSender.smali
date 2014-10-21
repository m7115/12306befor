.class Lcom/worklight/wlclient/InternalCustomRequestSender;
.super Ljava/lang/Object;
.source "AsynchronousRequestSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field listener:Lcom/worklight/wlclient/api/WLResponseListener;

.field requestTimeoutInMilliseconds:I


# direct methods
.method protected constructor <init>(Lorg/apache/http/client/methods/HttpRequestBase;ILcom/worklight/wlclient/api/WLResponseListener;)V
    .locals 0
    .parameter "httpRequest"
    .parameter "requestTimeoutInMilliseconds"
    .parameter "listener"

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 190
    iput p2, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->requestTimeoutInMilliseconds:I

    .line 191
    iput-object p3, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->listener:Lcom/worklight/wlclient/api/WLResponseListener;

    .line 192
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 196
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v0

    .line 197
    .local v0, client:Lcom/worklight/wlclient/api/WLClient;
    invoke-static {}, Lcom/worklight/wlclient/AsynchronousRequestSender;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 199
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    iget v6, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->requestTimeoutInMilliseconds:I

    if-lez v6, :cond_0

    .line 200
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    iget v7, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->requestTimeoutInMilliseconds:I

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 201
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    iget v7, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->requestTimeoutInMilliseconds:I

    invoke-static {v6, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 204
    :cond_0
    const/4 v4, 0x0

    .line 207
    .local v4, response:Lcom/worklight/wlclient/api/WLResponse;
    :try_start_0
    iget-object v6, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLClient;->GetHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 208
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    new-instance v5, Lcom/worklight/wlclient/api/WLResponse;

    invoke-direct {v5, v3}, Lcom/worklight/wlclient/api/WLResponse;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 220
    .end local v4           #response:Lcom/worklight/wlclient/api/WLResponse;
    .local v5, response:Lcom/worklight/wlclient/api/WLResponse;
    iget-object v6, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->listener:Lcom/worklight/wlclient/api/WLResponseListener;

    invoke-interface {v6, v5}, Lcom/worklight/wlclient/api/WLResponseListener;->onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V

    move-object v4, v5

    .line 221
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v5           #response:Lcom/worklight/wlclient/api/WLResponse;
    .restart local v4       #response:Lcom/worklight/wlclient/api/WLResponse;
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, e:Ljava/net/SocketTimeoutException;
    iget-object v6, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->listener:Lcom/worklight/wlclient/api/WLResponseListener;

    new-instance v7, Lcom/worklight/wlclient/api/WLFailResponse;

    sget-object v8, Lcom/worklight/wlclient/api/WLErrorCode;->REQUEST_TIMEOUT:Lcom/worklight/wlclient/api/WLErrorCode;

    sget-object v9, Lcom/worklight/wlclient/api/WLErrorCode;->REQUEST_TIMEOUT:Lcom/worklight/wlclient/api/WLErrorCode;

    invoke-virtual {v9}, Lcom/worklight/wlclient/api/WLErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-direct {v10}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    invoke-direct {v7, v8, v9, v10}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lcom/worklight/wlclient/api/WLErrorCode;Ljava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V

    invoke-interface {v6, v7}, Lcom/worklight/wlclient/api/WLResponseListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    goto :goto_0

    .line 212
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v1

    .line 213
    .local v1, e:Lorg/apache/http/conn/ConnectTimeoutException;
    iget-object v6, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->listener:Lcom/worklight/wlclient/api/WLResponseListener;

    new-instance v7, Lcom/worklight/wlclient/api/WLFailResponse;

    sget-object v8, Lcom/worklight/wlclient/api/WLErrorCode;->UNRESPONSIVE_HOST:Lcom/worklight/wlclient/api/WLErrorCode;

    sget-object v9, Lcom/worklight/wlclient/api/WLErrorCode;->UNRESPONSIVE_HOST:Lcom/worklight/wlclient/api/WLErrorCode;

    invoke-virtual {v9}, Lcom/worklight/wlclient/api/WLErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-direct {v10}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    invoke-direct {v7, v8, v9, v10}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lcom/worklight/wlclient/api/WLErrorCode;Ljava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V

    invoke-interface {v6, v7}, Lcom/worklight/wlclient/api/WLResponseListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    goto :goto_0

    .line 215
    .end local v1           #e:Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_2
    move-exception v1

    .line 216
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/worklight/wlclient/InternalCustomRequestSender;->listener:Lcom/worklight/wlclient/api/WLResponseListener;

    new-instance v7, Lcom/worklight/wlclient/api/WLFailResponse;

    sget-object v8, Lcom/worklight/wlclient/api/WLErrorCode;->UNEXPECTED_ERROR:Lcom/worklight/wlclient/api/WLErrorCode;

    sget-object v9, Lcom/worklight/wlclient/api/WLErrorCode;->UNEXPECTED_ERROR:Lcom/worklight/wlclient/api/WLErrorCode;

    invoke-virtual {v9}, Lcom/worklight/wlclient/api/WLErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-direct {v10}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    invoke-direct {v7, v8, v9, v10}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lcom/worklight/wlclient/api/WLErrorCode;Ljava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V

    invoke-interface {v6, v7}, Lcom/worklight/wlclient/api/WLResponseListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    goto :goto_0
.end method
