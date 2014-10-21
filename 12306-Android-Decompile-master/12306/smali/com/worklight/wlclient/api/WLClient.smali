.class public Lcom/worklight/wlclient/api/WLClient;
.super Ljava/lang/Object;
.source "WLClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/wlclient/api/WLClient$HeartbeatListener;,
        Lcom/worklight/wlclient/api/WLClient$InvokeProcedureRequestListener;,
        Lcom/worklight/wlclient/api/WLClient$LogActivityListener;,
        Lcom/worklight/wlclient/api/WLClient$InitRequestListener;,
        Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;
    }
.end annotation


# static fields
.field private static final ANTI_XSRF_REALM:Ljava/lang/String; = "wl_antiXSRFRealm"

.field private static final AUTHENTICATE_REQUEST_PATH:Ljava/lang/String; = "authenticate"

.field private static final AUTHENTICITY_REALM:Ljava/lang/String; = "wl_authenticityRealm"

.field private static final CHALLENGE_HANDLER_NULL_ERROR:Ljava/lang/String; = "Cannot register \'null\' challenge handler"

.field private static final HEART_BEAT_ERROR:Ljava/lang/String; = "WLClient not initialized - cannot send heart beat message before connect"

.field private static final HEART_BEAT_REQUEST_PATH:Ljava/lang/String; = "heartbeat"

.field private static final INIT_REQUEST_PATH:Ljava/lang/String; = "init"

.field private static final INVOKE_PROCEDURE_INIT_ERROR:Ljava/lang/String; = "invokeProcedure() will not be executed because WLCLient is not initialized, ensure WLCLient.connect function has been called."

.field private static final INVOKE_PROCEDURE_REQUEST_PATH:Ljava/lang/String; = "query"

.field private static final INVOKE_PROCEDURE_RUN_ERROR:Ljava/lang/String; = "Error during invocation of remote procedure, because responseListener parameter can\'t be null."

.field private static final LOG_ACTIVITY_INIT_ERROR:Ljava/lang/String; = "logActivity() will not be executed because WLCLient is not initialized, ensure WLCLient.connect function has been called."

.field private static final LOG_ACTIVITY_REQUEST_PATH:Ljava/lang/String; = "logactivity"

.field private static final NO_PROVISIONING_REALM:Ljava/lang/String; = "wl_deviceNoProvisioningRealm"

.field private static final NO_REALM_REGISTER_ERROR:Ljava/lang/String; = "Application will exit because the challengeHandler parameter for registerChallengeHandler (challengeHandler) has a null realm property. Call this API with a valid reference to challenge handler."

.field private static final REMOTE_DISABLE_REALM:Ljava/lang/String; = "wl_remoteDisableRealm"

.field private static final REQ_PATH_DELETE_USER_PREF:Ljava/lang/String; = "deleteup"

.field private static final REQ_PATH_SET_USER_PREFS:Ljava/lang/String; = "setup"

.field private static final SEND_INVOKE_PROCEDURE_REQUEST_PATH:Ljava/lang/String; = "invoke"

.field private static wlClient:Lcom/worklight/wlclient/api/WLClient;


# instance fields
.field private chMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private config:Lcom/worklight/common/WLConfig;

.field private context:Landroid/content/Context;

.field private globalHeaders:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private heartbeatInterval:I

.field private httpContext:Lorg/apache/http/protocol/HttpContext;

.field private isInitialized:Z

.field private timer:Ljava/util/Timer;

.field private userPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wlPush:Lcom/worklight/wlclient/api/WLPush;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/worklight/wlclient/api/WLClient;->wlClient:Lcom/worklight/wlclient/api/WLClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, 0x1a4

    iput v0, p0, Lcom/worklight/wlclient/api/WLClient;->heartbeatInterval:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->wlPush:Lcom/worklight/wlclient/api/WLPush;

    .line 119
    new-instance v0, Lcom/worklight/common/WLConfig;

    invoke-direct {v0, p1}, Lcom/worklight/common/WLConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->config:Lcom/worklight/common/WLConfig;

    .line 120
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 121
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLClient;->context:Landroid/content/Context;

    .line 124
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->chMap:Ljava/util/Hashtable;

    .line 127
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->globalHeaders:Ljava/util/Hashtable;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->userPreferenceMap:Ljava/util/HashMap;

    .line 130
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLClient;->registerDefaultChallengeHandlers()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/worklight/wlclient/api/WLClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/worklight/wlclient/api/WLClient;->isInitialized:Z

    return v0
