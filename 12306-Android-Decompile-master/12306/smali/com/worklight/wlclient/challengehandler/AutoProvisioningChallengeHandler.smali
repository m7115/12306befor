.class public Lcom/worklight/wlclient/challengehandler/AutoProvisioningChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/BaseProvisioningChallengeHandler;
.source "AutoProvisioningChallengeHandler.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/BaseProvisioningChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected createJsonCsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "provisioningEntity"
    .parameter "realm"
    .parameter "customPayload"

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic handleChallenge(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/challengehandler/AutoProvisioningChallengeHandler;->handleChallenge(Lorg/json/JSONObject;)V

    return-void
.end method

.method public handleChallenge(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "challenge"

    .prologue
    .line 29
    return-void
.end method

.method public handleFailure(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 41
    return-void
.end method

.method public handleSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "identity"

    .prologue
    .line 47
    return-void
.end method
