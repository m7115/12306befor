.class public Lcom/worklight/androidgap/plugin/WLCustomDialog;
.super Lorg/apache/cordova/Notification;
.source "WLCustomDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/cordova/Notification;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 7
    .parameter "message"
    .parameter "title"
    .parameter "buttonLabels"
    .parameter "callbackContext"

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WLCustomDialog;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 34
    .local v2, cordova:Lorg/apache/cordova/api/CordovaInterface;
    new-instance v0, Lcom/worklight/androidgap/plugin/WLCustomDialog$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/worklight/androidgap/plugin/WLCustomDialog$1;-><init>(Lcom/worklight/androidgap/plugin/WLCustomDialog;Lorg/apache/cordova/api/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V

    .line 83
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLCustomDialog;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 32
    .end local v0           #runnable:Ljava/lang/Runnable;
    .end local v2           #cordova:Lorg/apache/cordova/api/CordovaInterface;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
