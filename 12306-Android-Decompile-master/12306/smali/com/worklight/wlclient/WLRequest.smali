.class public Lcom/worklight/wlclient/WLRequest;
.super Ljava/lang/Object;
.source "WLRequest.java"


# static fields
.field private static final ACCESS_DENIED_ID:Ljava/lang/String; = "WLClient.accessDenied"

.field private static final AUTH_FAIL_ID:Ljava/lang/String; = "WLClient.authFailure"

.field private static final CLOSE_BUTTON_ID:Ljava/lang/String; = "WLClient.close"

.field private static final ERROR_ID:Ljava/lang/String; = "WLClient.error"

.field private static final RESOURCE_BUNDLE:Ljava/lang/String; = "com/worklight/wlclient/messages"


# instance fields
.field private config:Lcom/worklight/common/WLConfig;

.field private context:Landroid/content/Context;

.field private httpContext:Lorg/apache/http/protocol/HttpContext;

.field private postRequest:Lorg/apache/http/client/methods/HttpPost;

.field private requestListener:Lcom/worklight/wlclient/WLRequestListener;

.field private requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

.field private requestURL:Ljava/lang/String;

.field private wlAnswers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/worklight/wlclient/WLRequestListener;Lorg/apache/http/protocol/HttpContext;Lcom/worklight/wlclient/api/WLRequestOptions;Lcom/worklight/common/WLConfig;Landroid/content/Context;)V
    .locals 1
    .parameter "wlRequestListener"
    .parameter "httpContext"
    .parameter "wlRequestData"
    .parameter "wlConfig"
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/wlclient/WLRequest;->requestURL:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/WLRequest;->wlAnswers:Ljava/util/HashMap;

    .line 76
    iput-object p1, p0, Lcom/worklight/wlclient/WLRequest;->requestListener:Lcom/worklight/wlclient/WLRequestListener;

    .line 77
    iput-object p2, p0, Lcom/worklight/wlclient/WLRequest;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 78
    iput-object p3, p0, Lcom/worklight/wlclient/WLRequest;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    .line 79
    iput-object p4, p0, Lcom/worklight/wlclient/WLRequest;->config:Lcom/worklight/common/WLConfig;

    .line 80
    iput-object p5, p0, Lcom/worklight/wlclient/WLRequest;->context:Landroid/content/Context;

    .line 81
    return-void
.end method

