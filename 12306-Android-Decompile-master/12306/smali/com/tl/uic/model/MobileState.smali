.class public Lcom/tl/uic/model/MobileState;
.super Ljava/lang/Object;
.source "MobileState.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1cfd273b6d70777eL


# instance fields
.field private androidState:Lcom/tl/uic/model/AndroidState;

.field private battery:D

.field private carrier:Ljava/lang/String;

.field private connectionType:Ljava/lang/String;

.field private freeMemory:J

.field private freeStorage:J

.field private ip:Ljava/lang/String;

.field private networkReachability:Lcom/tl/uic/model/ReachabilityType;

.field private orientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 273
    iput-wide v0, p0, Lcom/tl/uic/model/MobileState;->freeStorage:J

    .line 274
    iput-wide v0, p0, Lcom/tl/uic/model/MobileState;->freeMemory:J

    .line 275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tl/uic/model/MobileState;->battery:D

    .line 276
    iput-object v2, p0, Lcom/tl/uic/model/MobileState;->ip:Ljava/lang/String;

    .line 277
    iput-object v2, p0, Lcom/tl/uic/model/MobileState;->carrier:Ljava/lang/String;

    .line 278
    const/4 v0, 0x0

    iput v0, p0, Lcom/tl/uic/model/MobileState;->orientation:I

    .line 279
    iput-object v2, p0, Lcom/tl/uic/model/MobileState;->connectionType:Ljava/lang/String;

    .line 280
    iput-object v2, p0, Lcom/tl/uic/model/MobileState;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    .line 282
    iget-object v0, p0, Lcom/tl/uic/model/MobileState;->androidState:Lcom/tl/uic/model/AndroidState;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/tl/uic/model/MobileState;->androidState:Lcom/tl/uic/model/AndroidState;

    invoke-virtual {v0}, Lcom/tl/uic/model/AndroidState;->clean()Ljava/lang/Boolean;

    .line 284
    iput-object v2, p0, Lcom/tl/uic/model/MobileState;->androidState:Lcom/tl/uic/model/AndroidState;

    .line 286
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    if-ne p0, p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 206
    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 210
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 213
    check-cast v0, Lcom/tl/uic/model/MobileState;

    .line 214
    .local v0, other:Lcom/tl/uic/model/MobileState;
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->androidState:Lcom/tl/uic/model/AndroidState;

    if-nez v3, :cond_4

    .line 215
    iget-object v3, v0, Lcom/tl/uic/model/MobileState;->androidState:Lcom/tl/uic/model/AndroidState;

    if-eqz v3, :cond_5

    move v1, v2

    .line 216
    goto :goto_0

    .line 218
    :cond_4
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->androidState:Lcom/tl/uic/model/AndroidState;

    iget-object v4, v0, Lcom/tl/uic/model/MobileState;->androidState:Lcom/tl/uic/model/AndroidState;

    invoke-virtual {v3, v4}, Lcom/tl/uic/model/AndroidState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 219
    goto :goto_0

    .line 222
    :cond_5
    iget-wide v3, p0, Lcom/tl/uic/model/MobileState;->battery:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, v0, Lcom/tl/uic/model/MobileState;->battery:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 223
    goto :goto_0

    .line 226
    :cond_6
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->carrier:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 227
    iget-object v3, v0, Lcom/tl/uic/model/MobileState;->carrier:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 228
    goto :goto_0

    .line 230
    :cond_7
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->carrier:Ljava/lang/String;

    iget-object v4, v0, Lcom/tl/uic/model/MobileState;->carrier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 231
    goto :goto_0

    .line 234
    :cond_8
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->connectionType:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 235
    iget-object v3, v0, Lcom/tl/uic/model/MobileState;->connectionType:Ljava/lang/String;

    if-eqz v3, :cond_a

    move v1, v2

    .line 236
    goto :goto_0

    .line 238
    :cond_9
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->connectionType:Ljava/lang/String;

    iget-object v4, v0, Lcom/tl/uic/model/MobileState;->connectionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 239
    goto :goto_0

    .line 242
    :cond_a
    iget-wide v3, p0, Lcom/tl/uic/model/MobileState;->freeMemory:J

    iget-wide v5, v0, Lcom/tl/uic/model/MobileState;->freeMemory:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    move v1, v2

    .line 243
    goto :goto_0

    .line 246
    :cond_b
    iget-wide v3, p0, Lcom/tl/uic/model/MobileState;->freeStorage:J

    iget-wide v5, v0, Lcom/tl/uic/model/MobileState;->freeStorage:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    move v1, v2

    .line 247
    goto :goto_0

    .line 250
    :cond_c
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->ip:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 251
    iget-object v3, v0, Lcom/tl/uic/model/MobileState;->ip:Ljava/lang/String;

    if-eqz v3, :cond_e

    move v1, v2

    .line 252
    goto/16 :goto_0

    .line 254
    :cond_d
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->ip:Ljava/lang/String;

    iget-object v4, v0, Lcom/tl/uic/model/MobileState;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    move v1, v2

    .line 255
    goto/16 :goto_0

    .line 258
    :cond_e
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    iget-object v4, v0, Lcom/tl/uic/model/MobileState;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    if-eq v3, v4, :cond_f

    move v1, v2

    .line 259
    goto/16 :goto_0

    .line 262
    :cond_f
    iget v3, p0, Lcom/tl/uic/model/MobileState;->orientation:I

    iget v4, v0, Lcom/tl/uic/model/MobileState;->orientation:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 263
    goto/16 :goto_0
