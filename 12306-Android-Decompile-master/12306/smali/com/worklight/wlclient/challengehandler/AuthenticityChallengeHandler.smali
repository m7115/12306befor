.class public Lcom/worklight/wlclient/challengehandler/AuthenticityChallengeHandler;
.super Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
.source "AuthenticityChallengeHandler.java"


# static fields
.field private static final AUTH_FAIL_ID:Ljava/lang/String; = "WLClient.authFailure"

.field private static final CLOSE_ID:Ljava/lang/String; = "WLClient.close"

.field private static final INIT_FAILURE_TITLE_ID:Ljava/lang/String; = "WLClient.wlclientInitFailure"

.field private static final RESOURCE_BUNDLE:Ljava/lang/String; = "com/worklight/wlclient/messages"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "realm"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic handleChallenge(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/challengehandler/AuthenticityChallengeHandler;->handleChallenge(Lorg/json/JSONObject;)V

    return-void
.end method

.method public handleChallenge(Lorg/json/JSONObject;)V
    .locals 9
    .parameter "challenge"

    .prologue
    .line 82
    :try_start_0
    const-string v8, "WL-Challenge-Data"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, challengeData:Ljava/lang/String;
    const-string v8, "+"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 84
    .local v6, index:I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, allArgs:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, arg0:Ljava/lang/String;
    const-string v8, "-"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 88
    .local v2, args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 90
    .local v7, jsonArgs:Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 91
    .local v4, data:Lorg/json/JSONArray;
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 92
    const/4 v8, 0x1

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 94
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v8

    invoke-virtual {v8}, Lcom/worklight/wlclient/api/WLClient;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/worklight/utils/SecurityUtils;->hashDataFromJSON(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/worklight/wlclient/challengehandler/AuthenticityChallengeHandler;->submitChallengeAnswer(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .end local v0           #allArgs:Ljava/lang/String;
    .end local v1           #arg0:Ljava/lang/String;
    .end local v2           #args:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #challengeData:Ljava/lang/String;
    .end local v4           #data:Lorg/json/JSONArray;
    .end local v6           #index:I
    .end local v7           #jsonArgs:Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v5

    .line 96
    .local v5, e:Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v5           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v5

    .line 98
    .local v5, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleFailure(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "error"

    .prologue
    .line 56
    const-string v3, "com/worklight/wlclient/messages"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 59
    .local v0, bundle:Ljava/util/ResourceBundle;
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/worklight/wlclient/api/WLClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 60
    .local v1, ctx:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/worklight/wlclient/ui/UIActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "action"

    const-string v4, "exit"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v3, "dialogue_message"

    const-string v4, "WLClient.authFailure"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v3, "dialogue_title"

    const-string v4, "WLClient.wlclientInitFailure"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v3, "positive_button_text"

    const-string v4, "WLClient.close"

    invoke-virtual {v0, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public handleSuccess(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "identity"

    .prologue
    .line 50
    return-void
.end method
