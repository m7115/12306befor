.class public Lcom/tl/uic/model/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x624363bfa74c5358L


# instance fields
.field private subType:Ljava/lang/String;

.field private tlEvent:Ljava/lang/String;

.field private type:Ljava/lang/String;


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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/tl/uic/model/EventInfo;->type:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/tl/uic/model/EventInfo;->subType:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/tl/uic/model/EventInfo;->tlEvent:Ljava/lang/String;

    .line 142
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

    .line 107
    if-ne p0, p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 114
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 116
    check-cast v0, Lcom/tl/uic/model/EventInfo;

    .line 117
    .local v0, other:Lcom/tl/uic/model/EventInfo;
    iget-object v3, p0, Lcom/tl/uic/model/EventInfo;->subType:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 118
    iget-object v3, v0, Lcom/tl/uic/model/EventInfo;->subType:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_4
    iget-object v3, p0, Lcom/tl/uic/model/EventInfo;->subType:Ljava/lang/String;

    iget-object v4, v0, Lcom/tl/uic/model/EventInfo;->subType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_5
    iget-object v3, p0, Lcom/tl/uic/model/EventInfo;->type:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 125
    iget-object v3, v0, Lcom/tl/uic/model/EventInfo;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 126
    goto :goto_0

    .line 128
    :cond_6
    iget-object v3, p0, Lcom/tl/uic/model/EventInfo;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/tl/uic/model/EventInfo;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 129
    goto :goto_0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 75
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 77
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "type"

    invoke-virtual {p0}, Lcom/tl/uic/model/EventInfo;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    invoke-virtual {p0}, Lcom/tl/uic/model/EventInfo;->getSubType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    const-string v2, "subType"

    invoke-virtual {p0}, Lcom/tl/uic/model/EventInfo;->getSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    :cond_0
    const-string v2, "tlEvent"

    invoke-virtual {p0}, Lcom/tl/uic/model/EventInfo;->getTlEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tl/uic/model/EventInfo;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public final getTlEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tl/uic/model/EventInfo;->tlEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tl/uic/model/EventInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, result:I
    iget-object v1, p0, Lcom/tl/uic/model/EventInfo;->subType:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 98
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/tl/uic/model/EventInfo;->type:Ljava/lang/String;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 99
    return v0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/tl/uic/model/EventInfo;->subType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/tl/uic/model/EventInfo;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public final setSubType(Ljava/lang/String;)V
    .locals 0
    .parameter "subType"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tl/uic/model/EventInfo;->subType:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public final setTlEvent(Ljava/lang/String;)V
    .locals 0
    .parameter "tlEvent"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tl/uic/model/EventInfo;->tlEvent:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tl/uic/model/EventInfo;->type:Ljava/lang/String;

    .line 35
    return-void
.end method