.end method

.method static synthetic access$100(Lcom/worklight/wlclient/api/WLClient;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->userPreferenceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/worklight/wlclient/api/WLClient;
    .locals 1
    .parameter "context"

    .prologue
    .line 145
    sget-object v0, Lcom/worklight/wlclient/api/WLClient;->wlClient:Lcom/worklight/wlclient/api/WLClient;

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "WLClient has already been created."

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->releaseInstance()V

    .line 150
    :cond_0
    new-instance v0, Lcom/worklight/wlclient/api/WLClient;

    invoke-direct {v0, p0}, Lcom/worklight/wlclient/api/WLClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/worklight/wlclient/api/WLClient;->wlClient:Lcom/worklight/wlclient/api/WLClient;

    .line 151
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 152
    sget-object v0, Lcom/worklight/wlclient/api/WLClient;->wlClient:Lcom/worklight/wlclient/api/WLClient;

    return-object v0
.end method

.method public static getInstance()Lcom/worklight/wlclient/api/WLClient;
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/worklight/wlclient/api/WLClient;->wlClient:Lcom/worklight/wlclient/api/WLClient;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "WLClient object has not been created. You must call WLClient.createInstance first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    sget-object v0, Lcom/worklight/wlclient/api/WLClient;->wlClient:Lcom/worklight/wlclient/api/WLClient;

    return-object v0
.end method

.method private getWLServerURL()Ljava/lang/String;
    .locals 5

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLClient;->getConfig()Lcom/worklight/common/WLConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/worklight/common/WLConfig;->getContext()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, context:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLClient;->getConfig()Lcom/worklight/common/WLConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/worklight/common/WLConfig;->getAppURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, serverUrl:Ljava/lang/String;
    :goto_0
    return-object v2

    .end local v2           #serverUrl:Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 683
    goto :goto_0
.end method

.method public static isApplicationSentToBackground(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 432
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 433
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 434
    .local v1, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 435
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 437
    .local v2, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 438
    const-string v3, "Application in background = true "

    invoke-static {v3}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    move v3, v4

    .line 443
    .end local v2           #topActivity:Landroid/content/ComponentName;
    :goto_0
    return v3

    .line 442
    :cond_0
    const-string v3, "Application in background = false"

    invoke-static {v3}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    move v3, v5

    .line 443
    goto :goto_0
.end method

.method private registerDefaultChallengeHandlers()V
    .locals 2

    .prologue
    .line 508
    new-instance v0, Lcom/worklight/wlclient/challengehandler/AntiXSRFChallengeHandler;

    const-string v1, "wl_antiXSRFRealm"

    invoke-direct {v0, v1}, Lcom/worklight/wlclient/challengehandler/AntiXSRFChallengeHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/api/WLClient;->registerChallengeHandler(Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;)V

    .line 510
    new-instance v0, Lcom/worklight/wlclient/challengehandler/NoProvisioningChallengeHandler;

    const-string v1, "wl_deviceNoProvisioningRealm"

    invoke-direct {v0, v1}, Lcom/worklight/wlclient/challengehandler/NoProvisioningChallengeHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/api/WLClient;->registerChallengeHandler(Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;)V

    .line 512
    new-instance v0, Lcom/worklight/wlclient/challengehandler/RemoteDisableChallengeHandler;

    const-string v1, "wl_remoteDisableRealm"

    invoke-direct {v0, v1}, Lcom/worklight/wlclient/challengehandler/RemoteDisableChallengeHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/api/WLClient;->registerChallengeHandler(Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;)V

    .line 514
    new-instance v0, Lcom/worklight/wlclient/challengehandler/AuthenticityChallengeHandler;

    const-string v1, "wl_authenticityRealm"

    invoke-direct {v0, v1}, Lcom/worklight/wlclient/challengehandler/AuthenticityChallengeHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/api/WLClient;->registerChallengeHandler(Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;)V

    .line 515
    return-void
.end method

.method private static releaseInstance()V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/worklight/wlclient/AsynchronousRequestSender;->releaseHttpClient()V

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/worklight/wlclient/api/WLClient;->wlClient:Lcom/worklight/wlclient/api/WLClient;

    .line 169
    return-void
.end method

.method private updateCookiesFromWebView()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 479
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLClient;->getWLServerURL()Ljava/lang/String;

    move-result-object v5

    .line 480
    .local v5, wlServerUrl:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, cookiesString:Ljava/lang/String;
    invoke-static {v3}, Lcom/worklight/common/WLUtils;->isStringEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 483
    invoke-static {v3, v5}, Lcom/worklight/wlclient/WLCookieManager;->setCookies(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {}, Lcom/worklight/wlclient/WLCookieManager;->getCookies()Ljava/util/Set;

    move-result-object v2

    .line 486
    .local v2, cookies:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/http/cookie/Cookie;>;"
    if-eqz v2, :cond_2

    .line 487
    new-instance v1, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v1}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 488
    .local v1, cookieStore:Lorg/apache/http/client/CookieStore;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 489
    .local v0, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v1, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0

    .line 491
    .end local v0           #cookie:Lorg/apache/http/cookie/Cookie;
    :cond_0
    iget-object v6, p0, Lcom/worklight/wlclient/api/WLClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v7, "http.cookie-store"

    invoke-interface {v6, v7, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    const/4 v6, 0x1

    .line 498
    .end local v1           #cookieStore:Lorg/apache/http/client/CookieStore;
    .end local v2           #cookies:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/http/cookie/Cookie;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    return v6

    .line 494
    .restart local v2       #cookies:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/http/cookie/Cookie;>;"
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No Cookies found for url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/worklight/wlclient/api/WLClient;->config:Lcom/worklight/common/WLConfig;

    invoke-virtual {v8}, Lcom/worklight/common/WLConfig;->getAppURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in WebView."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public GetHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public addGlobalHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "headerName"
    .parameter "value"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->globalHeaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method public addGlobalHeadersToRequest(Lorg/apache/http/client/methods/HttpPost;)V
    .locals 4
    .parameter "postRequest"

    .prologue
    .line 267
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLClient;->globalHeaders:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public checkForNotifications()V
    .locals 6

    .prologue
    .line 220
    iget-boolean v2, p0, Lcom/worklight/wlclient/api/WLClient;->isInitialized:Z

    if-nez v2, :cond_0

    .line 245
    :goto_0
    return-void

    .line 225
    :cond_0
    new-instance v1, Lcom/worklight/wlclient/api/WLClient$1;

    invoke-direct {v1, p0}, Lcom/worklight/wlclient/api/WLClient$1;-><init>(Lcom/worklight/wlclient/api/WLClient;)V

    .line 242
    .local v1, listener:Lcom/worklight/wlclient/WLRequestListener;
    new-instance v0, Lcom/worklight/wlclient/WLRequest;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-direct {v3}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLClient;->config:Lcom/worklight/common/WLConfig;

    iget-object v5, p0, Lcom/worklight/wlclient/api/WLClient;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/worklight/wlclient/WLRequest;-><init>(Lcom/worklight/wlclient/WLRequestListener;Lorg/apache/http/protocol/HttpContext;Lcom/worklight/wlclient/api/WLRequestOptions;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V

    .line 244
    .local v0, checkNotificationRequest:Lcom/worklight/wlclient/WLRequest;
    const-string v2, "authenticate"

    invoke-virtual {v0, v2}, Lcom/worklight/wlclient/WLRequest;->makeRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connect(Lcom/worklight/wlclient/api/WLResponseListener;)V
    .locals 7
    .parameter "responseListener"

    .prologue
    .line 192
    invoke-static {}, Lcom/worklight/wlclient/WLCookieManager;->clearCookies()V

    .line 195
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLClient;->updateCookiesFromWebView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "WL-Instance-Id"

    invoke-static {v2, v4}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, instanceId:Ljava/lang/String;
    invoke-static {v6}, Lcom/worklight/common/WLUtils;->isStringEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v2

    const-string v4, "WL-Instance-Id"

    invoke-virtual {v2, v4, v6}, Lcom/worklight/wlclient/api/WLClient;->addGlobalHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v6           #instanceId:Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-direct {v3}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    .line 204
    .local v3, requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;
    const-string v2, "action"

    const-string v4, "test"

    invoke-virtual {v3, v2, v4}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v3, p1}, Lcom/worklight/wlclient/api/WLRequestOptions;->setResponseListener(Lcom/worklight/wlclient/api/WLResponseListener;)V

    .line 207
    new-instance v1, Lcom/worklight/wlclient/api/WLClient$InitRequestListener;

    invoke-direct {v1, p0}, Lcom/worklight/wlclient/api/WLClient$InitRequestListener;-><init>(Lcom/worklight/wlclient/api/WLClient;)V

    .line 208
    .local v1, initRequestListener:Lcom/worklight/wlclient/api/WLClient$InitRequestListener;
    new-instance v0, Lcom/worklight/wlclient/WLRequest;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLClient;->config:Lcom/worklight/common/WLConfig;

    iget-object v5, p0, Lcom/worklight/wlclient/api/WLClient;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/worklight/wlclient/WLRequest;-><init>(Lcom/worklight/wlclient/WLRequestListener;Lorg/apache/http/protocol/HttpContext;Lcom/worklight/wlclient/api/WLRequestOptions;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V

    .line 209
    .local v0, initRequest:Lcom/worklight/wlclient/WLRequest;
    const-string v2, "init"

    invoke-virtual {v0, v2}, Lcom/worklight/wlclient/WLRequest;->makeRequest(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public getChallengeHandler(Lcom/worklight/wlclient/api/WLResponse;)Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;
    .locals 4
    .parameter "response"

    .prologue
    .line 650
    iget-object v3, p0, Lcom/worklight/wlclient/api/WLClient;->chMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 652
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 654
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;

    .line 655
    .local v1, handler:Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;
    instance-of v3, v1, Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 657
    check-cast v0, Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;

    .line 658
    .local v0, cl:Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;
    invoke-virtual {v0, p1}, Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;->isCustomResponse(Lcom/worklight/wlclient/api/WLResponse;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 665
    .end local v0           #cl:Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;
    .end local v1           #handler:Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfig()Lcom/worklight/common/WLConfig;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->config:Lcom/worklight/common/WLConfig;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getPush()Lcom/worklight/wlclient/api/WLPush;
    .locals 4

    .prologue
    .line 674
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->wlPush:Lcom/worklight/wlclient/api/WLPush;

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Lcom/worklight/wlclient/api/WLPush;

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLClient;->config:Lcom/worklight/common/WLConfig;

    iget-object v3, p0, Lcom/worklight/wlclient/api/WLClient;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/worklight/wlclient/api/WLPush;-><init>(Lorg/apache/http/protocol/HttpContext;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->wlPush:Lcom/worklight/wlclient/api/WLPush;

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->wlPush:Lcom/worklight/wlclient/api/WLPush;

    return-object v0
.end method

.method public getWLChallengeHandler(Ljava/lang/String;)Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
    .locals 3
    .parameter "realm"

    .prologue
    const/4 v1, 0x0

    .line 627
    if-nez p1, :cond_0

    move-object v0, v1

    .line 640
    :goto_0
    return-object v0

    .line 632
    :cond_0
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLClient;->chMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;

    .line 634
    .local v0, handler:Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;

    if-eqz v2, :cond_1

    .line 636
    check-cast v0, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 640
    goto :goto_0
.end method

.method public init(Lcom/worklight/wlclient/api/WLResponseListener;)V
    .locals 0
    .parameter "responseListener"

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/api/WLClient;->connect(Lcom/worklight/wlclient/api/WLResponseListener;)V

    .line 179
    return-void
.end method

.method public invokeProcedure(Lcom/worklight/wlclient/api/WLProcedureInvocationData;Lcom/worklight/wlclient/api/WLResponseListener;)V
    .locals 1
    .parameter "invocationData"
    .parameter "responseListener"

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/worklight/wlclient/api/WLClient;->invokeProcedure(Lcom/worklight/wlclient/api/WLProcedureInvocationData;Lcom/worklight/wlclient/api/WLResponseListener;Lcom/worklight/wlclient/api/WLRequestOptions;)V

    .line 372
    return-void
.end method

.method public invokeProcedure(Lcom/worklight/wlclient/api/WLProcedureInvocationData;Lcom/worklight/wlclient/api/WLResponseListener;Lcom/worklight/wlclient/api/WLRequestOptions;)V
    .locals 6
    .parameter "invocationData"
    .parameter "responseListener"
    .parameter "requestOptions"

    .prologue
    .line 287
    iget-boolean v2, p0, Lcom/worklight/wlclient/api/WLClient;->isInitialized:Z

    if-nez v2, :cond_0

    .line 289
    const-string v2, "invokeProcedure() will not be executed because WLCLient is not initialized, ensure WLCLient.connect function has been called."

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 293
    :cond_0
    if-nez p2, :cond_1

    .line 294
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error during invocation of remote procedure, because responseListener parameter can\'t be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_1
    if-nez p3, :cond_2

    .line 298
    new-instance p3, Lcom/worklight/wlclient/api/WLRequestOptions;

    .end local p3
    invoke-direct {p3}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    .line 300
    .restart local p3
    :cond_2
    invoke-virtual {p3, p2}, Lcom/worklight/wlclient/api/WLRequestOptions;->setResponseListener(Lcom/worklight/wlclient/api/WLResponseListener;)V

    .line 303
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->getInvocationDataMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameters(Ljava/util/Map;)V

    .line 304
    new-instance v1, Lcom/worklight/wlclient/api/WLClient$InvokeProcedureRequestListener;

    invoke-direct {v1, p0}, Lcom/worklight/wlclient/api/WLClient$InvokeProcedureRequestListener;-><init>(Lcom/worklight/wlclient/api/WLClient;)V

    .line 306
    .local v1, invokeProcedureInternalListener:Lcom/worklight/wlclient/api/WLClient$InvokeProcedureRequestListener;
    new-instance v0, Lcom/worklight/wlclient/WLRequest;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLClient;->config:Lcom/worklight/common/WLConfig;

    iget-object v5, p0, Lcom/worklight/wlclient/api/WLClient;->context:Landroid/content/Context;

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/worklight/wlclient/WLRequest;-><init>(Lcom/worklight/wlclient/WLRequestListener;Lorg/apache/http/protocol/HttpContext;Lcom/worklight/wlclient/api/WLRequestOptions;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V

    .line 313
    .local v0, invokeProcedureWLRequest:Lcom/worklight/wlclient/WLRequest;
    const-string v2, "query"

    invoke-virtual {v0, v2}, Lcom/worklight/wlclient/WLRequest;->makeRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logActivity(Ljava/lang/String;)V
    .locals 6
    .parameter "activityType"

    .prologue
    .line 380
    iget-boolean v2, p0, Lcom/worklight/wlclient/api/WLClient;->isInitialized:Z

    if-nez v2, :cond_0

    .line 383
    const-string v2, "logActivity() will not be executed because WLCLient is not initialized, ensure WLCLient.connect function has been called."

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 387
    :cond_0
    if-nez p1, :cond_1

    .line 388
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "ActivityType cannot be null"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :cond_1
    new-instance v3, Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-direct {v3}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    .line 392
    .local v3, requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;
    const-string v2, "activity"

    invoke-virtual {v3, v2, p1}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v1, Lcom/worklight/wlclient/api/WLClient$LogActivityListener;

    invoke-direct {v1, p0}, Lcom/worklight/wlclient/api/WLClient$LogActivityListener;-><init>(Lcom/worklight/wlclient/api/WLClient;)V

    .line 395
    .local v1, logActivityListener:Lcom/worklight/wlclient/api/WLClient$LogActivityListener;
    new-instance v0, Lcom/worklight/wlclient/WLRequest;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLClient;->config:Lcom/worklight/common/WLConfig;

    iget-object v5, p0, Lcom/worklight/wlclient/api/WLClient;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/worklight/wlclient/WLRequest;-><init>(Lcom/worklight/wlclient/WLRequestListener;Lorg/apache/http/protocol/HttpContext;Lcom/worklight/wlclient/api/WLRequestOptions;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V

    .line 402
    .local v0, logActivityWLRequest:Lcom/worklight/wlclient/WLRequest;
    const-string v2, "logactivity"

    invoke-virtual {v0, v2}, Lcom/worklight/wlclient/WLRequest;->makeRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerChallengeHandler(Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;)V
    .locals 3
    .parameter "challengeHandler"

    .prologue
    .line 608
    if-nez p1, :cond_0

    .line 610
    const-string v1, "Cannot register \'null\' challenge handler"

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 611
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot register \'null\' challenge handler"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    :cond_0
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/challengehandler/BaseChallengeHandler;->getRealm()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, realm:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 617
    const-string v1, "Application will exit because the challengeHandler parameter for registerChallengeHandler (challengeHandler) has a null realm property. Call this API with a valid reference to challenge handler."

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 618
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Application will exit because the challengeHandler parameter for registerChallengeHandler (challengeHandler) has a null realm property. Call this API with a valid reference to challenge handler."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLClient;->chMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-void
.end method

.method public removeGlobalHeader(Ljava/lang/String;)V
    .locals 1
    .parameter "headerName"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->globalHeaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method

.method sendHeartBeat()V
    .locals 6

    .prologue
    .line 425
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/worklight/wlclient/api/WLClient;->heartbeatInterval:I

    if-lez v0, :cond_0

    .line 426
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->timer:Ljava/util/Timer;

    .line 427
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLClient;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/worklight/wlclient/api/WLClient$HeartBeatTask;-><init>(Lcom/worklight/wlclient/api/WLClient;Landroid/content/Context;)V

    iget v2, p0, Lcom/worklight/wlclient/api/WLClient;->heartbeatInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget v4, p0, Lcom/worklight/wlclient/api/WLClient;->heartbeatInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 429
    :cond_0
    return-void
.end method

.method public sendInvoke(Lcom/worklight/wlclient/api/WLProcedureInvocationData;Lcom/worklight/wlclient/api/WLResponseListener;Lcom/worklight/wlclient/api/WLRequestOptions;)V
    .locals 6
    .parameter "invocationData"
    .parameter "responseListener"
    .parameter "requestOptions"

    .prologue
    .line 336
    if-nez p2, :cond_0

    .line 337
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error during invocation of remote procedure, because responseListener parameter can\'t be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_0
    if-nez p3, :cond_1

    .line 341
    new-instance p3, Lcom/worklight/wlclient/api/WLRequestOptions;

    .end local p3
    invoke-direct {p3}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    .line 343
    .restart local p3
    :cond_1
    invoke-virtual {p3, p2}, Lcom/worklight/wlclient/api/WLRequestOptions;->setResponseListener(Lcom/worklight/wlclient/api/WLResponseListener;)V

    .line 346
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->getInvocationDataMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameters(Ljava/util/Map;)V

    .line 347
    new-instance v1, Lcom/worklight/wlclient/api/WLClient$InvokeProcedureRequestListener;

    invoke-direct {v1, p0}, Lcom/worklight/wlclient/api/WLClient$InvokeProcedureRequestListener;-><init>(Lcom/worklight/wlclient/api/WLClient;)V

    .line 349
    .local v1, invokeProcedureInternalListener:Lcom/worklight/wlclient/api/WLClient$InvokeProcedureRequestListener;
    new-instance v0, Lcom/worklight/wlclient/WLRequest;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLClient;->config:Lcom/worklight/common/WLConfig;

    iget-object v5, p0, Lcom/worklight/wlclient/api/WLClient;->context:Landroid/content/Context;

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/worklight/wlclient/WLRequest;-><init>(Lcom/worklight/wlclient/WLRequestListener;Lorg/apache/http/protocol/HttpContext;Lcom/worklight/wlclient/api/WLRequestOptions;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V

    .line 356
    .local v0, invokeProcedureWLRequest:Lcom/worklight/wlclient/WLRequest;
    const-string v2, "invoke"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/worklight/wlclient/WLRequest;->makeRequest(Ljava/lang/String;Z)V

    .line 357
    return-void
.end method

.method public setHeartBeatInterval(I)V
    .locals 1
    .parameter "newInterval"

    .prologue
    .line 416
    iput p1, p0, Lcom/worklight/wlclient/api/WLClient;->heartbeatInterval:I

    .line 417
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLClient;->timer:Ljava/util/Timer;

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLClient;->sendHeartBeat()V

    .line 422
    return-void
.end method

.method protected setInitialized(Z)V
    .locals 0
    .parameter "isInitialized"

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/worklight/wlclient/api/WLClient;->isInitialized:Z

    .line 409
    return-void
.end method
