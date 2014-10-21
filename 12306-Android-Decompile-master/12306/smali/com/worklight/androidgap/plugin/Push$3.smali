.class Lcom/worklight/androidgap/plugin/Push$3;
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
    .line 235
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/Push$3;->this$0:Lcom/worklight/androidgap/plugin/Push;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/Push$3;->val$ctx:Lorg/apache/cordova/api/CallbackContext;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 239
    const-string v5, "errorId"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, error:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/worklight/androidgap/push/GCMErrorCode;->valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/push/GCMErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 247
    .local v3, gcmError:Lcom/worklight/androidgap/push/GCMErrorCode;
    :goto_0
    invoke-virtual {v3}, Lcom/worklight/androidgap/push/GCMErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, errMsg:Ljava/lang/String;
    sget-object v5, Lcom/worklight/androidgap/push/GCMErrorCode;->INVALID_SENDER:Lcom/worklight/androidgap/push/GCMErrorCode;

    invoke-virtual {v5}, Lcom/worklight/androidgap/push/GCMErrorCode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nCheck the pushSender attributes in the application-descriptor.xml file. \nUsing a browser login into the \'Google APIs Console page\' that will be used for sending push messages.\nThe \'Project Number\' should be set as the pushSender \'senderId\'.\nNavigate to the API Access tab. The \'API key for server apps\' should be set as the pushSender \'key\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Notifying javascript about unsuccessful registration to the GCM service."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 252
    new-instance v4, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v3}, Lcom/worklight/androidgap/push/GCMErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 253
    .local v4, result:Lorg/apache/cordova/api/PluginResult;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 254
    iget-object v5, p0, Lcom/worklight/androidgap/plugin/Push$3;->val$ctx:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v5, v4}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 257
    iget-object v5, p0, Lcom/worklight/androidgap/plugin/Push$3;->this$0:Lcom/worklight/androidgap/plugin/Push;

    iget-object v5, v5, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/worklight/androidgap/plugin/Push$3;->this$0:Lcom/worklight/androidgap/plugin/Push;

    #getter for: Lcom/worklight/androidgap/plugin/Push;->onRegisterReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/worklight/androidgap/plugin/Push;->access$300(Lcom/worklight/androidgap/plugin/Push;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 258
    iget-object v5, p0, Lcom/worklight/androidgap/plugin/Push$3;->this$0:Lcom/worklight/androidgap/plugin/Push;

    iget-object v5, v5, Lcom/worklight/androidgap/plugin/Push;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/worklight/androidgap/plugin/Push$3;->this$0:Lcom/worklight/androidgap/plugin/Push;

    #getter for: Lcom/worklight/androidgap/plugin/Push;->onRegisterErrorReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/worklight/androidgap/plugin/Push;->access$400(Lcom/worklight/androidgap/plugin/Push;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    return-void

    .line 243
    .end local v1           #errMsg:Ljava/lang/String;
    .end local v3           #gcmError:Lcom/worklight/androidgap/push/GCMErrorCode;
    .end local v4           #result:Lorg/apache/cordova/api/PluginResult;
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/worklight/androidgap/push/GCMErrorCode;->UNEXPECTED:Lcom/worklight/androidgap/push/GCMErrorCode;

    .line 245
    .restart local v3       #gcmError:Lcom/worklight/androidgap/push/GCMErrorCode;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Push Service: additional information for unexpected error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
