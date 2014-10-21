.class public Lcom/worklight/wlclient/challengehandler/AntiXSRFChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
.source "AntiXSRFChallengeHandler.java"


# static fields
.field private static final PROTOCOL_ERROR_MESSAGE:Ljava/lang/String; = "Application will exit because wrong JSON arrived when processing it from AntiXSRFChallengeHandler with "


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic handleChallenge(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/challengehandler/AntiXSRFChallengeHandler;->handleChallenge(Lorg/json/JSONObject;)V

    return-void
.end method

.method public handleChallenge(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "challenge"

    .prologue
    .line 52
    :try_start_0
    const-string v2, "WL-Instance-Id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    .local v1, headerValue:Ljava/lang/String;
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v2

    const-string v3, "WL-Instance-Id"

    invoke-virtual {v2, v3, v1}, Lcom/worklight/wlclient/api/WLClient;->addGlobalHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/worklight/wlclient/challengehandler/AntiXSRFChallengeHandler;->submitChallengeAnswer(Ljava/lang/Object;)V

    .line 65
    return-void

    .line 54
    .end local v1           #headerValue:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application will exit because wrong JSON arrived when processing it from AntiXSRFChallengeHandler with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Application will exit because wrong JSON arrived when processing it from AntiXSRFChallengeHandler with "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public handleFailure(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 43
    return-void
.end method

.method public handleSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "identity"

    .prologue
    .line 37
    return-void
.end method
