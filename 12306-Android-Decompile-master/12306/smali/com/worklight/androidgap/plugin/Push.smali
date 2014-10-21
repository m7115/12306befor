.class public Lcom/worklight/androidgap/plugin/Push;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Push.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/Push$4;,
        Lcom/worklight/androidgap/plugin/Push$ACTION;
    }
.end annotation


# static fields
.field private static final FROM_NOTIFICATION_BAR:Ljava/lang/String; = "notificationBar"

.field private static final WL_CLIENT_PUSH_ONMESSAGE:Ljava/lang/String; = "WL.Client.Push.__onmessage"


# instance fields
.field private badGCMSetupMsg:Ljava/lang/String;

.field private deviceToken:Ljava/lang/String;

.field private isGCMSetupValid:Z

.field private messageCallback:Ljava/lang/String;

.field private onMessageReceiver:Landroid/content/BroadcastReceiver;

.field private onRegisterErrorReceiver:Landroid/content/BroadcastReceiver;

.field private onRegisterReceiver:Landroid/content/BroadcastReceiver;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->messageCallback:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/Push;->pending:Ljava/util/ArrayList;

    .line 49
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->deviceToken:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->badGCMSetupMsg:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/Push;->isGCMSetupValid:Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/worklight/androidgap/plugin/Push;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Push;->pending:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/worklight/androidgap/plugin/Push;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Push;->dispatchPending()V

    return-void
.end method

