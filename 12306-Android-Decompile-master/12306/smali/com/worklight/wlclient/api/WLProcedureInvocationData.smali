.class public Lcom/worklight/wlclient/api/WLProcedureInvocationData;
.super Ljava/lang/Object;
.source "WLProcedureInvocationData.java"


# instance fields
.field private adapter:Ljava/lang/String;

.field private compressResponse:Z

.field private parameters:[Ljava/lang/Object;

.field private procedure:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "adapter"
    .parameter "procedure"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->compressResponse:Z

    .line 42
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->adapter:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->procedure:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "adapter"
    .parameter "procedure"
    .parameter "compressResponse"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->compressResponse:Z

    .line 53
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->adapter:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->procedure:Ljava/lang/String;

    .line 55
    iput-boolean p3, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->compressResponse:Z

    .line 56
    return-void
.end method


# virtual methods
.method getInvocationDataMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v2, invocationData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 75
    .local v3, jsonParams:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->parameters:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 76
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->parameters:[Ljava/lang/Object;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 78
    :try_start_0
    iget-object v4, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->parameters:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 84
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #i:I
    :cond_0
    const-string v4, "adapter"

    iget-object v5, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->adapter:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v4, "procedure"

    iget-object v5, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->procedure:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v4, "parameters"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v4, "compressResponse"

    iget-boolean v5, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->compressResponse:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-object v2
.end method

.method public setCompressResponse(Z)V
    .locals 0
    .parameter "compressResponse"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->compressResponse:Z

    .line 97
    return-void
.end method

.method public setParameters([Ljava/lang/Object;)V
    .locals 0
    .parameter "parameters"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLProcedureInvocationData;->parameters:[Ljava/lang/Object;

    .line 66
    return-void
.end method
