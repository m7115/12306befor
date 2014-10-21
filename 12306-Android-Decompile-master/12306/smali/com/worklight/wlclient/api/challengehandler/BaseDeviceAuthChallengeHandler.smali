.class public abstract Lcom/worklight/wlclient/api/challengehandler/BaseDeviceAuthChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
.source "BaseDeviceAuthChallengeHandler.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getDeviceAuthDataAsync(Ljava/lang/String;)V
    .locals 8
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v5, payload:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v1, appData:Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v4, deviceData:Lorg/json/JSONObject;
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v3

    .line 46
    .local v3, client:Lcom/worklight/wlclient/api/WLClient;
    const-string v6, "id"

    invoke-virtual {v3}, Lcom/worklight/wlclient/api/WLClient;->getConfig()Lcom/worklight/common/WLConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/worklight/common/WLConfig;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v6, "version"

    invoke-virtual {v3}, Lcom/worklight/wlclient/api/WLClient;->getConfig()Lcom/worklight/common/WLConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/worklight/common/WLConfig;->getApplicationVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    invoke-static {}, Lcom/worklight/common/security/WLDeviceAuthManager;->getInstance()Lcom/worklight/common/security/WLDeviceAuthManager;

    move-result-object v2

    .line 52
    .local v2, authManager:Lcom/worklight/common/security/WLDeviceAuthManager;
    invoke-virtual {v3}, Lcom/worklight/wlclient/api/WLClient;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/worklight/common/security/WLDeviceAuthManager;->getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, android_id:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v6, "os"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v6, "model"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v6, "environment"

    const-string v7, "Android"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v6, "app"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v6, "device"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v6, "token"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual {p0, v5}, Lcom/worklight/wlclient/api/challengehandler/BaseDeviceAuthChallengeHandler;->onDeviceAuthDataReady(Lorg/json/JSONObject;)V

    .line 67
    return-void
.end method

.method protected abstract onDeviceAuthDataReady(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
