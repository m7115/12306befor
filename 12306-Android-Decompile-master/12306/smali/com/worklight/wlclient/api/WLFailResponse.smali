.class public Lcom/worklight/wlclient/api/WLFailResponse;
.super Lcom/worklight/wlclient/api/WLResponse;
.source "WLFailResponse.java"


# static fields
.field private static final JSON_KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final JSON_KEY_ERROR_MSG:Ljava/lang/String; = "errorMsg"


# instance fields
.field errorCode:Lcom/worklight/wlclient/api/WLErrorCode;

.field errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/worklight/wlclient/api/WLErrorCode;Ljava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V
    .locals 2
    .parameter "errorCode"
    .parameter "errorMsg"
    .parameter "requestOptions"

    .prologue
    .line 50
    const/16 v0, 0x1f4

    const-string v1, ""

    invoke-direct {p0, v0, v1, p3}, Lcom/worklight/wlclient/api/WLResponse;-><init>(ILjava/lang/String;Lcom/worklight/wlclient/api/WLRequestOptions;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/worklight/wlclient/api/WLFailResponse;->setErrorCode(Lcom/worklight/wlclient/api/WLErrorCode;)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/worklight/wlclient/api/WLFailResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 0
    .parameter "wlResponse"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLResponse;-><init>(Lcom/worklight/wlclient/api/WLResponse;)V

    .line 44
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLFailResponse;->parseErrorFromResponse()V

    .line 45
    return-void
.end method

.method constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .parameter "httpResponse"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/api/WLResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 37
    invoke-direct {p0}, Lcom/worklight/wlclient/api/WLFailResponse;->parseErrorFromResponse()V

    .line 38
    return-void
.end method

.method private parseErrorFromResponse()V
    .locals 6

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLFailResponse;->getResponseText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLFailResponse;->getResponseText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLFailResponse;->getResponseText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->convertStringToJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 87
    .local v1, jsonResponse:Lorg/json/JSONObject;
    sget-object v2, Lcom/worklight/wlclient/api/WLErrorCode;->UNEXPECTED_ERROR:Lcom/worklight/wlclient/api/WLErrorCode;

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorCode:Lcom/worklight/wlclient/api/WLErrorCode;

    .line 88
    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-string v2, "errorCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/wlclient/api/WLErrorCode;->valueOf(Ljava/lang/String;)Lcom/worklight/wlclient/api/WLErrorCode;

    move-result-object v2

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorCode:Lcom/worklight/wlclient/api/WLErrorCode;

    .line 93
    :cond_0
    const-string v2, "errorMsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "errorMsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1           #jsonResponse:Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Additional error information is not available for the current response and response text is: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLFailResponse;->getResponseText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    sget-object v2, Lcom/worklight/wlclient/api/WLErrorCode;->UNEXPECTED_ERROR:Lcom/worklight/wlclient/api/WLErrorCode;

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorCode:Lcom/worklight/wlclient/api/WLErrorCode;

    .line 100
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLFailResponse;->getStatus()I

    move-result v2

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_2

    .line 101
    sget-object v2, Lcom/worklight/wlclient/api/WLErrorCode;->UNRESPONSIVE_HOST:Lcom/worklight/wlclient/api/WLErrorCode;

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorCode:Lcom/worklight/wlclient/api/WLErrorCode;

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLFailResponse;->getStatus()I

    move-result v2

    const/16 v3, 0x198

    if-lt v2, v3, :cond_3

    .line 103
    sget-object v2, Lcom/worklight/wlclient/api/WLErrorCode;->REQUEST_TIMEOUT:Lcom/worklight/wlclient/api/WLErrorCode;

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorCode:Lcom/worklight/wlclient/api/WLErrorCode;

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/worklight/wlclient/api/WLFailResponse;->getStatus()I

    move-result v2

    const/16 v3, 0x194

    if-lt v2, v3, :cond_1

    .line 105
    sget-object v2, Lcom/worklight/wlclient/api/WLErrorCode;->REQUEST_SERVICE_NOT_FOUND:Lcom/worklight/wlclient/api/WLErrorCode;

    iput-object v2, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorCode:Lcom/worklight/wlclient/api/WLErrorCode;

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()Lcom/worklight/wlclient/api/WLErrorCode;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorCode:Lcom/worklight/wlclient/api/WLErrorCode;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorCode:Lcom/worklight/wlclient/api/WLErrorCode;

    invoke-virtual {v0}, Lcom/worklight/wlclient/api/WLErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method setErrorCode(Lcom/worklight/wlclient/api/WLErrorCode;)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorCode:Lcom/worklight/wlclient/api/WLErrorCode;

    .line 65
    return-void
.end method

.method setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMsg"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorMsg:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/worklight/wlclient/api/WLResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WLFailResponse [errorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/wlclient/api/WLFailResponse;->errorCode:Lcom/worklight/wlclient/api/WLErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
