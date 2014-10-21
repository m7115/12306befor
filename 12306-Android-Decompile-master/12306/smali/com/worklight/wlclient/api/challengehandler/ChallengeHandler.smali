.class public abstract Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;
.source "ChallengeHandler.java"

# interfaces
.implements Lcom/worklight/wlclient/api/WLResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler",
        "<",
        "Lcom/worklight/wlclient/api/WLResponse;",
        ">;",
        "Lcom/worklight/wlclient/api/WLResponseListener;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private addGetParams(Lorg/apache/http/client/methods/HttpGet;Ljava/util/Map;)V
    .locals 5
    .parameter "getRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpGet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, requestParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 172
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    const-string v3, "isAjaxRequest"

    const-string v4, "true"

    invoke-interface {v0, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 174
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    .local v2, paramName:Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0

    .line 178
    .end local v2           #paramName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 179
    return-void
.end method

.method private addPostParams(Lorg/apache/http/client/methods/HttpPost;Ljava/util/Map;)V
    .locals 8
    .parameter "postRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpPost;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, requestParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v4, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "isAjaxRequest"

    const-string v7, "true"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    if-eqz p2, :cond_0

    .line 154
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 155
    .local v3, paramName:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #paramName:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 161
    .local v1, encodedFormEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .end local v1           #encodedFormEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v5, "UTF-8"

    invoke-direct {v1, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .restart local v1       #encodedFormEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {p1, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 168
    return-void

    .line 162
    .end local v1           #encodedFormEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public abstract isCustomResponse(Lcom/worklight/wlclient/api/WLResponse;)Z
.end method

.method public submitAdapterAuthentication(Lcom/worklight/wlclient/api/WLProcedureInvocationData;Lcom/worklight/wlclient/api/WLRequestOptions;)V
    .locals 1
    .parameter "invocationData"
    .parameter "requestOptions"

    .prologue
    .line 142
    if-nez p2, :cond_0

    .line 143
    new-instance p2, Lcom/worklight/wlclient/api/WLRequestOptions;

    .end local p2
    invoke-direct {p2}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    .line 145
    .restart local p2
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/worklight/wlclient/api/WLRequestOptions;->setFromChallenge(Z)V

    .line 146
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/worklight/wlclient/api/WLClient;->sendInvoke(Lcom/worklight/wlclient/api/WLProcedureInvocationData;Lcom/worklight/wlclient/api/WLResponseListener;Lcom/worklight/wlclient/api/WLRequestOptions;)V

    .line 147
    return-void
.end method

.method protected submitLoginForm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ILjava/lang/String;)V
    .locals 8
    .parameter "requestURL"
    .parameter
    .parameter
    .parameter "requestTimeoutInMilliseconds"
    .parameter "requestMethod"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, requestParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0x2f

    .line 90
    const-string v6, "Request [login]"

    invoke-static {v6}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v0

    .line 93
    .local v0, client:Lcom/worklight/wlclient/api/WLClient;
    const/4 v5, 0x0

    .line 95
    .local v5, url:Ljava/lang/String;
    const-string v6, "http"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    .line 96
    move-object v5, p1

    .line 106
    :goto_0
    const/4 v3, 0x0

    .line 108
    .local v3, httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    const-string v6, "post"

    invoke-virtual {p5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    .end local v3           #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v3       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    move-object v6, v3

    .line 110
    check-cast v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, v6, p2}, Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;->addPostParams(Lorg/apache/http/client/methods/HttpPost;Ljava/util/Map;)V

    .line 118
    :goto_1
    const-string v6, "x-wl-app-version"

    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLClient;->getConfig()Lcom/worklight/common/WLConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/worklight/common/WLConfig;->getApplicationVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz p3, :cond_4

    .line 121
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, headerName:Ljava/lang/String;
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 98
    .end local v2           #headerName:Ljava/lang/String;
    .end local v3           #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLClient;->getConfig()Lcom/worklight/common/WLConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/worklight/common/WLConfig;->getAppURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, extForm:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_1

    .line 101
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 111
    .end local v1           #extForm:Ljava/lang/String;
    .restart local v3       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_2
    const-string v6, "get"

    invoke-virtual {p5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    .end local v3           #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v3       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    move-object v6, v3

    .line 113
    check-cast v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p0, v6, p2}, Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;->addGetParams(Lorg/apache/http/client/methods/HttpGet;Ljava/util/Map;)V

    goto :goto_1

    .line 115
    :cond_3
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "CustomChallengeHandler.submitLoginForm: invalid request method."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 126
    :cond_4
    invoke-static {}, Lcom/worklight/wlclient/AsynchronousRequestSender;->getInstance()Lcom/worklight/wlclient/AsynchronousRequestSender;

    move-result-object v6

    invoke-virtual {v6, v3, p4, p0}, Lcom/worklight/wlclient/AsynchronousRequestSender;->sendCustomRequestAsync(Lorg/apache/http/client/methods/HttpRequestBase;ILcom/worklight/wlclient/api/WLResponseListener;)V

    .line 127
    return-void
.end method

.method protected submitSuccess(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 56
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;->activeRequest:Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {p0}, Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/worklight/wlclient/WLRequest;->removeExpectedAnswer(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;->activeRequest:Lcom/worklight/wlclient/WLRequest;

    .line 62
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;->releaseWaitingList()V

    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
