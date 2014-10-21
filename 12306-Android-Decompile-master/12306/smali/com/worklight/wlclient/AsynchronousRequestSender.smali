.class public Lcom/worklight/wlclient/AsynchronousRequestSender;
.super Ljava/lang/Object;
.source "AsynchronousRequestSender.java"


# static fields
.field private static final pool:Ljava/util/concurrent/ExecutorService;

.field private static sender:Lcom/worklight/wlclient/AsynchronousRequestSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/worklight/wlclient/AsynchronousRequestSender;->pool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    return-void
.end method

.method public static getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/worklight/wlclient/HttpClientFactory;->getInstance(Lcom/worklight/common/WLConfig;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/worklight/wlclient/AsynchronousRequestSender;
    .locals 2

    .prologue
    .line 236
    const-class v1, Lcom/worklight/wlclient/AsynchronousRequestSender;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/worklight/wlclient/AsynchronousRequestSender;->sender:Lcom/worklight/wlclient/AsynchronousRequestSender;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/worklight/wlclient/AsynchronousRequestSender;->sender:Lcom/worklight/wlclient/AsynchronousRequestSender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :goto_0
    monitor-exit v1

    return-object v0

    .line 240
    :cond_0
    :try_start_1
    new-instance v0, Lcom/worklight/wlclient/AsynchronousRequestSender;

    invoke-direct {v0}, Lcom/worklight/wlclient/AsynchronousRequestSender;-><init>()V

    sput-object v0, Lcom/worklight/wlclient/AsynchronousRequestSender;->sender:Lcom/worklight/wlclient/AsynchronousRequestSender;

    .line 241
    sget-object v0, Lcom/worklight/wlclient/AsynchronousRequestSender;->sender:Lcom/worklight/wlclient/AsynchronousRequestSender;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static releaseHttpClient()V
    .locals 0

    .prologue
    .line 245
    invoke-static {}, Lcom/worklight/wlclient/HttpClientFactory;->releaseInstance()V

    .line 246
    return-void
.end method


# virtual methods
.method public sendCustomRequestAsync(Lorg/apache/http/client/methods/HttpRequestBase;ILcom/worklight/wlclient/api/WLResponseListener;)V
    .locals 2
    .parameter "httpRequest"
    .parameter "requestTimeoutInMilliseconds"
    .parameter "listener"

    .prologue
    .line 257
    sget-object v0, Lcom/worklight/wlclient/AsynchronousRequestSender;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/worklight/wlclient/InternalCustomRequestSender;

    invoke-direct {v1, p1, p2, p3}, Lcom/worklight/wlclient/InternalCustomRequestSender;-><init>(Lorg/apache/http/client/methods/HttpRequestBase;ILcom/worklight/wlclient/api/WLResponseListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method public sendRequestAsync(Lcom/worklight/wlclient/WLRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 253
    sget-object v0, Lcom/worklight/wlclient/AsynchronousRequestSender;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/worklight/wlclient/InternalRequestSender;

    invoke-direct {v1, p1}, Lcom/worklight/wlclient/InternalRequestSender;-><init>(Lcom/worklight/wlclient/WLRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method
