.class public Lcom/tl/uic/http/TLHttpRequestInterceptor;
.super Ljava/lang/Object;
.source "TLHttpRequestInterceptor.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private final sessionId:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tl/uic/http/TLHttpRequestInterceptor;->sessionId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionId"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tl/uic/http/TLHttpRequestInterceptor;->sessionId:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tl/uic/http/TLHttpRequestInterceptor;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 7
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tl/uic/http/TLHttpRequestInterceptor;->url:Ljava/lang/String;

    .line 67
    const-string v4, "X-Tealeaf"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    const-string v4, "X-Tealeaf"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "device (Android) Lib/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tl/uic/Tealeaf;->getLibraryVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    const-string v4, "X-Tealeaf-Property"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    const-string v4, "X-Tealeaf-Property"

    invoke-static {}, Lcom/tl/uic/Tealeaf;->getHttpXTealeafProperty()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getAdditionalHeaders()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 76
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getAdditionalHeaders()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/tl/uic/http/TLHttpRequestInterceptor;->sessionId:Ljava/lang/String;

    invoke-static {v4}, Lcom/tl/uic/Tealeaf;->getTLCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, cookies:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/tl/uic/http/TLHttpRequestInterceptor;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 83
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tl/uic/http/TLHttpRequestInterceptor;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, extistingCookies:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 85
    const/16 v4, 0x3b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .end local v3           #extistingCookies:Ljava/lang/String;
    :cond_3
    const-string v4, "Cookie"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v0           #cookies:Ljava/lang/StringBuffer;
    :goto_1
    return-void

    .line 76
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 77
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v4, v5}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/Tealeaf;->logException(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tl/uic/http/TLHttpRequestInterceptor;->url:Ljava/lang/String;

    .line 57
    return-void
.end method
