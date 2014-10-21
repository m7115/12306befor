.class public Lcom/tl/uic/http/TLDefaultHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "TLDefaultHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tl/uic/http/TLDefaultHttpClient;->init(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .parameter "conman"
    .parameter "params"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tl/uic/http/TLDefaultHttpClient;->init(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tl/uic/http/TLDefaultHttpClient;->init(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    .locals 0
    .parameter "params"
    .parameter "sessionId"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 37
    invoke-direct {p0, p2}, Lcom/tl/uic/http/TLDefaultHttpClient;->init(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 2
    .parameter "sessionId"

    .prologue
    .line 53
    new-instance v0, Lcom/tl/uic/http/TLHttpRequestInterceptor;

    invoke-direct {v0, p1}, Lcom/tl/uic/http/TLHttpRequestInterceptor;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, tlHttpRequestInterceptor:Lcom/tl/uic/http/TLHttpRequestInterceptor;
    invoke-virtual {p0, v0}, Lcom/tl/uic/http/TLDefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 55
    new-instance v1, Lcom/tl/uic/http/TLHttpResponseInterceptor;

    invoke-direct {v1, v0}, Lcom/tl/uic/http/TLHttpResponseInterceptor;-><init>(Lcom/tl/uic/http/TLHttpRequestInterceptor;)V

    invoke-virtual {p0, v1}, Lcom/tl/uic/http/TLDefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 56
    return-void
.end method
