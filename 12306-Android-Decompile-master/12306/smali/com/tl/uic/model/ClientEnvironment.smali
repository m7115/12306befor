.class public Lcom/tl/uic/model/ClientEnvironment;
.super Ljava/lang/Object;
.source "ClientEnvironment.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4580883b7f4802e9L


# instance fields
.field private height:I

.field private mobileEnvironment:Lcom/tl/uic/model/MobileEnvironment;

.field private osVersion:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 103
    iput-object v1, p0, Lcom/tl/uic/model/ClientEnvironment;->osVersion:Ljava/lang/String;

    .line 104
    iput v0, p0, Lcom/tl/uic/model/ClientEnvironment;->height:I

    .line 105
    iput v0, p0, Lcom/tl/uic/model/ClientEnvironment;->width:I

    .line 106
    iget-object v0, p0, Lcom/tl/uic/model/ClientEnvironment;->mobileEnvironment:Lcom/tl/uic/model/MobileEnvironment;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/tl/uic/model/ClientEnvironment;->mobileEnvironment:Lcom/tl/uic/model/MobileEnvironment;

    invoke-virtual {v0}, Lcom/tl/uic/model/MobileEnvironment;->clean()Ljava/lang/Boolean;

    .line 109
    :cond_0
    iput-object v1, p0, Lcom/tl/uic/model/ClientEnvironment;->mobileEnvironment:Lcom/tl/uic/model/MobileEnvironment;

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/tl/uic/model/ClientEnvironment;->height:I

    return v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 86
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 88
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "osVersion"

    invoke-virtual {p0}, Lcom/tl/uic/model/ClientEnvironment;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v2, "height"

    invoke-virtual {p0}, Lcom/tl/uic/model/ClientEnvironment;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string v2, "width"

    invoke-virtual {p0}, Lcom/tl/uic/model/ClientEnvironment;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v2, "mobileEnvironment"

    invoke-virtual {p0}, Lcom/tl/uic/model/ClientEnvironment;->getMobileEnvironment()Lcom/tl/uic/model/MobileEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tl/uic/model/MobileEnvironment;->getJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getMobileEnvironment()Lcom/tl/uic/model/MobileEnvironment;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tl/uic/model/ClientEnvironment;->mobileEnvironment:Lcom/tl/uic/model/MobileEnvironment;

    return-object v0
.end method

.method public final getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tl/uic/model/ClientEnvironment;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/tl/uic/model/ClientEnvironment;->width:I

    return v0
.end method

.method public final setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 49
    iput p1, p0, Lcom/tl/uic/model/ClientEnvironment;->height:I

    .line 50
    return-void
.end method

.method public final setMobileEnvironment(Lcom/tl/uic/model/MobileEnvironment;)V
    .locals 0
    .parameter "mobileEnvironment"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tl/uic/model/ClientEnvironment;->mobileEnvironment:Lcom/tl/uic/model/MobileEnvironment;

    .line 80
    return-void
.end method

.method public final setOsVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "osVersion"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tl/uic/model/ClientEnvironment;->osVersion:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public final setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 64
    iput p1, p0, Lcom/tl/uic/model/ClientEnvironment;->width:I

    .line 65
    return-void
.end method