.method private addExpectedAnswers(Lorg/apache/http/client/methods/HttpPost;)V
    .locals 8
    .parameter "postRequest"

    .prologue
    .line 244
    iget-object v7, p0, Lcom/worklight/wlclient/WLRequest;->wlAnswers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 250
    .local v0, allAnswers:Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/worklight/wlclient/WLRequest;->wlAnswers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 251
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 252
    .local v5, realm:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 254
    .local v1, answer:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 259
    :try_start_0
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 260
    :catch_0
    move-exception v2

    .line 261
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 266
    .end local v1           #answer:Ljava/lang/Object;
    .end local v2           #e:Lorg/json/JSONException;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #realm:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, strJSON:Ljava/lang/String;
    const-string v7, "Authorization"

    invoke-virtual {p1, v7, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v7, p0, Lcom/worklight/wlclient/WLRequest;->wlAnswers:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method private addExtraHeaders(Lorg/apache/http/client/methods/HttpPost;)V
    .locals 4
    .parameter "postRequest"

    .prologue
    .line 210
    iget-object v3, p0, Lcom/worklight/wlclient/WLRequest;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-virtual {v3}, Lcom/worklight/wlclient/api/WLRequestOptions;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    .line 211
    .local v0, extraHeaders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/Header;>;"
    if-nez v0, :cond_1

    .line 218
    :cond_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/http/Header;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 216
    .local v1, header:Lorg/apache/http/Header;
    invoke-virtual {p1, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0
.end method

.method private addHeaders(Lcom/worklight/common/WLConfig;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 2
    .parameter "config"
    .parameter "postRequest"

    .prologue
    .line 205
    const-string v0, "X-Requested-With"

    const-string v1, "XMLHttpRequest"

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "x-wl-app-version"

    invoke-virtual {p1}, Lcom/worklight/common/WLConfig;->getApplicationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private addParams(Lcom/worklight/wlclient/api/WLRequestOptions;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 9
    .parameter "requestOptions"
    .parameter "postRequest"

    .prologue
    .line 221
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v4, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLRequestOptions;->getParameters()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLRequestOptions;->getParameters()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLRequestOptions;->getParameters()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 224
    .local v3, paramName:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLRequestOptions;->getParameters()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #paramName:Ljava/lang/String;
    :cond_0
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "isAjaxRequest"

    const-string v7, "true"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "x"

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    const/4 v1, 0x0

    .line 235
    .local v1, encodedFormEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .end local v1           #encodedFormEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v5, "UTF-8"

    invoke-direct {v1, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .restart local v1       #encodedFormEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {p2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 241
    return-void

    .line 236
    .end local v1           #encodedFormEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private checkResponseForChallenges(Lcom/worklight/wlclient/api/WLResponse;)Z
    .locals 21
    .parameter "response"

    .prologue
    .line 369
    const/4 v8, 0x0

    .line 371
    .local v8, containsChallenges:Z
    const-string v18, "com/worklight/wlclient/messages"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v5

    .line 372
    .local v5, bundle:Ljava/util/ResourceBundle;
    invoke-direct/range {p0 .. p1}, Lcom/worklight/wlclient/WLRequest;->isWl401(Lcom/worklight/wlclient/api/WLResponse;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/worklight/wlclient/api/WLResponse;->getResponseJSON()Lorg/json/JSONObject;

    move-result-object v17

    .line 375
    .local v17, responseJSON:Lorg/json/JSONObject;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v14, realmNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v18, "challenges"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 378
    .local v7, challenges:Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v15

    .line 380
    .local v15, realms:Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_0

    .line 381
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 384
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/worklight/wlclient/WLRequest;->setExpectedAnswers(Ljava/util/List;)V

    .line 386
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 387
    .local v13, realm:Ljava/lang/String;
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 389
    .local v6, challenge:Lorg/json/JSONObject;
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/worklight/wlclient/api/WLClient;->getWLChallengeHandler(Ljava/lang/String;)Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;

    move-result-object v10

    .line 391
    .local v10, handler:Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
    if-nez v10, :cond_2

    .line 393
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Application will exit, because unexpected challenge handler arrived while using realm "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". Register the challenge handler using registerChallengeHandler()."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 396
    const-string v18, "WLClient.error"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "WLClient.authFailure"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "WLClient.close"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/worklight/wlclient/WLRequest;->showErrorDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 402
    .end local v6           #challenge:Lorg/json/JSONObject;
    .end local v7           #challenges:Lorg/json/JSONObject;
    .end local v10           #handler:Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #realm:Ljava/lang/String;
    .end local v15           #realms:Lorg/json/JSONArray;
    :catch_0
    move-exception v9

    .line 403
    .local v9, e:Lorg/json/JSONException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Wrong JSON arrived when processing a challenge in a 401 response. With "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 406
    .end local v9           #e:Lorg/json/JSONException;
    :cond_1
    const/4 v8, 0x1

    .line 450
    .end local v14           #realmNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #responseJSON:Lorg/json/JSONObject;
    :goto_2
    return v8

    .line 399
    .restart local v6       #challenge:Lorg/json/JSONObject;
    .restart local v7       #challenges:Lorg/json/JSONObject;
    .restart local v10       #handler:Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
    .restart local v11       #i:I
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v13       #realm:Ljava/lang/String;
    .restart local v14       #realmNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15       #realms:Lorg/json/JSONArray;
    .restart local v17       #responseJSON:Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v6}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;->startHandleChallenge(Lcom/worklight/wlclient/WLRequest;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 408
    .end local v6           #challenge:Lorg/json/JSONObject;
    .end local v7           #challenges:Lorg/json/JSONObject;
    .end local v10           #handler:Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
    .end local v11           #i:I
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #realm:Ljava/lang/String;
    .end local v14           #realmNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #realms:Lorg/json/JSONArray;
    .end local v17           #responseJSON:Lorg/json/JSONObject;
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/worklight/wlclient/WLRequest;->isWl403(Lcom/worklight/wlclient/api/WLResponse;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 409
    invoke-virtual/range {p1 .. p1}, Lcom/worklight/wlclient/api/WLResponse;->getResponseJSON()Lorg/json/JSONObject;

    move-result-object v17

    .line 412
    .restart local v17       #responseJSON:Lorg/json/JSONObject;
    :try_start_2
    const-string v18, "WL-Authentication-Failure"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 413
    .restart local v7       #challenges:Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v15

    .line 415
    .restart local v15       #realms:Lorg/json/JSONArray;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_6

    .line 416
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 417
    .restart local v13       #realm:Ljava/lang/String;
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 418
    .restart local v6       #challenge:Lorg/json/JSONObject;
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/worklight/wlclient/api/WLClient;->getWLChallengeHandler(Ljava/lang/String;)Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;

    move-result-object v10

    .line 420
    .restart local v10       #handler:Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
    if-eqz v10, :cond_4

    .line 421
    invoke-virtual {v10, v6}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;->handleFailure(Lorg/json/JSONObject;)V

    .line 422
    invoke-virtual {v10}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;->clearWaitingList()V

    .line 415
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 427
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v18, "WLClient.accessDenied"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .local v4, b:Ljava/lang/StringBuilder;
    const-string v18, "reason"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 430
    .local v16, reason:Ljava/lang/String;
    if-eqz v16, :cond_5

    .line 433
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\nReason: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The application will exit, because connect to Worklight server failed due to missing challenge handler to handle "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 437
    const-string v18, "WLClient.error"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "WLClient.close"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/worklight/wlclient/WLRequest;->showErrorDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 440
    .end local v4           #b:Ljava/lang/StringBuilder;
    .end local v6           #challenge:Lorg/json/JSONObject;
    .end local v7           #challenges:Lorg/json/JSONObject;
    .end local v10           #handler:Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
    .end local v11           #i:I
    .end local v13           #realm:Ljava/lang/String;
    .end local v15           #realms:Lorg/json/JSONArray;
    .end local v16           #reason:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 441
    .restart local v9       #e:Lorg/json/JSONException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Wrong JSON arrived when processing a challenge in a 403 response. with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    .end local v9           #e:Lorg/json/JSONException;
    :cond_6
    const/4 v8, 0x1

    .line 445
    goto/16 :goto_2

    .line 447
    .end local v17           #responseJSON:Lorg/json/JSONObject;
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/worklight/wlclient/WLRequest;->handleCustomChallenges(Lcom/worklight/wlclient/api/WLResponse;)Z

    move-result v8

    goto/16 :goto_2
.end method

.method private checkResponseForSuccesses(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 9
    .parameter "response"

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getResponseJSON()Lorg/json/JSONObject;

    move-result-object v5

    .line 336
    .local v5, responseJSON:Lorg/json/JSONObject;
    if-nez v5, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    :try_start_0
    const-string v8, "WL-Authentication-Success"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 345
    const-string v8, "WL-Authentication-Success"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 347
    .local v7, successes:Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 348
    invoke-virtual {v7}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    .line 350
    .local v4, realms:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 351
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, realm:Ljava/lang/String;
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 354
    .local v6, success:Lorg/json/JSONObject;
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/worklight/wlclient/api/WLClient;->getWLChallengeHandler(Ljava/lang/String;)Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;

    move-result-object v1

    .line 356
    .local v1, handler:Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
    if-eqz v1, :cond_2

    .line 357
    invoke-virtual {v1, v6}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;->handleSuccess(Lorg/json/JSONObject;)V

    .line 358
    invoke-virtual {v1}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;->releaseWaitingList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 362
    .end local v1           #handler:Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
    .end local v2           #i:I
    .end local v3           #realm:Ljava/lang/String;
    .end local v4           #realms:Lorg/json/JSONArray;
    .end local v6           #success:Lorg/json/JSONObject;
    .end local v7           #successes:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/worklight/wlclient/WLRequest;->triggerUnexpectedOnFailure(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private handleCustomChallenges(Lcom/worklight/wlclient/api/WLResponse;)Z
    .locals 3
    .parameter "response"

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 539
    .local v0, containsChallenges:Z
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/worklight/wlclient/api/WLClient;->getChallengeHandler(Lcom/worklight/wlclient/api/WLResponse;)Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;

    move-result-object v1

    .line 540
    .local v1, handler:Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;
    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {v1, p0, p1}, Lcom/worklight/wlclient/api/challengehandler/ChallengeHandler;->startHandleChallenge(Lcom/worklight/wlclient/WLRequest;Ljava/lang/Object;)V

    .line 542
    const/4 v0, 0x1

    .line 545
    :cond_0
    return v0
.end method

.method private isWl401(Lcom/worklight/wlclient/api/WLResponse;)Z
    .locals 3
    .parameter "response"

    .prologue
    .line 482
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getStatus()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_0

    .line 483
    const-string v1, "WWW-Authenticate"

    invoke-virtual {p1, v1}, Lcom/worklight/wlclient/api/WLResponse;->getHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 484
    .local v0, challengesHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WL-Composite-Challenge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    const/4 v1, 0x1

    .line 489
    .end local v0           #challengesHeader:Lorg/apache/http/Header;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWl403(Lcom/worklight/wlclient/api/WLResponse;)Z
    .locals 4
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 495
    :try_start_0
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getStatus()I

    move-result v2

    const/16 v3, 0x193

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getResponseJSON()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getResponseJSON()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "WL-Authentication-Failure"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 502
    :cond_0
    :goto_0
    return v1

    .line 497
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processFailureResponse(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 524
    :try_start_0
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lcom/worklight/wlclient/WLRequest;->requestURL:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/worklight/wlclient/WLCookieManager;->handleResponseHeaders([Lorg/apache/http/Header;Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    new-instance v1, Lcom/worklight/wlclient/api/WLFailResponse;

    invoke-direct {v1, p1}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 532
    .local v1, failResponse:Lcom/worklight/wlclient/api/WLFailResponse;
    iget-object v2, p0, Lcom/worklight/wlclient/WLRequest;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    invoke-virtual {v1, v2}, Lcom/worklight/wlclient/api/WLFailResponse;->setOptions(Lcom/worklight/wlclient/api/WLRequestOptions;)V

    .line 533
    iget-object v2, p0, Lcom/worklight/wlclient/WLRequest;->requestListener:Lcom/worklight/wlclient/WLRequestListener;

    invoke-interface {v2, v1}, Lcom/worklight/wlclient/WLRequestListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    .line 534
    .end local v1           #failResponse:Lcom/worklight/wlclient/api/WLFailResponse;
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-direct {p0, v0}, Lcom/worklight/wlclient/WLRequest;->triggerUnexpectedOnFailure(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private processSuccessResponse(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 509
    :try_start_0
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lcom/worklight/wlclient/WLRequest;->requestURL:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/worklight/wlclient/WLCookieManager;->handleResponseHeaders([Lorg/apache/http/Header;Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    iget-object v1, p0, Lcom/worklight/wlclient/WLRequest;->requestListener:Lcom/worklight/wlclient/WLRequestListener;

    invoke-interface {v1, p1}, Lcom/worklight/wlclient/WLRequestListener;->onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 518
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-direct {p0, v0}, Lcom/worklight/wlclient/WLRequest;->triggerUnexpectedOnFailure(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private resendIfNeeded()V
    .locals 5

    .prologue
    .line 309
    const/4 v3, 0x1

    .line 311
    .local v3, resend:Z
    iget-object v4, p0, Lcom/worklight/wlclient/WLRequest;->wlAnswers:Ljava/util/HashMap;

    if-nez v4, :cond_2

    .line 312
    const/4 v3, 0x1

    .line 323
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 324
    invoke-direct {p0}, Lcom/worklight/wlclient/WLRequest;->resendRequest()V

    .line 326
    :cond_1
    return-void

    .line 314
    :cond_2
    iget-object v4, p0, Lcom/worklight/wlclient/WLRequest;->wlAnswers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 315
    .local v0, answers:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 316
    .local v2, obj:Ljava/lang/Object;
    if-nez v2, :cond_3

    .line 317
    const/4 v3, 0x0

    .line 318
    goto :goto_0
.end method

.method private resendRequest()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/worklight/wlclient/WLRequest;->requestURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/worklight/wlclient/WLRequest;->requestURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/worklight/wlclient/WLRequest;->sendRequest(Ljava/lang/String;)V

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_0
    const-string v0, "resendRequest failed: requestURL is null."

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendRequest(Ljava/lang/String;)V
    .locals 3
    .parameter "requestURL"

    .prologue
    .line 109
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/worklight/wlclient/WLRequest;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 111
    iget-object v1, p0, Lcom/worklight/wlclient/WLRequest;->config:Lcom/worklight/common/WLConfig;

    iget-object v2, p0, Lcom/worklight/wlclient/WLRequest;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, v1, v2}, Lcom/worklight/wlclient/WLRequest;->addHeaders(Lcom/worklight/common/WLConfig;Lorg/apache/http/client/methods/HttpPost;)V

    .line 112
    iget-object v1, p0, Lcom/worklight/wlclient/WLRequest;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, v1}, Lcom/worklight/wlclient/WLRequest;->addExtraHeaders(Lorg/apache/http/client/methods/HttpPost;)V

    .line 113
    iget-object v1, p0, Lcom/worklight/wlclient/WLRequest;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    iget-object v2, p0, Lcom/worklight/wlclient/WLRequest;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, v1, v2}, Lcom/worklight/wlclient/WLRequest;->addParams(Lcom/worklight/wlclient/api/WLRequestOptions;Lorg/apache/http/client/methods/HttpPost;)V

    .line 114
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v1

    iget-object v2, p0, Lcom/worklight/wlclient/WLRequest;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1, v2}, Lcom/worklight/wlclient/api/WLClient;->addGlobalHeadersToRequest(Lorg/apache/http/client/methods/HttpPost;)V

    .line 115
    iget-object v1, p0, Lcom/worklight/wlclient/WLRequest;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, v1}, Lcom/worklight/wlclient/WLRequest;->addExpectedAnswers(Lorg/apache/http/client/methods/HttpPost;)V

    .line 118
    :try_start_0
    invoke-static {}, Lcom/worklight/wlclient/AsynchronousRequestSender;->getInstance()Lcom/worklight/wlclient/AsynchronousRequestSender;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/worklight/wlclient/AsynchronousRequestSender;->sendRequestAsync(Lcom/worklight/wlclient/WLRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    invoke-direct {p0, v0}, Lcom/worklight/wlclient/WLRequest;->triggerUnexpectedOnFailure(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private setExpectedAnswers(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, realms:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 299
    .local v1, realm:Ljava/lang/String;
    iget-object v2, p0, Lcom/worklight/wlclient/WLRequest;->wlAnswers:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 301
    .end local v1           #realm:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showErrorDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"
    .parameter "buttonText"

    .prologue
    .line 462
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/worklight/wlclient/api/WLClient;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 463
    .local v0, ctx:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/worklight/wlclient/ui/UIActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 466
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "action"

    const-string v3, "exit"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string v2, "dialogue_message"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v2, "dialogue_title"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v2, "positive_button_text"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 479
    return-void
.end method

.method private triggerUnexpectedOnFailure(Ljava/lang/Exception;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/worklight/wlclient/WLRequest;->getRequestListener()Lcom/worklight/wlclient/WLRequestListener;

    move-result-object v0

    new-instance v1, Lcom/worklight/wlclient/api/WLFailResponse;

    sget-object v2, Lcom/worklight/wlclient/api/WLErrorCode;->UNEXPECTED_ERROR:Lcom/worklight/wlclient/api/WLErrorCode;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/worklight/wlclient/WLRequest;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lcom/worklight/wlclient/api/WLErrorCode;Ljava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V

    invoke-interface {v0, v1}, Lcom/worklight/wlclient/WLRequestListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    .line 202
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/worklight/common/WLConfig;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/worklight/wlclient/WLRequest;->config:Lcom/worklight/common/WLConfig;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/worklight/wlclient/WLRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/worklight/wlclient/WLRequest;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/worklight/wlclient/WLRequest;->requestOptions:Lcom/worklight/wlclient/api/WLRequestOptions;

    return-object v0
.end method

.method public getPostRequest()Lorg/apache/http/client/methods/HttpPost;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/worklight/wlclient/WLRequest;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    return-object v0
.end method

.method public getRequestListener()Lcom/worklight/wlclient/WLRequestListener;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/worklight/wlclient/WLRequest;->requestListener:Lcom/worklight/wlclient/WLRequestListener;

    return-object v0
.end method

.method public makeRequest(Ljava/lang/String;)V
    .locals 1
    .parameter "requestPath"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/worklight/wlclient/WLRequest;->makeRequest(Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public makeRequest(Ljava/lang/String;Z)V
    .locals 2
    .parameter "requestPath"
    .parameter "isFullPath"

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/wlclient/WLRequest;->requestURL:Ljava/lang/String;

    .line 99
    if-nez p2, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/worklight/wlclient/WLRequest;->config:Lcom/worklight/common/WLConfig;

    invoke-virtual {v1}, Lcom/worklight/common/WLConfig;->getAppURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/wlclient/WLRequest;->requestURL:Ljava/lang/String;

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/worklight/wlclient/WLRequest;->requestURL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/worklight/wlclient/WLRequest;->sendRequest(Ljava/lang/String;)V

    .line 106
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/worklight/wlclient/WLRequest;->config:Lcom/worklight/common/WLConfig;

    invoke-virtual {v1}, Lcom/worklight/common/WLConfig;->getRootURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/wlclient/WLRequest;->requestURL:Ljava/lang/String;

    goto :goto_0
.end method

.method public removeExpectedAnswer(Ljava/lang/String;)V
    .locals 1
    .parameter "realm"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/worklight/wlclient/WLRequest;->wlAnswers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-direct {p0}, Lcom/worklight/wlclient/WLRequest;->resendIfNeeded()V

    .line 331
    return-void
.end method

.method public requestFinished(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 12
    .parameter "response"

    .prologue
    .line 131
    :try_start_0
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/WLRequest;->checkResponseForSuccesses(Lcom/worklight/wlclient/api/WLResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :try_start_1
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/WLRequest;->checkResponseForChallenges(Lcom/worklight/wlclient/api/WLResponse;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 147
    .local v4, isContainChallenges:Z
    if-nez v4, :cond_2

    .line 148
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getStatus()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_3

    .line 151
    :try_start_2
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getResponseJSON()Lorg/json/JSONObject;

    move-result-object v6

    .line 152
    .local v6, responseJson:Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 153
    const-string v10, "notificationSubscriptionState"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 155
    .local v8, subscriptionStateObj:Ljava/lang/Object;
    if-eqz v8, :cond_1

    .line 156
    const/4 v9, 0x0

    .line 157
    .local v9, token:Ljava/lang/String;
    const/4 v3, 0x0

    .line 159
    .local v3, eventSources:Lorg/json/JSONArray;
    move-object v0, v8

    check-cast v0, Lorg/json/JSONObject;

    move-object v7, v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 163
    .local v7, subscriptionState:Lorg/json/JSONObject;
    :try_start_3
    const-string v10, "com.google.android.gcm.GCMRegistrar"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 165
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v1

    .line 166
    .local v1, client:Lcom/worklight/wlclient/api/WLClient;
    invoke-virtual {v1}, Lcom/worklight/wlclient/api/WLClient;->getPush()Lcom/worklight/wlclient/api/WLPush;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v5

    .line 169
    .local v5, push:Lcom/worklight/wlclient/api/WLPush;
    :try_start_4
    const-string v10, "token"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 170
    const-string v10, "eventSources"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/json/JSONArray;

    move-object v3, v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 175
    :goto_0
    :try_start_5
    invoke-virtual {v5}, Lcom/worklight/wlclient/api/WLPush;->clearSubscribedEventSources()V

    .line 176
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 177
    invoke-virtual {v5, v3}, Lcom/worklight/wlclient/api/WLPush;->updateSubscribedEventSources(Lorg/json/JSONArray;)V

    .line 179
    :cond_0
    invoke-virtual {v5, v9}, Lcom/worklight/wlclient/api/WLPush;->updateToken(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 188
    .end local v1           #client:Lcom/worklight/wlclient/api/WLClient;
    .end local v3           #eventSources:Lorg/json/JSONArray;
    .end local v5           #push:Lcom/worklight/wlclient/api/WLPush;
    .end local v6           #responseJson:Lorg/json/JSONObject;
    .end local v7           #subscriptionState:Lorg/json/JSONObject;
    .end local v8           #subscriptionStateObj:Ljava/lang/Object;
    .end local v9           #token:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/WLRequest;->processSuccessResponse(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 193
    .end local v4           #isContainChallenges:Z
    :cond_2
    :goto_2
    return-void

    .line 132
    :catch_0
    move-exception v2

    .line 134
    .local v2, e:Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/worklight/wlclient/WLRequest;->triggerUnexpectedOnFailure(Ljava/lang/Exception;)V

    goto :goto_2

    .line 142
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 144
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/worklight/wlclient/WLRequest;->triggerUnexpectedOnFailure(Ljava/lang/Exception;)V

    goto :goto_2

    .line 180
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #eventSources:Lorg/json/JSONArray;
    .restart local v4       #isContainChallenges:Z
    .restart local v6       #responseJson:Lorg/json/JSONObject;
    .restart local v7       #subscriptionState:Lorg/json/JSONObject;
    .restart local v8       #subscriptionStateObj:Ljava/lang/Object;
    .restart local v9       #token:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 181
    .local v2, e:Ljava/lang/ClassNotFoundException;
    :try_start_6
    const-string v10, "Push notification will not work because GCMRegistrar class is not available. Check if gcm.jar is available in the path."

    invoke-static {v10}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 185
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .end local v3           #eventSources:Lorg/json/JSONArray;
    .end local v6           #responseJson:Lorg/json/JSONObject;
    .end local v7           #subscriptionState:Lorg/json/JSONObject;
    .end local v8           #subscriptionStateObj:Ljava/lang/Object;
    .end local v9           #token:Ljava/lang/String;
    :catch_3
    move-exception v10

    goto :goto_1

    .line 190
    :cond_3
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/WLRequest;->processFailureResponse(Lcom/worklight/wlclient/api/WLResponse;)V

    goto :goto_2

    .line 171
    .restart local v1       #client:Lcom/worklight/wlclient/api/WLClient;
    .restart local v3       #eventSources:Lorg/json/JSONArray;
    .restart local v5       #push:Lcom/worklight/wlclient/api/WLPush;
    .restart local v6       #responseJson:Lorg/json/JSONObject;
    .restart local v7       #subscriptionState:Lorg/json/JSONObject;
    .restart local v8       #subscriptionStateObj:Ljava/lang/Object;
    .restart local v9       #token:Ljava/lang/String;
    :catch_4
    move-exception v10

    goto :goto_0
.end method

.method public submitAnswer(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "realm"
    .parameter "answer"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/worklight/wlclient/WLRequest;->wlAnswers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-direct {p0}, Lcom/worklight/wlclient/WLRequest;->resendIfNeeded()V

    .line 306
    return-void
.end method
