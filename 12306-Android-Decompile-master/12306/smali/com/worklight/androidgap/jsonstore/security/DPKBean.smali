.class public Lcom/worklight/androidgap/jsonstore/security/DPKBean;
.super Ljava/lang/Object;
.source "DPKBean.java"


# static fields
.field private static final KEY_DPK:Ljava/lang/String; = "dpk"

.field private static final KEY_ITERATIONS:Ljava/lang/String; = "iterations"

.field private static final KEY_IV:Ljava/lang/String; = "iv"

.field private static final KEY_SALT:Ljava/lang/String; = "jsonSalt"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION_NUM:Ljava/lang/String; = "1.0"


# instance fields
.field private obj:Lorg/json/JSONObject;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    :try_start_0
    invoke-static {p1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->deserializeJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Throwable;
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "encryptedDPK"
    .parameter "iv"
    .parameter "salt"
    .parameter "iterations"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;

    invoke-direct {v0}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    .line 49
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "dpk"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "iterations"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "iv"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "jsonSalt"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "version"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    return-void
.end method


# virtual methods
.method public getEncryptedDPK()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "dpk"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIV()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "iv"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIterations()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "iterations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSalt()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "jsonSalt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->obj:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
