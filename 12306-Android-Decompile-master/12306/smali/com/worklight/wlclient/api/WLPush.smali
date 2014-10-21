.class public Lcom/worklight/wlclient/api/WLPush;
.super Ljava/lang/Object;
.source "WLPush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;,
        Lcom/worklight/wlclient/api/WLPush$UpdateTokenListener;,
        Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;,
        Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;
    }
.end annotation


# static fields
.field private static final ERROR_ID:Ljava/lang/String; = "WLClient.error"

.field private static final FROM_NOTIFICATION_BAR:Ljava/lang/String; = "notificationBar"

.field private static final NOT_UPDATE_FAILURE:Ljava/lang/String; = "WLClient.notificationUpdateFailure"

.field private static final OK:Ljava/lang/String; = "WLClient.ok"

.field private static final RESOURCE_BUNDLE:Ljava/lang/String; = "com/worklight/wlclient/messages"


# instance fields
.field private activity:Landroid/app/Activity;

.field private config:Lcom/worklight/common/WLConfig;

.field private context:Landroid/content/Context;

.field private deviceToken:Ljava/lang/String;

.field private httpContext:Lorg/apache/http/protocol/HttpContext;

.field private isTokenUpdatedOnServer:Z

.field private onMessage:Landroid/content/BroadcastReceiver;

.field private onReadyToSubscribeListener:Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;

.field private onRegister:Landroid/content/BroadcastReceiver;

.field private onRegisterError:Landroid/content/BroadcastReceiver;

.field private pending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/worklight/androidgap/push/WLGCMIntentService$Message;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPushEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private registeredEventSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;",
            ">;"
        }
    .end annotation
.end field

.field private serverToken:Ljava/lang/String;

.field private subscribedEventSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/http/protocol/HttpContext;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V
    .locals 7
    .parameter "httpContext"
    .parameter "config"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/worklight/wlclient/api/WLPush;->isTokenUpdatedOnServer:Z

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->pendingPushEvents:Ljava/util/ArrayList;

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->pending:Ljava/util/ArrayList;

    .line 63
    iput-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->serverToken:Ljava/lang/String;

    .line 64
    iput-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->deviceToken:Ljava/lang/String;

    .line 71
    iput-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->onReadyToSubscribeListener:Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;

    .line 383
    new-instance v2, Lcom/worklight/wlclient/api/WLPush$3;

    invoke-direct {v2, p0}, Lcom/worklight/wlclient/api/WLPush$3;-><init>(Lcom/worklight/wlclient/api/WLPush;)V

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onRegister:Landroid/content/BroadcastReceiver;

    .line 397
    new-instance v2, Lcom/worklight/wlclient/api/WLPush$4;

    invoke-direct {v2, p0}, Lcom/worklight/wlclient/api/WLPush$4;-><init>(Lcom/worklight/wlclient/api/WLPush;)V

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onRegisterError:Landroid/content/BroadcastReceiver;

    .line 421
    new-instance v2, Lcom/worklight/wlclient/api/WLPush$5;

    invoke-direct {v2, p0}, Lcom/worklight/wlclient/api/WLPush$5;-><init>(Lcom/worklight/wlclient/api/WLPush;)V

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onMessage:Landroid/content/BroadcastReceiver;

    .line 74
    if-nez p3, :cond_0

    .line 75
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "getPush() call failed because the input parameter \'context\' is null. Pass a valid context instance."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The current Android version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed to work with push."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, errorMsg:Ljava/lang/String;
    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 82
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1           #errorMsg:Ljava/lang/String;
    :cond_1
    move-object v2, p3

    .line 85
    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    :try_start_2
    const-string v2, "drawable"

    const-string v3, "push"

    invoke-static {p3, v2, v3}, Lcom/worklight/common/WLUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 107
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLPush;->config:Lcom/worklight/common/WLConfig;

    .line 108
    iput-object p3, p0, Lcom/worklight/wlclient/api/WLPush;->context:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLPush;->unregisterReceivers()V

    .line 111
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->onMessage:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".C2DM_MESSAGE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    const-string v2, "Activity started from message notification"

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "notificationBar"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onMessage:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 119
    :cond_2
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->cancelAllNotification()V

    .line 120
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->dispatchPending()V

    .line 121
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your device is not allowed to work with push. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 97
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your manifest is not allowed to work with push. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 103
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to find the icon resource. Add the icon file under the /res/drawable folder."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic access$1100(Lcom/worklight/wlclient/api/WLPush;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/worklight/wlclient/api/WLPush;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->hasPendings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/worklight/wlclient/api/WLPush;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->dispatchPendings()V

    return-void
