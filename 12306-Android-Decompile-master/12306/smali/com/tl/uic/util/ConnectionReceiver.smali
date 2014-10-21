.class public Lcom/tl/uic/util/ConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionReceiver.java"


# instance fields
.field private _isOnline:Ljava/lang/Boolean;

.field private connectionType:Ljava/lang/String;

.field private networkReachability:Lcom/tl/uic/model/ReachabilityType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/util/ConnectionReceiver;->_isOnline:Ljava/lang/Boolean;

    .line 21
    sget-object v0, Lcom/tl/uic/model/ReachabilityType;->Unknown:Lcom/tl/uic/model/ReachabilityType;

    iput-object v0, p0, Lcom/tl/uic/util/ConnectionReceiver;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    .line 19
    return-void
.end method


# virtual methods
.method public final getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tl/uic/util/ConnectionReceiver;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkReachability()Lcom/tl/uic/model/ReachabilityType;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tl/uic/util/ConnectionReceiver;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    return-object v0
.end method

.method public final isOnline()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tl/uic/util/ConnectionReceiver;->_isOnline:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tl/uic/util/ConnectionReceiver;->_isOnline:Ljava/lang/Boolean;

    .line 53
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 54
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/tl/uic/TLFCache;->setCurrentLogLevel(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v3, "noConnectivity"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 59
    .local v1, hasNoConnectivity:Z
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 61
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 62
    sget-object v3, Lcom/tl/uic/model/ReachabilityType;->NotReachable:Lcom/tl/uic/model/ReachabilityType;

    iput-object v3, p0, Lcom/tl/uic/util/ConnectionReceiver;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    .line 63
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tl/uic/util/ConnectionReceiver;->_isOnline:Ljava/lang/Boolean;

    .line 64
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/tl/uic/TLFCache;->setCurrentLogLevel(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 76
    :goto_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tl/uic/util/ConnectionReceiver;->connectionType:Ljava/lang/String;

    .line 77
    const-string v3, "Network changed"

    invoke-static {v3}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 80
    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tl/uic/EnvironmentalData;->hasClientStateChanged()Ljava/lang/Boolean;

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 67
    sget-object v3, Lcom/tl/uic/model/ReachabilityType;->ReachableViaWIFI:Lcom/tl/uic/model/ReachabilityType;

    iput-object v3, p0, Lcom/tl/uic/util/ConnectionReceiver;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    .line 68
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/tl/uic/TLFCache;->setCurrentLogLevel(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 73
    :cond_3
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tl/uic/util/ConnectionReceiver;->_isOnline:Ljava/lang/Boolean;

    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    sget-object v3, Lcom/tl/uic/model/ReachabilityType;->ReachableViaWWAN:Lcom/tl/uic/model/ReachabilityType;

    iput-object v3, p0, Lcom/tl/uic/util/ConnectionReceiver;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    .line 71
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/tl/uic/TLFCache;->setCurrentLogLevel(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_2
.end method
