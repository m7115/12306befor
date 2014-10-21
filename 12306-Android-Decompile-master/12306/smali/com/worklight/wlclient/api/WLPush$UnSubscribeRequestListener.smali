.class Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;
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
    name = "UnSubscribeRequestListener"
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
    .line 657
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;->alias:Ljava/lang/String;

    .line 659
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V
    .locals 1
    .parameter "failResponse"

    .prologue
    .line 663
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLFailResponse;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLRequestOptions;->getResponseListener()Lcom/worklight/wlclient/api/WLResponseListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/worklight/wlclient/api/WLResponseListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    .line 664
    return-void
.end method

.method public onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/worklight/wlclient/api/WLPush;->access$1100(Lcom/worklight/wlclient/api/WLPush;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->subscribedEventSources:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/worklight/wlclient/api/WLPush;->access$1100(Lcom/worklight/wlclient/api/WLPush;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush$UnSubscribeRequestListener;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 671
    :cond_0
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLRequestOptions;->getResponseListener()Lcom/worklight/wlclient/api/WLResponseListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/worklight/wlclient/api/WLResponseListener;->onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 672
    return-void
.end method