.end method

.method static synthetic access$1402(Lcom/worklight/wlclient/api/WLPush;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/worklight/wlclient/api/WLPush;->isTokenUpdatedOnServer:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/worklight/wlclient/api/WLPush;)Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->onReadyToSubscribeListener:Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/worklight/wlclient/api/WLPush;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush;->deviceToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLPush;->updateTokenCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/worklight/wlclient/api/WLPush;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->onRegister:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/worklight/wlclient/api/WLPush;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/worklight/wlclient/api/WLPush;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->onRegisterError:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/wlclient/api/WLPush;->showErrorDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/worklight/wlclient/api/WLPush;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->pending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/worklight/wlclient/api/WLPush;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->dispatchPending()V

    return-void
.end method

.method private cancelAllNotification()V
    .locals 3

    .prologue
    .line 537
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 538
    .local v0, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 539
    return-void
.end method

.method private dispatch()V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->dispatchPending()V

    .line 571
    return-void
.end method

.method private dispatchPending()V
    .locals 5

    .prologue
    .line 575
    :goto_0
    const/4 v1, 0x0

    .line 576
    .local v1, message:Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
    iget-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->pending:Ljava/util/ArrayList;

    monitor-enter v3

    .line 577
    :try_start_0
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->pending:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->pending:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    move-object v1, v0

    .line 580
    :cond_0
    monitor-exit v3

    .line 581
    if-nez v1, :cond_1

    .line 586
    return-void

    .line 580
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 584
    :cond_1
    invoke-virtual {v1}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->getProps()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->getPayload()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/worklight/wlclient/api/WLPush;->onMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private dispatchPendings()V
    .locals 7

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, alias:Ljava/lang/String;
    const/4 v2, 0x0

    .line 496
    .local v2, event:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->pendingPushEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 497
    .local v3, pendingIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 498
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #event:Lorg/json/JSONObject;
    check-cast v2, Lorg/json/JSONObject;

    .line 500
    .restart local v2       #event:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "alias"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;

    #getter for: Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSourceListener:Lcom/worklight/wlclient/api/WLEventSourceListener;
    invoke-static {v4}, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->access$1000(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Lcom/worklight/wlclient/api/WLEventSourceListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 502
    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;

    #getter for: Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSourceListener:Lcom/worklight/wlclient/api/WLEventSourceListener;
    invoke-static {v4}, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->access$1000(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Lcom/worklight/wlclient/api/WLEventSourceListener;

    move-result-object v4

    const-string v5, "props"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "payload"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/worklight/wlclient/api/WLEventSourceListener;->onReceive(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v1

    .line 506
    .local v1, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed processing pending push events."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    .end local v1           #e:Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method private hasPendings()Z
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->pendingPushEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->pendingPushEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 486
    const/4 v0, 0x1

    .line 488
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAbleToSubscribe(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "alias"
    .parameter "isRegistering"

    .prologue
    const/4 v0, 0x0

    .line 339
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->isDeviceSupportPush()Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current Android version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support push notifications."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 354
    :goto_0
    return v0

    .line 344
    :cond_0
    iget-boolean v1, p0, Lcom/worklight/wlclient/api/WLPush;->isTokenUpdatedOnServer:Z

    if-nez v1, :cond_1

    .line 345
    const-string v1, "Can\'t subscribe, notification token is not updated on the server"

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 351
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No registered push event source for alias \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDeviceSupportPush()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 333
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, version:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x400199999999999aL

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 6
    .parameter "props"
    .parameter "payload"

    .prologue
    .line 471
    :try_start_0
    const-string v2, "alias"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    .local v0, alias:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WLPush received notification for alias: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;

    #getter for: Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSourceListener:Lcom/worklight/wlclient/api/WLEventSourceListener;
    invoke-static {v2}, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->access$1000(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Lcom/worklight/wlclient/api/WLEventSourceListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;

    #getter for: Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSourceListener:Lcom/worklight/wlclient/api/WLEventSourceListener;
    invoke-static {v2}, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->access$1000(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Lcom/worklight/wlclient/api/WLEventSourceListener;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/worklight/wlclient/api/WLEventSourceListener;->onReceive(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .end local v0           #alias:Ljava/lang/String;
    :goto_0
    return-void

    .line 477
    .restart local v0       #alias:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->pendingPushEvents:Ljava/util/ArrayList;

    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\"alias\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \"props\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \"payload\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    .end local v0           #alias:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 480
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed processing pending push events, because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showErrorDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "buttonText"

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->context:Landroid/content/Context;

    const-class v2, Lcom/worklight/wlclient/ui/UIActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "action"

    const-string v2, "exit"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const-string v1, "dialogue_message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string v1, "dialogue_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    const-string v1, "positive_button_text"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 612
    return-void
.end method

.method private updateRegisteredEventSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/worklight/wlclient/api/WLEventSourceListener;)V
    .locals 2
    .parameter "alias"
    .parameter "adapter"
    .parameter "eventSource"
    .parameter "eventSourceListener"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 317
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;

    .line 321
    .local v0, registeredEventSource:Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;
    if-nez v0, :cond_1

    .line 322
    new-instance v0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;

    .end local v0           #registeredEventSource:Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;
    invoke-direct {v0, p0}, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;-><init>(Lcom/worklight/wlclient/api/WLPush;)V

    .line 325
    .restart local v0       #registeredEventSource:Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->setAdapter(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, p3}, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->setEventSource(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, p4}, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->setEventSourceListener(Lcom/worklight/wlclient/api/WLEventSourceListener;)V

    .line 329
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method

.method private updateTokenCallback(Ljava/lang/String;)V
    .locals 6
    .parameter "deviceToken"

    .prologue
    .line 512
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->serverToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->serverToken:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 513
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Push notification device token has changed, Updating on server [serverToken: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->serverToken:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", deviceToken: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 514
    new-instance v3, Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-direct {v3}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    .line 515
    .local v3, requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;
    const-string v2, "updateToken"

    invoke-virtual {v3, v2, p1}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    new-instance v1, Lcom/worklight/wlclient/api/WLPush$UpdateTokenListener;

    invoke-direct {v1, p0}, Lcom/worklight/wlclient/api/WLPush$UpdateTokenListener;-><init>(Lcom/worklight/wlclient/api/WLPush;)V

    .line 517
    .local v1, listener:Lcom/worklight/wlclient/WLRequestListener;
    new-instance v0, Lcom/worklight/wlclient/WLRequest;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->config:Lcom/worklight/common/WLConfig;

    iget-object v5, p0, Lcom/worklight/wlclient/api/WLPush;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/worklight/wlclient/WLRequest;-><init>(Lcom/worklight/wlclient/WLRequestListener;Lorg/apache/http/protocol/HttpContext;Lcom/worklight/wlclient/api/WLRequestOptions;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V

    .line 523
    .local v0, updateTokenRequest:Lcom/worklight/wlclient/WLRequest;
    const-string v2, "notifications"

    invoke-virtual {v0, v2}, Lcom/worklight/wlclient/WLRequest;->makeRequest(Ljava/lang/String;)V

    .line 533
    .end local v0           #updateTokenRequest:Lcom/worklight/wlclient/WLRequest;
    .end local v1           #listener:Lcom/worklight/wlclient/WLRequestListener;
    .end local v3           #requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->serverToken:Ljava/lang/String;

    .line 534
    return-void

    .line 525
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/worklight/wlclient/api/WLPush;->isTokenUpdatedOnServer:Z

    .line 526
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onReadyToSubscribeListener:Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;

    if-eqz v2, :cond_3

    .line 527
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onReadyToSubscribeListener:Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;

    invoke-interface {v2}, Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;->onReadyToSubscribe()V

    .line 529
    :cond_3
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->hasPendings()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->dispatchPendings()V

    goto :goto_0
.end method


# virtual methods
.method public clearSubscribedEventSources()V
    .locals 1

    .prologue
    .line 444
    const-string v0, "Clearing notification subscriptions."

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 446
    return-void
.end method

.method getOnReadyToSubscribeListener()Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->onReadyToSubscribeListener:Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;

    return-object v0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 619
    invoke-static {}, Lcom/worklight/wlclient/push/GCMIntentService;->isAppForeground()Z

    move-result v0

    return v0
.end method

.method public isPushSupported()Z
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->isDeviceSupportPush()Z

    move-result v0

    return v0
.end method

.method public isSubscribed(Ljava/lang/String;)Z
    .locals 1
    .parameter "alias"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerEventSourceCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/worklight/wlclient/api/WLEventSourceListener;)V
    .locals 2
    .parameter "alias"
    .parameter "adapter"
    .parameter "eventSource"
    .parameter "eventSourceListener"

    .prologue
    .line 150
    invoke-static {p1}, Lcom/worklight/common/WLUtils;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/worklight/common/WLUtils;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/worklight/common/WLUtils;->isStringEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot register to event source callback with alias \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', adapter \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and eventSource \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Use concrete values which are not null or empty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot register to event source callback with alias \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', because it is already registered."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/worklight/wlclient/api/WLPush;->isAbleToSubscribe(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/worklight/wlclient/api/WLPush;->updateRegisteredEventSources(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/worklight/wlclient/api/WLEventSourceListener;)V

    goto :goto_0
.end method

.method public setForeground(Z)V
    .locals 0
    .parameter "isForeground"

    .prologue
    .line 629
    invoke-static {p1}, Lcom/worklight/wlclient/push/GCMIntentService;->setAppForeground(Z)V

    .line 630
    return-void
.end method

.method public setOnReadyToSubscribeListener(Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush;->onReadyToSubscribeListener:Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;

    .line 131
    return-void
.end method

.method public subscribe(Ljava/lang/String;Lcom/worklight/wlclient/api/WLPushOptions;Lcom/worklight/wlclient/api/WLResponseListener;)V
    .locals 12
    .parameter "alias"
    .parameter "pushOptions"
    .parameter "responseListener"

    .prologue
    .line 176
    invoke-static {p1}, Lcom/worklight/common/WLUtils;->isStringEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot subscribe to event source with alias \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\', because it is either null or empty."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/worklight/wlclient/api/WLPush;->isAbleToSubscribe(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;

    .line 187
    .local v11, registeredEventSource:Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;
    if-nez v11, :cond_2

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event source with alias \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' is not registered. Register before subscribing to event source."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_2
    if-nez p2, :cond_3

    .line 193
    new-instance p2, Lcom/worklight/wlclient/api/WLPushOptions;

    .end local p2
    invoke-direct {p2}, Lcom/worklight/wlclient/api/WLPushOptions;-><init>()V

    .line 196
    .restart local p2
    :cond_3
    new-instance v3, Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-direct {v3}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    .line 197
    .local v3, requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;
    if-nez p3, :cond_4

    .line 198
    new-instance p3, Lcom/worklight/wlclient/api/WLPush$1;

    .end local p3
    invoke-direct {p3, p0}, Lcom/worklight/wlclient/api/WLPush$1;-><init>(Lcom/worklight/wlclient/api/WLPush;)V

    .line 208
    .restart local p3
    :cond_4
    invoke-virtual {v3, p3}, Lcom/worklight/wlclient/api/WLRequestOptions;->setResponseListener(Lcom/worklight/wlclient/api/WLResponseListener;)V

    .line 209
    new-instance v1, Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;

    invoke-direct {v1, p0, p1}, Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;-><init>(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;)V

    .line 211
    .local v1, listener:Lcom/worklight/wlclient/WLRequestListener;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 212
    .local v6, paramBuffer:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 213
    .local v8, paramName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 214
    .local v9, paramSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 215
    .local v7, paramIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/worklight/wlclient/api/WLPushOptions;->getSubscriptionParameters()Ljava/util/Map;

    move-result-object v10

    .line 216
    .local v10, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "{"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    if-eqz v10, :cond_6

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 218
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 219
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 220
    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 221
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #paramName:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 222
    .restart local v8       #paramName:Ljava/lang/String;
    const-string v2, "\""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v2, "\":\""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const-string v2, "\""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 228
    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 232
    :cond_6
    const-string v2, "}"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    const-string v2, "subscribe"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v2, "alias"

    invoke-virtual {v3, v2, p1}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, "adapter"

    #getter for: Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->adapter:Ljava/lang/String;
    invoke-static {v11}, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->access$000(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v2, "eventSource"

    #getter for: Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSource:Ljava/lang/String;
    invoke-static {v11}, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->access$100(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v0, Lcom/worklight/wlclient/WLRequest;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->config:Lcom/worklight/common/WLConfig;

    iget-object v5, p0, Lcom/worklight/wlclient/api/WLPush;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/worklight/wlclient/WLRequest;-><init>(Lcom/worklight/wlclient/WLRequestListener;Lorg/apache/http/protocol/HttpContext;Lcom/worklight/wlclient/api/WLRequestOptions;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V

    .line 246
    .local v0, notificationRequest:Lcom/worklight/wlclient/WLRequest;
    const-string v2, "notifications"

    invoke-virtual {v0, v2}, Lcom/worklight/wlclient/WLRequest;->makeRequest(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLPush;->dispatch()V

    goto/16 :goto_0
.end method

.method public unregisterReceivers()V
    .locals 3

    .prologue
    .line 545
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onRegister:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onRegisterError:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 557
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->onMessage:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 563
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->onDestroy(Landroid/content/Context;)V

    .line 566
    :cond_1
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterReceivers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 554
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterReceivers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 558
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 559
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterReceivers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->warning(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public unsubscribe(Ljava/lang/String;Lcom/worklight/wlclient/api/WLResponseListener;)V
    .locals 7
    .parameter "alias"
    .parameter "responseListener"

    .prologue
    .line 266
    invoke-static {p1}, Lcom/worklight/common/WLUtils;->isStringEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot unsubscribe from event source with alias \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'.Please check if the input alias is valid."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/worklight/wlclient/api/WLPush;->isAbleToSubscribe(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    if-nez p2, :cond_2

    .line 275
    new-instance p2, Lcom/worklight/wlclient/api/WLPush$2;

    .end local p2
    invoke-direct {p2, p0}, Lcom/worklight/wlclient/api/WLPush$2;-><init>(Lcom/worklight/wlclient/api/WLPush;)V

    .line 286
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->registeredEventSources:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;

    .line 287
    .local v6, registeredEventSource:Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;
    new-instance v3, Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-direct {v3}, Lcom/worklight/wlclient/api/WLRequestOptions;-><init>()V

    .line 288
    .local v3, requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;
    invoke-virtual {v3, p2}, Lcom/worklight/wlclient/api/WLRequestOptions;->setResponseListener(Lcom/worklight/wlclient/api/WLResponseListener;)V

    .line 289
    new-instance v1, Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;

    invoke-direct {v1, p0, p1}, Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;-><init>(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;)V

    .line 291
    .local v1, listener:Lcom/worklight/wlclient/WLRequestListener;
    const-string v2, "unsubscribe"

    const-string v4, "{}"

    invoke-virtual {v3, v2, v4}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "alias"

    invoke-virtual {v3, v2, p1}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v2, "adapter"

    #getter for: Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->adapter:Ljava/lang/String;
    invoke-static {v6}, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->access$000(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v2, "eventSource"

    #getter for: Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSource:Ljava/lang/String;
    invoke-static {v6}, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->access$100(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/worklight/wlclient/api/WLRequestOptions;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v0, Lcom/worklight/wlclient/WLRequest;

    iget-object v2, p0, Lcom/worklight/wlclient/api/WLPush;->httpContext:Lorg/apache/http/protocol/HttpContext;

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->config:Lcom/worklight/common/WLConfig;

    iget-object v5, p0, Lcom/worklight/wlclient/api/WLPush;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/worklight/wlclient/WLRequest;-><init>(Lcom/worklight/wlclient/WLRequestListener;Lorg/apache/http/protocol/HttpContext;Lcom/worklight/wlclient/api/WLRequestOptions;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V

    .line 303
    .local v0, notificationRequest:Lcom/worklight/wlclient/WLRequest;
    const-string v2, "notifications"

    invoke-virtual {v0, v2}, Lcom/worklight/wlclient/WLRequest;->makeRequest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateSubscribedEventSources(Lorg/json/JSONArray;)V
    .locals 7
    .parameter "eventSources"

    .prologue
    .line 451
    const-string v5, "Updating notification subscriptions."

    invoke-static {v5}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 456
    const/4 v3, 0x0

    .local v3, i:I
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .local v4, length:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 457
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 458
    .local v2, eventSourceObject:Lorg/json/JSONObject;
    const-string v5, "alias"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 459
    .local v0, alias:Ljava/lang/String;
    iget-object v5, p0, Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 460
    iget-object v5, p0, Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 464
    .end local v0           #alias:Ljava/lang/String;
    .end local v2           #eventSourceObject:Lorg/json/JSONObject;
    .end local v4           #length:I
    :catch_0
    move-exception v1

    .line 465
    .local v1, e:Lorg/json/JSONException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating notification subscriptions failed, because "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 467
    .end local v1           #e:Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method public updateToken(Ljava/lang/String;)V
    .locals 5
    .parameter "serverToken"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush;->serverToken:Ljava/lang/String;

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->onRegister:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 369
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->onRegisterError:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    :goto_1
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->onRegister:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".C2DM_REGISTERED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 374
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush;->onRegisterError:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".C2DM_ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 375
    const-string v0, "Registering at the GCM server."

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/worklight/wlclient/api/WLPush;->config:Lcom/worklight/common/WLConfig;

    invoke-virtual {v3}, Lcom/worklight/common/WLConfig;->getGCMSender()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 378
    return-void

    .line 370
    :catch_0
    move-exception v0

    goto :goto_1

    .line 365
    :catch_1
    move-exception v0

    goto :goto_0
.end method
