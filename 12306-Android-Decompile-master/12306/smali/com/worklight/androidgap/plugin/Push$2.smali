.class Lcom/worklight/androidgap/plugin/Push$2;
.super Landroid/content/BroadcastReceiver;
.source "Push.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/Push;->subscribe(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/Push;

.field final synthetic val$ctx:Lorg/apache/cordova/api/CallbackContext;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/plugin/Push;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/Push$2;->this$0:Lcom/worklight/androidgap/plugin/Push;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/Push$2;->val$ctx:Lorg/apache/cordova/api/CallbackContext;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 219
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push$2;->this$0:Lcom/worklight/androidgap/plugin/Push;

    const-string v2, "registrationId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/worklight/androidgap/plugin/Push;->deviceToken:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/worklight/androidgap/plugin/Push;->access$202(Lcom/worklight/androidgap/plugin/Push;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push$2;->this$0:Lcom/worklight/androidgap/plugin/Push;

    #getter for: Lcom/worklight/androidgap/plugin/Push;->deviceToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/worklight/androidgap/plugin/Push;->access$200(Lcom/worklight/androidgap/plugin/Push;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 221
    .local v0, result:Lorg/apache/cordova/api/PluginResult;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 222
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push$2;->val$ctx:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 225
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push$2;->this$0:Lcom/worklight/androidgap/plugin/Push;

    iget-object v1, v1, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push$2;->this$0:Lcom/worklight/androidgap/plugin/Push;

    #getter for: Lcom/worklight/androidgap/plugin/Push;->onRegisterReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/worklight/androidgap/plugin/Push;->access$300(Lcom/worklight/androidgap/plugin/Push;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 226
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push$2;->this$0:Lcom/worklight/androidgap/plugin/Push;

    iget-object v1, v1, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Push$2;->this$0:Lcom/worklight/androidgap/plugin/Push;

    #getter for: Lcom/worklight/androidgap/plugin/Push;->onRegisterErrorReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/worklight/androidgap/plugin/Push;->access$400(Lcom/worklight/androidgap/plugin/Push;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    return-void
.end method
