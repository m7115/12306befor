.class public Lcom/worklight/wlclient/challengehandler/NoProvisioningChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/BaseDeviceAuthChallengeHandler;
.source "NoProvisioningChallengeHandler.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/BaseDeviceAuthChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic handleChallenge(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/challengehandler/NoProvisioningChallengeHandler;->handleChallenge(Lorg/json/JSONObject;)V

    return-void
.end method

.method public handleChallenge(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "challenge"

    .prologue
    .line 33
    :try_start_0
    const-string v1, "token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/worklight/wlclient/challengehandler/NoProvisioningChallengeHandler;->getDeviceAuthDataAsync(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error retrieving device data - JSON error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error retrieving device data"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleFailure(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 58
    return-void
.end method

.method public handleSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "identity"

    .prologue
    .line 64
    return-void
.end method

.method protected onDeviceAuthDataReady(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .local v0, answer:Lorg/json/JSONObject;
    const-string v1, "ID"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/challengehandler/NoProvisioningChallengeHandler;->submitChallengeAnswer(Ljava/lang/Object;)V

    .line 52
    return-void
.end method
