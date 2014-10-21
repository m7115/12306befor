.class Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;
.super Ljava/util/TimerTask;
.source "WLClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/api/WLClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeartBeatTask"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/worklight/wlclient/api/WLClient;


# direct methods
.method constructor <init>(Lcom/worklight/wlclient/api/WLClient;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;->this$0:Lcom/worklight/wlclient/api/WLClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;->context:Landroid/content/Context;

    .line 451
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;->context:Landroid/content/Context;

    .line 452
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 455
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;->this$0:Lcom/worklight/wlclient/api/WLClient;

    #getter for: Lcom/worklight/wlclient/api/WLClient;->isInitialized:Z
    invoke-static {v2}, Lcom/worklight/wlclient/api/WLClient;->access$000(Lcom/worklight/wlclient/api/WLClient;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "WLClient not initialized - cannot send heart beat message before connect"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/worklight/wlclient/api/WLClient;->isApplicationSentToBackground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 476
    :cond_1
    :goto_0
    return-void

    .line 463
    :cond_2
    new-instance v3, Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-direct {v3}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    .line 464
    .local v3, requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;
    new-instance v1, Lcom/worklight/wlclient/api/WLClient$HeartbeatListener;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;->this$0:Lcom/worklight/wlclient/api/WLClient;

    invoke-direct {v1, v2}, Lcom/worklight/wlclient/api/WLClient$HeartbeatListener;-><init>(Lcom/worklight/wlclient/api/WLClient;)V

    .line 466
    .local v1, heartBeatListener:Lcom/worklight/wlclient/api/WLClient$HeartbeatListener;
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v6

    .line 467
    .local v6, client:Lcom/worklight/wlclient/api/WLClient;
    if-eqz v6, :cond_1

    .line 468
    new-instance v0, Lcom/worklight/wlclient/WLRequest;

    invoke-virtual {v6}, Lcom/worklight/wlclient/api/WLClient;->GetHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v2

    invoke-virtual {v6}, Lcom/worklight/wlclient/api/WLClient;->getConfig()Lcom/worklight/common/WLConfig;

    move-result-object v4

    invoke-virtual {v6}, Lcom/worklight/wlclient/api/WLClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/worklight/wlclient/WLRequest;-><init>(Lcom/worklight/wlclient/WLRequestListener;Lorg/apache/http/protocol/HttpContext;Lcom/worklight/wlclient/api/WLRequestOptions;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V

    .line 474
    .local v0, heartBeatWLRequest:Lcom/worklight/wlclient/WLRequest;
    const-string v2, "heartbeat"

    invoke-virtual {v0, v2}, Lcom/worklight/wlclient/WLRequest;->makeRequest(Ljava/lang/String;)V

    goto :goto_0
.end method