.end method

.method public final getAndroidState()Lcom/tl/uic/model/AndroidState;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tl/uic/model/MobileState;->androidState:Lcom/tl/uic/model/AndroidState;

    return-object v0
.end method

.method public final getBattery()D
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/tl/uic/model/MobileState;->battery:D

    return-wide v0
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tl/uic/model/MobileState;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tl/uic/model/MobileState;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getFreeMemory()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/tl/uic/model/MobileState;->freeMemory:J

    return-wide v0
.end method

.method public final getFreeStorage()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/tl/uic/model/MobileState;->freeStorage:J

    return-wide v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tl/uic/model/MobileState;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 158
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "freeStorage"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileState;->getFreeStorage()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 161
    const-string v2, "freeMemory"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileState;->getFreeMemory()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 162
    const-string v3, "battery"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileState;->getBattery()D

    move-result-wide v4

    const-wide/high16 v6, -0x4010

    cmpl-double v2, v4, v6

    if-nez v2, :cond_0

    const-string v2, "N/A"

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v2, "ip"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileState;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v2, "carrier"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileState;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v2, "orientation"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileState;->getOrientation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    const-string v2, "connectionType"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileState;->getConnectionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v3, "networkReachability"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileState;->getNetworkReachability()Lcom/tl/uic/model/ReachabilityType;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "N/A"

    :goto_1
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v2, "androidState"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileState;->getAndroidState()Lcom/tl/uic/model/AndroidState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tl/uic/model/AndroidState;->getJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :goto_2
    return-object v1

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/tl/uic/model/MobileState;->getBattery()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/tl/uic/model/MobileState;->getNetworkReachability()Lcom/tl/uic/model/ReachabilityType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tl/uic/model/ReachabilityType;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final getNetworkReachability()Lcom/tl/uic/model/ReachabilityType;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tl/uic/model/MobileState;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/tl/uic/model/MobileState;->orientation:I

    return v0
.end method

