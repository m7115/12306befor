.class public Lcom/tl/uic/model/Target;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x455e27e94aeb1850L


# instance fields
.field private currentState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dwell:J

.field private id:Ljava/lang/String;

.field private position:Lcom/tl/uic/model/Position;

.field private previousState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subType:Ljava/lang/String;

.field private tlType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private visitedCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/tl/uic/model/Target;->visitedCount:I

    .line 36
    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iput-object v2, p0, Lcom/tl/uic/model/Target;->id:Ljava/lang/String;

    .line 284
    iput-object v2, p0, Lcom/tl/uic/model/Target;->type:Ljava/lang/String;

    .line 285
    iput-object v2, p0, Lcom/tl/uic/model/Target;->subType:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/tl/uic/model/Target;->position:Lcom/tl/uic/model/Position;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/tl/uic/model/Target;->position:Lcom/tl/uic/model/Position;

    invoke-virtual {v0}, Lcom/tl/uic/model/Position;->clean()Ljava/lang/Boolean;

    .line 289
    :cond_0
    iput-object v2, p0, Lcom/tl/uic/model/Target;->position:Lcom/tl/uic/model/Position;

    .line 290
    iget-object v0, p0, Lcom/tl/uic/model/Target;->previousState:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/tl/uic/util/GCUtil;->clean(Ljava/util/HashMap;)Ljava/lang/Boolean;

    .line 291
    iput-object v2, p0, Lcom/tl/uic/model/Target;->previousState:Ljava/util/HashMap;

    .line 292
    iget-object v0, p0, Lcom/tl/uic/model/Target;->currentState:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/tl/uic/util/GCUtil;->clean(Ljava/util/HashMap;)Ljava/lang/Boolean;

    .line 293
    iput-object v2, p0, Lcom/tl/uic/model/Target;->currentState:Ljava/util/HashMap;

    .line 294
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tl/uic/model/Target;->dwell:J

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/tl/uic/model/Target;->visitedCount:I

    .line 296
    iput-object v2, p0, Lcom/tl/uic/model/Target;->tlType:Ljava/lang/String;

    .line 297
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

    .line 234
    if-ne p0, p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v1

    .line 237
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 238
    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 241
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 243
    check-cast v0, Lcom/tl/uic/model/Target;

    .line 244
    .local v0, other:Lcom/tl/uic/model/Target;
    iget-object v3, p0, Lcom/tl/uic/model/Target;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 245
    iget-object v3, v0, Lcom/tl/uic/model/Target;->id:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 246
    goto :goto_0

    .line 248
    :cond_4
    iget-object v3, p0, Lcom/tl/uic/model/Target;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/tl/uic/model/Target;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 249
    goto :goto_0

    .line 251
    :cond_5
    iget-object v3, p0, Lcom/tl/uic/model/Target;->position:Lcom/tl/uic/model/Position;

    if-nez v3, :cond_6

    .line 252
    iget-object v3, v0, Lcom/tl/uic/model/Target;->position:Lcom/tl/uic/model/Position;

    if-eqz v3, :cond_7

    move v1, v2

    .line 253
    goto :goto_0

    .line 255
    :cond_6
    iget-object v3, p0, Lcom/tl/uic/model/Target;->position:Lcom/tl/uic/model/Position;

    iget-object v4, v0, Lcom/tl/uic/model/Target;->position:Lcom/tl/uic/model/Position;

    invoke-virtual {v3, v4}, Lcom/tl/uic/model/Position;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 256
    goto :goto_0

    .line 258
    :cond_7
    iget-object v3, p0, Lcom/tl/uic/model/Target;->subType:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 259
    iget-object v3, v0, Lcom/tl/uic/model/Target;->subType:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 260
    goto :goto_0

    .line 262
    :cond_8
    iget-object v3, p0, Lcom/tl/uic/model/Target;->subType:Ljava/lang/String;

    iget-object v4, v0, Lcom/tl/uic/model/Target;->subType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 263
    goto :goto_0

    .line 265
    :cond_9
    iget-object v3, p0, Lcom/tl/uic/model/Target;->type:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 266
    iget-object v3, v0, Lcom/tl/uic/model/Target;->type:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 267
    goto :goto_0

    .line 269
    :cond_a
    iget-object v3, p0, Lcom/tl/uic/model/Target;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/tl/uic/model/Target;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 270
    goto :goto_0

    .line 272
    :cond_b
    iget v3, v0, Lcom/tl/uic/model/Target;->visitedCount:I

    iget v4, p0, Lcom/tl/uic/model/Target;->visitedCount:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 273
    goto :goto_0