.method static synthetic access$200(Lcom/worklight/androidgap/plugin/Push;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Push;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/worklight/androidgap/plugin/Push;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/Push;->deviceToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/worklight/androidgap/plugin/Push;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Push;->onRegisterReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/worklight/androidgap/plugin/Push;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Push;->onRegisterErrorReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private cancelAllNotification()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 144
    .local v0, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 145
    return-void
.end method

.method private dispatch(Lorg/json/JSONArray;)Z
    .locals 5
    .parameter "args"

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 278
    .local v1, method:Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 282
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Push.dispatch(): method="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 283
    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 286
    :cond_0
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    const/4 v1, 0x0

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push;->messageCallback:Ljava/lang/String;

    if-nez v2, :cond_2

    if-nez v1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push;->messageCallback:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push;->messageCallback:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 290
    :cond_3
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->messageCallback:Ljava/lang/String;

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Javascript script requests "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_5

    const-string v2, "to stop dispatching"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 293
    :cond_4
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Push;->dispatchPending()V

    .line 294
    const/4 v2, 0x1

    return v2

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "Push.dispatch(): Unable to get method name from args"

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v0           #e:Lorg/json/JSONException;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatching to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private dispatchPending()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchPending called. Number of pending messages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/worklight/androidgap/plugin/Push;->pending:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 308
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    const-string v3, "WL.Client.Push.__onmessage"

    iput-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->messageCallback:Ljava/lang/String;

    .line 311
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchPending webView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/worklight/androidgap/plugin/Push;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messageCallback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/worklight/androidgap/plugin/Push;->messageCallback:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->webView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->messageCallback:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 334
    :cond_1
    return-void

    .line 315
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v1, jsCallSB:Ljava/lang/StringBuilder;
    :goto_0
    const/4 v2, 0x0

    .line 318
    .local v2, message:Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/Push;->pending:Ljava/util/ArrayList;

    monitor-enter v4

    .line 319
    :try_start_0
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->pending:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->pending:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    move-object v2, v0

    .line 320
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    if-eqz v2, :cond_1

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dispatching to javascript "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 326
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->messageCallback:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v2}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->getProps()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v2}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->getPayload()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v3, ");"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private subscribe(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 8
    .parameter "args"
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 202
    if-nez p2, :cond_0

    .line 203
    const-string v2, "Push notification will not be served by the application because Worklight runtime failed to register a callback function."

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 272
    :goto_0
    return v1

    .line 209
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/worklight/androidgap/plugin/Push;->onRegisterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_1
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->onRegisterReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 216
    new-instance v3, Lcom/worklight/androidgap/plugin/Push$2;

    invoke-direct {v3, p0, p2}, Lcom/worklight/androidgap/plugin/Push$2;-><init>(Lcom/worklight/androidgap/plugin/Push;Lorg/apache/cordova/api/CallbackContext;)V

    iput-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->onRegisterReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    :cond_1
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/worklight/androidgap/plugin/Push;->onRegisterReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".C2DM_REGISTERED"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->onRegisterErrorReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_2

    .line 235
    new-instance v3, Lcom/worklight/androidgap/plugin/Push$3;

    invoke-direct {v3, p0, p2}, Lcom/worklight/androidgap/plugin/Push$3;-><init>(Lcom/worklight/androidgap/plugin/Push;Lorg/apache/cordova/api/CallbackContext;)V

    iput-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->onRegisterErrorReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    :cond_2
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/worklight/androidgap/plugin/Push;->onRegisterErrorReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".C2DM_ERROR"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/worklight/androidgap/WLDroidGap;->getWLConfig()Lcom/worklight/common/WLConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/worklight/common/WLConfig;->getGCMSender()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 269
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 270
    .local v0, pluginResult:Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {v0, v2}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 271
    invoke-virtual {p2, v0}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    move v1, v2

    .line 272
    goto/16 :goto_0

    .line 210
    .end local v0           #pluginResult:Lorg/apache/cordova/api/PluginResult;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private unregisterReceivers()V
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push;->onRegisterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push;->onMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    :cond_0
    :goto_1
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterReceivers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 158
    .restart local v0       #e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterReceivers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private validateGCMSetup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 108
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 109
    .local v2, sdkVer:I
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your device does not support GCM. GCM is available for Android 2.2+ (API level 8+). Your device API level is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->badGCMSetupMsg:Ljava/lang/String;

    .line 112
    iput-boolean v5, p0, Lcom/worklight/androidgap/plugin/Push;->isGCMSetupValid:Z

    .line 117
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :goto_1
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your device does not support GCM. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". If you are using an android emulator make sure it has Google APIs (Google Inc)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->badGCMSetupMsg:Ljava/lang/String;

    .line 122
    iput-boolean v5, p0, Lcom/worklight/androidgap/plugin/Push;->isGCMSetupValid:Z

    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v1

    .line 129
    .local v1, ise:Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Your application manifest is not properly set up for GCM. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Refer to the Google Android documentation for instructons how to setup up your application manifest for using GCM."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/worklight/androidgap/plugin/Push;->badGCMSetupMsg:Ljava/lang/String;

    .line 132
    iput-boolean v5, p0, Lcom/worklight/androidgap/plugin/Push;->isGCMSetupValid:Z

    goto :goto_1
.end method


# virtual methods
.method public dispatchPending(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 299
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->pending:Ljava/util/ArrayList;

    monitor-enter v1

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Push;->pending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    const-string v0, "WL.Client.Push.__onmessage"

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/Push;->messageCallback:Ljava/lang/String;

    .line 303
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Push;->dispatchPending()V

    .line 304
    return-void

    .line 301
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 4
    .parameter "action"
    .parameter "args"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 165
    iget-boolean v2, p0, Lcom/worklight/androidgap/plugin/Push;->isGCMSetupValid:Z

    if-nez v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push;->badGCMSetupMsg:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 191
    :goto_0
    return v1

    .line 170
    :cond_0
    invoke-static {p1}, Lcom/worklight/androidgap/plugin/Push$ACTION;->fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/Push$ACTION;

    move-result-object v0

    .line 171
    .local v0, actionE:Lcom/worklight/androidgap/plugin/Push$ACTION;
    if-eqz v0, :cond_1

    .line 172
    sget-object v2, Lcom/worklight/androidgap/plugin/Push$4;->$SwitchMap$com$worklight$androidgap$plugin$Push$ACTION:[I

    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/Push$ACTION;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/worklight/androidgap/plugin/Push;->subscribe(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto :goto_0

    .line 177
    :pswitch_1
    invoke-virtual {p3}, Lorg/apache/cordova/api/CallbackContext;->success()V

    .line 178
    invoke-direct {p0, p2}, Lcom/worklight/androidgap/plugin/Push;->dispatch(Lorg/json/JSONArray;)Z

    move-result v1

    goto :goto_0

    .line 181
    :pswitch_2
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push;->deviceToken:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_1
    const-string v2, "Null action"

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public initialize(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 6
    .parameter "cordova"
    .parameter "webView"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/api/CordovaPlugin;->initialize(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 72
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Push;->validateGCMSetup()V

    .line 73
    iget-boolean v1, p0, Lcom/worklight/androidgap/plugin/Push;->isGCMSetupValid:Z

    if-eqz v1, :cond_2

    .line 74
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Push;->unregisterReceivers()V

    .line 75
    if-eqz p1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->onMessageReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/worklight/androidgap/plugin/Push$1;

    invoke-direct {v1, p0}, Lcom/worklight/androidgap/plugin/Push$1;-><init>(Lcom/worklight/androidgap/plugin/Push;)V

    iput-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->onMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    :cond_0
    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push;->onMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".C2DM_MESSAGE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-object v0, p1

    .line 94
    check-cast v0, Landroid/app/Activity;

    .line 95
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    const-string v1, "Activity started from message notification"

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "notificationBar"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push;->onMessageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 102
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Push;->dispatchPending()V

    .line 104
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Push;->unregisterReceivers()V

    .line 198
    invoke-super {p0}, Lorg/apache/cordova/api/CordovaPlugin;->onDestroy()V

    .line 199
    return-void
.end method

.method public onResume(Z)V
    .locals 0
    .parameter "multitasking"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lorg/apache/cordova/api/CordovaPlugin;->onResume(Z)V

    .line 139
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Push;->cancelAllNotification()V

    .line 140
    return-void
.end method
