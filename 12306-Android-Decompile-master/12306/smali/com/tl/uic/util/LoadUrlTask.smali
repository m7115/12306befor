.class public Lcom/tl/uic/util/LoadUrlTask;
.super Landroid/os/AsyncTask;
.source "LoadUrlTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private final extraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlToLoad:Ljava/lang/String;

.field private final webView:Lcom/tl/uic/webkit/UICWebView;


# direct methods
.method public constructor <init>(Lcom/tl/uic/webkit/UICWebView;Ljava/util/Map;)V
    .locals 2
    .parameter "webView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tl/uic/webkit/UICWebView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tl/uic/util/LoadUrlTask;->webView:Lcom/tl/uic/webkit/UICWebView;

    .line 44
    iput-object p2, p0, Lcom/tl/uic/util/LoadUrlTask;->extraHeaders:Ljava/util/Map;

    .line 45
    iget-object v0, p0, Lcom/tl/uic/util/LoadUrlTask;->webView:Lcom/tl/uic/webkit/UICWebView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tl/uic/webkit/UICWebView;->setInitTime(Ljava/util/Date;)V

    .line 46
    return-void
.end method

.method private doRequest(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 9
    .parameter "url"

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 65
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_0
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 66
    .local v5, params:Lorg/apache/http/params/HttpParams;
    const-string v6, "PostMessageTimeout"

    invoke-static {v6}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 67
    const-string v6, "PostMessageSocketTimeout"

    invoke-static {v6}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 68
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-static {v5, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 69
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 74
    const/16 v6, 0x2000

    invoke-static {v5, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 76
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 78
    .local v4, httpget:Lorg/apache/http/client/methods/HttpGet;
    iget-object v6, p0, Lcom/tl/uic/util/LoadUrlTask;->extraHeaders:Ljava/util/Map;

    if-eqz v6, :cond_0

    .line 79
    iget-object v6, p0, Lcom/tl/uic/util/LoadUrlTask;->extraHeaders:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 83
    :cond_0
    new-instance v3, Lcom/tl/uic/http/TLDefaultHttpClient;

    invoke-direct {v3, v5}, Lcom/tl/uic/http/TLDefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 85
    .local v3, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 89
    .end local v3           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #params:Lorg/apache/http/params/HttpParams;
    :goto_1
    return-object v2

    .line 79
    .restart local v4       #httpget:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #params:Lorg/apache/http/params/HttpParams;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #httpget:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #params:Lorg/apache/http/params/HttpParams;
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tl/uic/util/LoadUrlTask;->doInBackground([Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "urls"

    .prologue
    .line 52
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/tl/uic/util/LoadUrlTask;->urlToLoad:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/tl/uic/util/LoadUrlTask;->urlToLoad:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tl/uic/util/LoadUrlTask;->doRequest(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/tl/uic/util/LoadUrlTask;->onPostExecute(Lorg/apache/http/HttpResponse;)V

    return-void
.end method

.method protected final onPostExecute(Lorg/apache/http/HttpResponse;)V
    .locals 10
    .parameter "response"

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/tl/uic/util/LoadUrlTask;->webView:Lcom/tl/uic/webkit/UICWebView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/tl/uic/util/LoadUrlTask;->webView:Lcom/tl/uic/webkit/UICWebView;

    invoke-virtual {v1}, Lcom/tl/uic/webkit/UICWebView;->getInitTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v3, v8

    invoke-virtual {v0, v3, v4}, Lcom/tl/uic/webkit/UICWebView;->setResponseTime(J)V

    .line 99
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 104
    .local v7, entity:Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tl/uic/util/HTTPUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, body:Ljava/lang/String;
    iget-object v0, p0, Lcom/tl/uic/util/LoadUrlTask;->webView:Lcom/tl/uic/webkit/UICWebView;

    invoke-virtual {v0, p1}, Lcom/tl/uic/webkit/UICWebView;->setHttpResponse(Lorg/apache/http/HttpResponse;)V

    .line 110
    iget-object v0, p0, Lcom/tl/uic/util/LoadUrlTask;->webView:Lcom/tl/uic/webkit/UICWebView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tl/uic/webkit/UICWebView;->setStartLoad(Ljava/util/Date;)V

    .line 111
    iget-object v0, p0, Lcom/tl/uic/util/LoadUrlTask;->webView:Lcom/tl/uic/webkit/UICWebView;

    iget-object v1, p0, Lcom/tl/uic/util/LoadUrlTask;->urlToLoad:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/tl/uic/webkit/UICWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v2           #body:Ljava/lang/String;
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v6

    .line 113
    .local v6, e:Ljava/lang/Exception;
    invoke-static {v6}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
