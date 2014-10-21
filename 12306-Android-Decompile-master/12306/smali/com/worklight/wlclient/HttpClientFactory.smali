.class Lcom/worklight/wlclient/HttpClientFactory;
.super Ljava/lang/Object;
.source "AsynchronousRequestSender.java"


# static fields
.field private static final SOCKET_OPERATION_TIMEOUT:I = 0xea60

.field private static client:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/worklight/common/WLConfig;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 9
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 54
    const-class v6, Lcom/worklight/wlclient/HttpClientFactory;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/worklight/wlclient/HttpClientFactory;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v7, :cond_1

    .line 55
    sget-object v5, Lcom/worklight/wlclient/HttpClientFactory;->client:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    :goto_0
    monitor-exit v6

    return-object v5

    .line 58
    :cond_1
    if-eqz p0, :cond_0

    .line 62
    :try_start_1
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 64
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 65
    const v5, 0xea60

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 66
    const v5, 0xea60

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 67
    const/16 v5, 0x2000

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 69
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 71
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 72
    .local v4, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, protocol:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getPort()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 75
    .local v2, port:I
    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    invoke-direct {v5, v3, v7, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 87
    :goto_1
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 90
    .local v0, manager:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v5, Lcom/worklight/wlclient/HttpClientFactory;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 91
    sget-object v5, Lcom/worklight/wlclient/HttpClientFactory;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto :goto_0

    .line 79
    .end local v0           #manager:Lorg/apache/http/conn/ClientConnectionManager;
    :cond_2
    const-string v5, "https"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const v7, 0xea60

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-direct {v5, v3, v7, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 54
    .end local v1           #params:Lorg/apache/http/params/HttpParams;
    .end local v2           #port:I
    .end local v3           #protocol:Ljava/lang/String;
    .end local v4           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 84
    .restart local v1       #params:Lorg/apache/http/params/HttpParams;
    .restart local v2       #port:I
    .restart local v3       #protocol:Ljava/lang/String;
    .restart local v4       #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_3
    :try_start_2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HttpClientFactory: Can\'t create HttpClient with protocol "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static releaseInstance()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/worklight/wlclient/HttpClientFactory;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 96
    return-void
.end method
