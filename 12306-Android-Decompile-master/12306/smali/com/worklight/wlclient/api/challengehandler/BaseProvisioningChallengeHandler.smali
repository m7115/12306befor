.class public abstract Lcom/worklight/wlclient/api/challengehandler/BaseProvisioningChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/BaseDeviceAuthChallengeHandler;
.source "BaseProvisioningChallengeHandler.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/BaseDeviceAuthChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected abstract createJsonCsr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
.end method

.method protected isCertificateChallengeResponse(Lorg/json/JSONObject;)Z
    .locals 1
    .parameter "challenge"

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected onDeviceAuthDataReady(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 42
    return-void
.end method

.method protected submitCsr(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "csr"

    .prologue
    .line 32
    return-void
.end method
