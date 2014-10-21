.class public Lcom/tl/uic/model/ClientState;
.super Lcom/tl/uic/model/ClientMessageHeader;
.source "ClientState.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xff255eab1472e51L


# instance fields
.field private mobileState:Lcom/tl/uic/model/MobileState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 24
    sget-object v0, Lcom/tl/uic/model/MessageType;->CLIENT_STATE:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/ClientState;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->clean()Ljava/lang/Boolean;

    .line 92
    iget-object v0, p0, Lcom/tl/uic/model/ClientState;->mobileState:Lcom/tl/uic/model/MobileState;

    invoke-virtual {v0}, Lcom/tl/uic/model/MobileState;->clean()Ljava/lang/Boolean;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tl/uic/model/ClientState;->mobileState:Lcom/tl/uic/model/MobileState;

    .line 94
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-ne p0, p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    invoke-super {p0, p1}, Lcom/tl/uic/model/ClientMessageHeader;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 73
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 75
    check-cast v0, Lcom/tl/uic/model/ClientState;

    .line 76
    .local v0, other:Lcom/tl/uic/model/ClientState;
    iget-object v3, p0, Lcom/tl/uic/model/ClientState;->mobileState:Lcom/tl/uic/model/MobileState;

    if-nez v3, :cond_4

    .line 77
    iget-object v3, v0, Lcom/tl/uic/model/ClientState;->mobileState:Lcom/tl/uic/model/MobileState;

    if-eqz v3, :cond_0

    move v1, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_4
    iget-object v3, p0, Lcom/tl/uic/model/ClientState;->mobileState:Lcom/tl/uic/model/MobileState;

    iget-object v4, v0, Lcom/tl/uic/model/ClientState;->mobileState:Lcom/tl/uic/model/MobileState;

    invoke-virtual {v3, v4}, Lcom/tl/uic/model/MobileState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 81
    goto :goto_0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 49
    const-string v2, "mobileState"

    invoke-virtual {p0}, Lcom/tl/uic/model/ClientState;->getMobileState()Lcom/tl/uic/model/MobileState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tl/uic/model/MobileState;->getJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getMobileState()Lcom/tl/uic/model/MobileState;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tl/uic/model/ClientState;->mobileState:Lcom/tl/uic/model/MobileState;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/tl/uic/model/ClientState;->mobileState:Lcom/tl/uic/model/MobileState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tl/uic/model/ClientState;->mobileState:Lcom/tl/uic/model/MobileState;

    invoke-virtual {v0}, Lcom/tl/uic/model/MobileState;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final setMobileState(Lcom/tl/uic/model/MobileState;)V
    .locals 0
    .parameter "mobileState"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tl/uic/model/ClientState;->mobileState:Lcom/tl/uic/model/MobileState;

    .line 39
    return-void
.end method
