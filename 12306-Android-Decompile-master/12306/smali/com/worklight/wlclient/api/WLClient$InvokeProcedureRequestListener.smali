.class Lcom/worklight/wlclient/api/WLClient$InvokeProcedureRequestListener;
.super Ljava/lang/Object;
.source "WLClient.java"

# interfaces
.implements Lcom/worklight/wlclient/WLRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/api/WLClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvokeProcedureRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/api/WLClient;


# direct methods
.method constructor <init>(Lcom/worklight/wlclient/api/WLClient;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLClient$InvokeProcedureRequestListener;->this$0:Lcom/worklight/wlclient/api/WLClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V
    .locals 2
    .parameter "failResponse"

    .prologue
    .line 767
    new-instance v0, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;

    invoke-direct {v0, p1}, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;-><init>(Lcom/worklight/wlclient/api/WLFailResponse;)V

    .line 768
    .local v0, pifResponse:Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLFailResponse;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/worklight/wlclient/api/WLRequestOptions;->getResponseListener()Lcom/worklight/wlclient/api/WLResponseListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/worklight/wlclient/api/WLResponseListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    .line 769
    return-void
.end method

.method public onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 774
    new-instance v0, Lcom/worklight/wlclient/api/WLProcedureInvocationResult;

    invoke-direct {v0, p1}, Lcom/worklight/wlclient/api/WLProcedureInvocationResult;-><init>(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 775
    .local v0, piResponse:Lcom/worklight/wlclient/api/WLProcedureInvocationResult;
    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLProcedureInvocationResult;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 776
    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLProcedureInvocationResult;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/worklight/wlclient/api/WLRequestOptions;->getResponseListener()Lcom/worklight/wlclient/api/WLResponseListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/worklight/wlclient/api/WLResponseListener;->onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 783
    :goto_0
    return-void

    .line 779
    :cond_0
    new-instance v1, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;

    invoke-direct {v1, p1}, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;-><init>(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 780
    .local v1, pifResponse:Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;
    sget-object v2, Lcom/worklight/wlclient/api/WLErrorCode;->PROCEDURE_ERROR:Lcom/worklight/wlclient/api/WLErrorCode;

    invoke-virtual {v1, v2}, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->setErrorCode(Lcom/worklight/wlclient/api/WLErrorCode;)V

    .line 781
    invoke-virtual {v1}, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/worklight/wlclient/api/WLRequestOptions;->getResponseListener()Lcom/worklight/wlclient/api/WLResponseListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/worklight/wlclient/api/WLResponseListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    goto :goto_0
.end method
