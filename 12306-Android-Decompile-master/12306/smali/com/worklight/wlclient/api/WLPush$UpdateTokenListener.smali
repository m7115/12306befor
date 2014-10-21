.class Lcom/worklight/wlclient/api/WLPush$UpdateTokenListener;
.super Ljava/lang/Object;
.source "WLPush.java"

# interfaces
.implements Lcom/worklight/wlclient/WLRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/api/WLPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateTokenListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/api/WLPush;


# direct methods
.method public constructor <init>(Lcom/worklight/wlclient/api/WLPush;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$UpdateTokenListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V
    .locals 2
    .parameter "wlFailResponse"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$UpdateTokenListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    const/4 v1, 0x0

    #setter for: Lcom/worklight/wlclient/api/WLPush;->isTokenUpdatedOnServer:Z
    invoke-static {v0, v1}, Lcom/worklight/wlclient/api/WLPush;->access$1402(Lcom/worklight/wlclient/api/WLPush;Z)Z

    .line 695
    const-string v0, "Failed to update token on server"

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 2
    .parameter "wlResponse"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$UpdateTokenListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    const/4 v1, 0x1

    #setter for: Lcom/worklight/wlclient/api/WLPush;->isTokenUpdatedOnServer:Z
    invoke-static {v0, v1}, Lcom/worklight/wlclient/api/WLPush;->access$1402(Lcom/worklight/wlclient/api/WLPush;Z)Z

    .line 681
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$UpdateTokenListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->onReadyToSubscribeListener:Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;
    invoke-static {v0}, Lcom/worklight/wlclient/api/WLPush;->access$1500(Lcom/worklight/wlclient/api/WLPush;)Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$UpdateTokenListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->onReadyToSubscribeListener:Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;
    invoke-static {v0}, Lcom/worklight/wlclient/api/WLPush;->access$1500(Lcom/worklight/wlclient/api/WLPush;)Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/worklight/wlclient/api/WLOnReadyToSubscribeListener;->onReadyToSubscribe()V

    .line 686
    :goto_0
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$UpdateTokenListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #calls: Lcom/worklight/wlclient/api/WLPush;->hasPendings()Z
    invoke-static {v0}, Lcom/worklight/wlclient/api/WLPush;->access$1200(Lcom/worklight/wlclient/api/WLPush;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$UpdateTokenListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #calls: Lcom/worklight/wlclient/api/WLPush;->dispatchPendings()V
    invoke-static {v0}, Lcom/worklight/wlclient/api/WLPush;->access$1300(Lcom/worklight/wlclient/api/WLPush;)V

    .line 690
    :cond_0
    return-void

    .line 684
    :cond_1
    const-string v0, "onReadyToSubscribeListener is NULL"

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
