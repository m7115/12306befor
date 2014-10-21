.class public Lcom/worklight/wlclient/challengehandler/RemoteDisableChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
.source "RemoteDisableChallengeHandler.java"


# static fields
.field private static final APPLICATION_DISABLED_ID:Ljava/lang/String; = "WLClient.applicationDenied"

.field private static final CLOSE_ID:Ljava/lang/String; = "WLClient.close"

.field private static final GET_NEW_VERSION_ID:Ljava/lang/String; = "WLClient.getNewVersion"

.field private static final NOTIFICATION_TITLE_ID:Ljava/lang/String; = "WLClient.notificationTitle"

.field private static final NOTIFY_MESAGE:Ljava/lang/String; = "NOTIFY"

.field private static final PROTOCOL_DOWNLOAD_LINK:Ljava/lang/String; = "downloadLink"

.field private static final PROTOCOL_ERROR_MESSAGE:Ljava/lang/String; = "Protocol Error - could not parse JSON object"

.field private static final PROTOCOL_MESSAGE:Ljava/lang/String; = "message"

.field private static final PROTOCOL_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field private static final PROTOCOL_MESSAGE_TYPE:Ljava/lang/String; = "messageType"

.field private static final RESOURCE_BUNDLE:Ljava/lang/String; = "com/worklight/wlclient/messages"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private createAndShowDisableDialogue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "message"
    .parameter "downloadLink"

    .prologue
    .line 90
    const-string v3, "com/worklight/wlclient/messages"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 93
    .local v0, bundle:Ljava/util/ResourceBundle;
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/worklight/wlclient/api/WLClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 94
    .local v1, ctx:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/worklight/wlclient/ui/UIActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "action"

    const-string v4, "wl_remoteDisableRealm"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v3, "dialogue_message"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v3, "dialogue_title"

    const-string v4, "WLClient.applicationDenied"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v3, "positive_button_text"

    const-string v4, "WLClient.close"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    const-string v3, "download_link"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v3, "neutral_button_text"

    const-string v4, "WLClient.getNewVersion"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method private createAndShowMessageDialogue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "message"
    .parameter "messageId"

    .prologue
    .line 164
    const-string v3, "com/worklight/wlclient/messages"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 167
    .local v0, bundle:Ljava/util/ResourceBundle;
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/worklight/wlclient/api/WLClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 168
    .local v1, ctx:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/worklight/wlclient/ui/UIActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "action"

    const-string v4, "notify"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v3, "dialogue_message"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v3, "dialogue_title"

    const-string v4, "WLClient.notificationTitle"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v3, "positive_button_text"

    const-string v4, "WLClient.close"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method private isDisplayMessageDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "storedMessageId"
    .parameter "messageId"
    .parameter "messageType"

    .prologue
    const/4 v0, 0x1

    .line 198
    if-eqz p3, :cond_0

    const-string v1, "NOTIFY"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic handleChallenge(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/challengehandler/RemoteDisableChallengeHandler;->handleChallenge(Lorg/json/JSONObject;)V

    return-void
.end method

.method public handleChallenge(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "challenge"

    .prologue
    .line 127
    :try_start_0
    const-string v5, "message"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, message:Ljava/lang/String;
    const-string v5, "messageId"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, messageId:Ljava/lang/String;
    const-string v5, "messageType"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, messageType:Ljava/lang/String;
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/worklight/wlclient/api/WLClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "messageId"

    invoke-static {v5, v6}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, storedMessageId:Ljava/lang/String;
    invoke-direct {p0, v4, v2, v3}, Lcom/worklight/wlclient/challengehandler/RemoteDisableChallengeHandler;->isDisplayMessageDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 137
    invoke-direct {p0, v1, v2}, Lcom/worklight/wlclient/challengehandler/RemoteDisableChallengeHandler;->createAndShowMessageDialogue(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/worklight/wlclient/api/WLClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "messageId"

    invoke-static {v5, v6, v2}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0, v2}, Lcom/worklight/wlclient/challengehandler/RemoteDisableChallengeHandler;->submitChallengeAnswer(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #messageId:Ljava/lang/String;
    .end local v3           #messageType:Ljava/lang/String;
    .end local v4           #storedMessageId:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Lorg/json/JSONException;
    const-string v5, "Protocol Error - could not parse JSON object"

    invoke-static {v5, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Protocol Error - could not parse JSON object"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public handleFailure(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "error"

    .prologue
    .line 63
    :try_start_0
    const-string v3, "message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, message:Ljava/lang/String;
    const-string v3, "downloadLink"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, downloadLink:Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/worklight/wlclient/challengehandler/RemoteDisableChallengeHandler;->createAndShowDisableDialogue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 71
    .end local v0           #downloadLink:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Lorg/json/JSONException;
    const-string v3, "Protocol Error - could not parse JSON object"

    invoke-static {v3, v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Protocol Error - could not parse JSON object"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public handleSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "identity"

    .prologue
    .line 52
    return-void
.end method
