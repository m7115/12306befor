.class public final Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;
.super Lcom/worklight/wlclient/api/WLFailResponse;
.source "WLProcedureInvocationFailResponse.java"


# static fields
.field private static final JSON_KEY_ERROR_MESSAGES:Ljava/lang/String; = "errors"


# instance fields
.field private jsonResult:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/worklight/wlclient/api/WLFailResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 47
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLFailResponse;->getErrorCode()Lcom/worklight/wlclient/api/WLErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->setErrorCode(Lcom/worklight/wlclient/api/WLErrorCode;)V

    .line 48
    invoke-virtual {p1}, Lcom/worklight/wlclient/api/WLFailResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .parameter "httpResponse"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLFailResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getJSONResult()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->getResult()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getProcedureInvocationErrors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, errors:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->getResult()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "errors"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getResult()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->jsonResult:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->responseText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->responseText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->responseText:Ljava/lang/String;

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->convertStringToJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->jsonResult:Lorg/json/JSONObject;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationFailResponse;->jsonResult:Lorg/json/JSONObject;

    return-object v0
.end method
