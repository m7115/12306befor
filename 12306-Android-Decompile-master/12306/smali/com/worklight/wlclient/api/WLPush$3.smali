.class Lcom/worklight/wlclient/api/WLPush$3;
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
    .line 383
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$3;->this$0:Lcom/worklight/wlclient/api/WLPush;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$3;->this$0:Lcom/worklight/wlclient/api/WLPush;

    const-string v1, "registrationId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/worklight/wlclient/api/WLPush;->deviceToken:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/worklight/wlclient/api/WLPush;->access$202(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully registered.Returned deviceToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush$3;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->deviceToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/worklight/wlclient/api/WLPush;->access$200(Lcom/worklight/wlclient/api/WLPush;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$3;->this$0:Lcom/worklight/wlclient/api/WLPush;

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush$3;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->deviceToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/worklight/wlclient/api/WLPush;->access$200(Lcom/worklight/wlclient/api/WLPush;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/worklight/wlclient/api/WLPush;->updateTokenCallback(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/worklight/wlclient/api/WLPush;->access$300(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$3;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/worklight/wlclient/api/WLPush;->access$500(Lcom/worklight/wlclient/api/WLPush;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush$3;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->onRegister:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/worklight/wlclient/api/WLPush;->access$400(Lcom/worklight/wlclient/api/WLPush;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 390
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$3;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/worklight/wlclient/api/WLPush;->access$500(Lcom/worklight/wlclient/api/WLPush;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush$3;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->onRegisterError:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/worklight/wlclient/api/WLPush;->access$600(Lcom/worklight/wlclient/api/WLPush;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 391
    return-void
.end method
