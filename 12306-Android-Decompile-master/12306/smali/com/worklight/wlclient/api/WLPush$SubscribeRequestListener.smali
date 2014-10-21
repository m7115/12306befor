.class Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;
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
    name = "SubscribeRequestListener"
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field final synthetic this$0:Lcom/worklight/wlclient/api/WLPush;


# direct methods
.method public constructor <init>(Lcom/worklight/wlclient/api/WLPush;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "alias"

    .prologue
    .line 635
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;->alias:Ljava/lang/String;

    .line 637
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V
    .locals 1
    .parameter "failResponse"

    .prologue
    .line 641
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLFailResponse;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLRequestOptions;->getResponseListener()Lcom/worklight/wlclient/api/WLResponseListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/worklight/wlclient/api/WLResponseListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    .line 642
    return-void
.end method

.method public onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/worklight/wlclient/api/WLPush;->access$1100(Lcom/worklight/wlclient/api/WLPush;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/worklight/wlclient/api/WLPush;->access$1100(Lcom/worklight/wlclient/api/WLPush;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_0
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLRequestOptions;->getResponseListener()Lcom/worklight/wlclient/api/WLResponseListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/worklight/wlclient/api/WLResponseListener;->onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 650
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #calls: Lcom/worklight/wlclient/api/WLPush;->hasPendings()Z
    invoke-static {v0}, Lcom/worklight/wlclient/api/WLPush;->access$1200(Lcom/worklight/wlclient/api/WLPush;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$SubscribeRequestListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #calls: Lcom/worklight/wlclient/api/WLPush;->dispatchPendings()V
    invoke-static {v0}, Lcom/worklight/wlclient/api/WLPush;->access$1300(Lcom/worklight/wlclient/api/WLPush;)V

    .line 653
    :cond_1
    return-void
.end method
