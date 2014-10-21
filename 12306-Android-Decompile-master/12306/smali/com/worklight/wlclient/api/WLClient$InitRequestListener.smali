.class Lcom/worklight/wlclient/api/WLClient$InitRequestListener;
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
    name = "InitRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/api/WLClient;


# direct methods
.method public constructor <init>(Lcom/worklight/wlclient/api/WLClient;)V
    .locals 0
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLClient$InitRequestListener;->this$0:Lcom/worklight/wlclient/api/WLClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    return-void
.end method


# virtual methods
.method public onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V
    .locals 1
    .parameter "failResponse"

    .prologue
    .line 703
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLFailResponse;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLRequestOptions;->getResponseListener()Lcom/worklight/wlclient/api/WLResponseListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/worklight/wlclient/api/WLResponseListener;->onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V

    .line 704
    return-void
.end method

.method public onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 10
    .parameter "response"

    .prologue
    .line 708
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/worklight/wlclient/api/WLClient;->setInitialized(Z)V

    .line 709
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v1

    .line 711
    .local v1, client:Lcom/worklight/wlclient/api/WLClient;
    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {v1}, Lcom/worklight/wlclient/api/WLClient;->sendHeartBeat()V

    .line 715
    :try_start_0
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getResponseJSON()Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "userPrefs"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 716
    .local v6, userPrefJSON:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 717
    .local v7, value:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 718
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 719
    .local v3, itr:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_0

    .line 721
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 722
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 724
    iget-object v8, p0, Lcom/worklight/wlclient/api/WLClient$InitRequestListener;->this$0:Lcom/worklight/wlclient/api/WLClient;

    #getter for: Lcom/worklight/wlclient/api/WLClient;->userPreferenceMap:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/worklight/wlclient/api/WLClient;->access$100(Lcom/worklight/wlclient/api/WLClient;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 726
    .end local v5           #key:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 727
    .local v4, je:Lorg/json/JSONException;
    :try_start_2
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 732
    .end local v3           #itr:Ljava/util/Iterator;
    .end local v4           #je:Lorg/json/JSONException;
    .end local v6           #userPrefJSON:Lorg/json/JSONObject;
    .end local v7           #value:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 734
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 741
    .end local v2           #e:Lorg/json/JSONException;
    :cond_0
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLResponse;->getOptions()Lcom/worklight/wlclient/api/WLRequestOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/worklight/wlclient/api/WLRequestOptions;->getResponseListener()Lcom/worklight/wlclient/api/WLResponseListener;

    move-result-object v8

    invoke-interface {v8, p1}, Lcom/worklight/wlclient/api/WLResponseListener;->onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 742
    return-void
.end method