.end method

.method public final getCurrentState()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tl/uic/model/Target;->currentState:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getDwell()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/tl/uic/model/Target;->dwell:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tl/uic/model/Target;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 190
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 192
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "id"

    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v3, "type"

    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v3, "subType"

    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v4, "position"

    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getPosition()Lcom/tl/uic/model/Position;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v3, "prevState"

    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getPreviousState()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v4}, Lcom/tl/uic/util/JsonUtil;->getHashValues(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v3, "currState"

    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getCurrentState()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v4}, Lcom/tl/uic/util/JsonUtil;->getHashValues(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getVisitedCount()I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 200
    const-string v3, "visitedCount"

    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getVisitedCount()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getDwell()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 204
    const-string v3, "dwell"

    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getDwell()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 207
    :cond_1
    const-string v3, "tlType"

    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getTlType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_1
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :goto_2
    return-object v1

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getPosition()Lcom/tl/uic/model/Position;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tl/uic/model/Position;->getJSON()Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    .line 207
    :cond_3
    invoke-virtual {p0}, Lcom/tl/uic/model/Target;->getTlType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final getPosition()Lcom/tl/uic/model/Position;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tl/uic/model/Target;->position:Lcom/tl/uic/model/Position;

    return-object v0
.end method

.method public final getPreviousState()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tl/uic/model/Target;->previousState:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tl/uic/model/Target;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public final getTlType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tl/uic/model/Target;->tlType:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tl/uic/model/Target;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getVisitedCount()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/tl/uic/model/Target;->visitedCount:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 220
    const/4 v0, 0x1

    .line 221
    .local v0, result:I
    iget-object v1, p0, Lcom/tl/uic/model/Target;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 222
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/tl/uic/model/Target;->position:Lcom/tl/uic/model/Position;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 223
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/tl/uic/model/Target;->subType:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 224
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/tl/uic/model/Target;->type:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 225
    return v0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/tl/uic/model/Target;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/tl/uic/model/Target;->position:Lcom/tl/uic/model/Position;

    invoke-virtual {v1}, Lcom/tl/uic/model/Position;->hashCode()I

    move-result v1

    goto :goto_1

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/tl/uic/model/Target;->subType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 224
    :cond_3
    iget-object v2, p0, Lcom/tl/uic/model/Target;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public final setCurrentState(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, currentState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tl/uic/model/Target;->currentState:Ljava/util/HashMap;

    .line 130
    return-void
.end method

.method public final setDwell(J)V
    .locals 0
    .parameter "dwell"

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/tl/uic/model/Target;->dwell:J

    .line 146
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tl/uic/model/Target;->id:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public final setPosition(Lcom/tl/uic/model/Position;)V
    .locals 0
    .parameter "position"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tl/uic/model/Target;->position:Lcom/tl/uic/model/Position;

    .line 98
    return-void
.end method

.method public final setPreviousState(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, previousState:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tl/uic/model/Target;->previousState:Ljava/util/HashMap;

    .line 114
    return-void
.end method

.method public final setSubType(Ljava/lang/String;)V
    .locals 0
    .parameter "subType"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tl/uic/model/Target;->subType:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public final setTlType(Ljava/lang/String;)V
    .locals 0
    .parameter "tlType"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/tl/uic/model/Target;->tlType:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tl/uic/model/Target;->type:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public final setVisitedCount(I)V
    .locals 0
    .parameter "visitedCount"

    .prologue
    .line 164
    iput p1, p0, Lcom/tl/uic/model/Target;->visitedCount:I

    .line 165
    return-void
.end method
