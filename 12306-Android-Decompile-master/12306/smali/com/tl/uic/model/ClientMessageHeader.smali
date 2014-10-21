.class public Lcom/tl/uic/model/ClientMessageHeader;
.super Ljava/lang/Object;
.source "ClientMessageHeader.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xc2a16675d74ef85L


# instance fields
.field private fromWeb:Ljava/lang/Boolean;

.field private logLevel:I

.field private messageType:Lcom/tl/uic/model/MessageType;

.field private offset:J

.field private screenviewOffset:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/tl/uic/TLFCache;->timestampFromSession()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tl/uic/model/ClientMessageHeader;->offset:J

    .line 30
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getApplicationScreenviewOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tl/uic/model/ClientMessageHeader;->screenviewOffset:J

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/model/ClientMessageHeader;->fromWeb:Ljava/lang/Boolean;

    .line 32
    return-void
.end method


# virtual methods
.method public clean()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Lcom/tl/uic/model/ClientMessageHeader;->messageType:Lcom/tl/uic/model/MessageType;

    .line 192
    iput-wide v2, p0, Lcom/tl/uic/model/ClientMessageHeader;->offset:J

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/tl/uic/model/ClientMessageHeader;->logLevel:I

    .line 194
    iput-wide v2, p0, Lcom/tl/uic/model/ClientMessageHeader;->screenviewOffset:J

    .line 195
    iput-object v1, p0, Lcom/tl/uic/model/ClientMessageHeader;->fromWeb:Ljava/lang/Boolean;

    .line 196
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_0
    move v1, v2

    .line 183
    :cond_1
    :goto_0
    return v1

    .line 159
    :cond_2
    if-eq p0, p1, :cond_1

    move-object v0, p1

    .line 162
    check-cast v0, Lcom/tl/uic/model/ClientMessageHeader;

    .line 163
    .local v0, other:Lcom/tl/uic/model/ClientMessageHeader;
    iget-wide v3, p0, Lcom/tl/uic/model/ClientMessageHeader;->screenviewOffset:J

    iget-wide v5, v0, Lcom/tl/uic/model/ClientMessageHeader;->screenviewOffset:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    move v1, v2

    .line 164
    goto :goto_0

    .line 166
    :cond_3
    iget v3, p0, Lcom/tl/uic/model/ClientMessageHeader;->logLevel:I

    iget v4, v0, Lcom/tl/uic/model/ClientMessageHeader;->logLevel:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 167
    goto :goto_0

    .line 169
    :cond_4
    iget-object v3, p0, Lcom/tl/uic/model/ClientMessageHeader;->messageType:Lcom/tl/uic/model/MessageType;

    iget-object v4, v0, Lcom/tl/uic/model/ClientMessageHeader;->messageType:Lcom/tl/uic/model/MessageType;

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 170
    goto :goto_0

    .line 172
    :cond_5
    iget-wide v3, p0, Lcom/tl/uic/model/ClientMessageHeader;->offset:J

    iget-wide v5, v0, Lcom/tl/uic/model/ClientMessageHeader;->offset:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    move v1, v2

    .line 173
    goto :goto_0
.end method

.method public final getFromWeb()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tl/uic/model/ClientMessageHeader;->fromWeb:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 125
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "fromWeb"

    invoke-virtual {p0}, Lcom/tl/uic/model/ClientMessageHeader;->getFromWeb()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v2, "type"

    invoke-virtual {p0}, Lcom/tl/uic/model/ClientMessageHeader;->getMessageType()Lcom/tl/uic/model/MessageType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tl/uic/model/MessageType;->getValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string v2, "offset"

    invoke-virtual {p0}, Lcom/tl/uic/model/ClientMessageHeader;->getOffset()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 130
    const-string v2, "screenviewOffset"

    invoke-virtual {p0}, Lcom/tl/uic/model/ClientMessageHeader;->getScreenviewOffset()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getLogLevel()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/tl/uic/model/ClientMessageHeader;->logLevel:I

    return v0
.end method

.method public final getMessageType()Lcom/tl/uic/model/MessageType;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tl/uic/model/ClientMessageHeader;->messageType:Lcom/tl/uic/model/MessageType;

    return-object v0
.end method

.method public final getOffset()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/tl/uic/model/ClientMessageHeader;->offset:J

    return-wide v0
.end method

.method public final getScreenviewOffset()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/tl/uic/model/ClientMessageHeader;->screenviewOffset:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 143
    const/4 v0, 0x1

    .line 144
    .local v0, result:I
    iget-wide v1, p0, Lcom/tl/uic/model/ClientMessageHeader;->screenviewOffset:J

    iget-wide v3, p0, Lcom/tl/uic/model/ClientMessageHeader;->screenviewOffset:J

    ushr-long/2addr v3, v6

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v0, v1, 0x1f

    .line 145
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/tl/uic/model/ClientMessageHeader;->logLevel:I

    add-int v0, v1, v2

    .line 146
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/tl/uic/model/ClientMessageHeader;->messageType:Lcom/tl/uic/model/MessageType;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 147
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/tl/uic/model/ClientMessageHeader;->offset:J

    iget-wide v4, p0, Lcom/tl/uic/model/ClientMessageHeader;->offset:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 148
    return v0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/tl/uic/model/ClientMessageHeader;->messageType:Lcom/tl/uic/model/MessageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/MessageType;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public final setFromWeb(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "fromWeb"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tl/uic/model/ClientMessageHeader;->fromWeb:Ljava/lang/Boolean;

    .line 119
    return-void
.end method

.method public final setLogLevel(I)V
    .locals 0
    .parameter "logLevel"

    .prologue
    .line 76
    iput p1, p0, Lcom/tl/uic/model/ClientMessageHeader;->logLevel:I

    .line 77
    return-void
.end method

.method public final setMessageType(Lcom/tl/uic/model/MessageType;)V
    .locals 0
    .parameter "messageType"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tl/uic/model/ClientMessageHeader;->messageType:Lcom/tl/uic/model/MessageType;

    .line 47
    return-void
.end method

.method public final setOffset(J)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/tl/uic/model/ClientMessageHeader;->offset:J

    .line 62
    return-void
.end method

.method public final setScreenviewOffset(J)V
    .locals 0
    .parameter "screenviewOffset"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/tl/uic/model/ClientMessageHeader;->screenviewOffset:J

    .line 96
    return-void
.end method