.method public final hashCode()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v4, 0x0

    .line 181
    const/4 v0, 0x1

    .line 182
    .local v0, result:I
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->androidState:Lcom/tl/uic/model/AndroidState;

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    add-int/lit8 v0, v3, 0x1f

    .line 183
    iget-wide v5, p0, Lcom/tl/uic/model/MobileState;->battery:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 184
    .local v1, temp:J
    mul-int/lit8 v3, v0, 0x1f

    ushr-long v5, v1, v9

    xor-long/2addr v5, v1

    long-to-int v5, v5

    add-int v0, v3, v5

    .line 185
    mul-int/lit8 v5, v0, 0x1f

    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->carrier:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v4

    :goto_1
    add-int v0, v5, v3

    .line 186
    mul-int/lit8 v5, v0, 0x1f

    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->connectionType:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v4

    :goto_2
    add-int v0, v5, v3

    .line 187
    mul-int/lit8 v3, v0, 0x1f

    iget-wide v5, p0, Lcom/tl/uic/model/MobileState;->freeMemory:J

    iget-wide v7, p0, Lcom/tl/uic/model/MobileState;->freeMemory:J

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int v0, v3, v5

    .line 188
    mul-int/lit8 v3, v0, 0x1f

    iget-wide v5, p0, Lcom/tl/uic/model/MobileState;->freeStorage:J

    iget-wide v7, p0, Lcom/tl/uic/model/MobileState;->freeStorage:J

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    add-int v0, v3, v5

    .line 189
    mul-int/lit8 v5, v0, 0x1f

    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->ip:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v4

    :goto_3
    add-int v0, v5, v3

    .line 190
    mul-int/lit8 v3, v0, 0x1f

    iget-object v5, p0, Lcom/tl/uic/model/MobileState;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    if-nez v5, :cond_4

    :goto_4
    add-int v0, v3, v4

    .line 191
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Lcom/tl/uic/model/MobileState;->orientation:I

    add-int v0, v3, v4

    .line 192
    return v0

    .line 182
    .end local v1           #temp:J
    :cond_0
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->androidState:Lcom/tl/uic/model/AndroidState;

    invoke-virtual {v3}, Lcom/tl/uic/model/AndroidState;->hashCode()I

    move-result v3

    goto :goto_0

    .line 185
    .restart local v1       #temp:J
    :cond_1
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->carrier:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    .line 186
    :cond_2
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->connectionType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    .line 189
    :cond_3
    iget-object v3, p0, Lcom/tl/uic/model/MobileState;->ip:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    .line 190
    :cond_4
    iget-object v4, p0, Lcom/tl/uic/model/MobileState;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    invoke-virtual {v4}, Lcom/tl/uic/model/ReachabilityType;->hashCode()I

    move-result v4

    goto :goto_4
.end method

.method public final setAndroidState(Lcom/tl/uic/model/AndroidState;)V
    .locals 0
    .parameter "androidState"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/tl/uic/model/MobileState;->androidState:Lcom/tl/uic/model/AndroidState;

    .line 152
    return-void
.end method

.method public final setBattery(D)V
    .locals 0
    .parameter "battery"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/tl/uic/model/MobileState;->battery:D

    .line 68
    return-void
.end method

.method public final setCarrier(Ljava/lang/String;)V
    .locals 0
    .parameter "carrier"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tl/uic/model/MobileState;->carrier:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public final setConnectionType(Ljava/lang/String;)V
    .locals 0
    .parameter "connectionType"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tl/uic/model/MobileState;->connectionType:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public final setFreeMemory(J)V
    .locals 0
    .parameter "freeMemory"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/tl/uic/model/MobileState;->freeMemory:J

    .line 54
    return-void
.end method

.method public final setFreeStorage(J)V
    .locals 0
    .parameter "freeStorage"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/tl/uic/model/MobileState;->freeStorage:J

    .line 40
    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0
    .parameter "ip"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tl/uic/model/MobileState;->ip:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public final setNetworkReachability(Lcom/tl/uic/model/ReachabilityType;)V
    .locals 0
    .parameter "networkReachability"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tl/uic/model/MobileState;->networkReachability:Lcom/tl/uic/model/ReachabilityType;

    .line 138
    return-void
.end method

.method public final setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 109
    iput p1, p0, Lcom/tl/uic/model/MobileState;->orientation:I

    .line 110
    return-void
.end method
