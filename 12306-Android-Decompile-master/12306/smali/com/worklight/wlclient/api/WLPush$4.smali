.class Lcom/worklight/wlclient/api/WLPush$4;
.super Landroid/content/BroadcastReceiver;
.source "WLPush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/api/WLPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/api/WLPush;


# direct methods
.method constructor <init>(Lcom/worklight/wlclient/api/WLPush;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$4;->this$0:Lcom/worklight/wlclient/api/WLPush;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 401
    const-string v4, "com/worklight/wlclient/messages"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 403
    .local v0, bundle:Ljava/util/ResourceBundle;
    const-string v4, "errorId"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, error:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/worklight/androidgap/push/GCMErrorCode;->valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/push/GCMErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 411
    .local v3, gcmError:Lcom/worklight/androidgap/push/GCMErrorCode;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The application will not receive push notifications, because registration for push notifications failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/worklight/androidgap/push/GCMErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 412
    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush$4;->this$0:Lcom/worklight/wlclient/api/WLPush;

    const-string v5, "WLClient.error"

    invoke-virtual {v0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "WLClient.notificationUpdateFailure"

    invoke-virtual {v0, v6}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "WLClient.ok"

    invoke-virtual {v0, v7}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/worklight/wlclient/api/WLPush;->showErrorDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6, v7}, Lcom/worklight/wlclient/api/WLPush;->access$700(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush$4;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/worklight/wlclient/api/WLPush;->access$500(Lcom/worklight/wlclient/api/WLPush;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/worklight/wlclient/api/WLPush$4;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->onRegister:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/worklight/wlclient/api/WLPush;->access$400(Lcom/worklight/wlclient/api/WLPush;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 414
    iget-object v4, p0, Lcom/worklight/wlclient/api/WLPush$4;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/worklight/wlclient/api/WLPush;->access$500(Lcom/worklight/wlclient/api/WLPush;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/worklight/wlclient/api/WLPush$4;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->onRegisterError:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/worklight/wlclient/api/WLPush;->access$600(Lcom/worklight/wlclient/api/WLPush;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 415
    return-void

    .line 407
    .end local v3           #gcmError:Lcom/worklight/androidgap/push/GCMErrorCode;
    :catch_0
    move-exception v1

    .line 408
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/worklight/androidgap/push/GCMErrorCode;->UNEXPECTED:Lcom/worklight/androidgap/push/GCMErrorCode;

    .line 409
    .restart local v3       #gcmError:Lcom/worklight/androidgap/push/GCMErrorCode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registering to notification failed because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
