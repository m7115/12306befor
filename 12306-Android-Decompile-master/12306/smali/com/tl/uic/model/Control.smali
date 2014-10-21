.class public Lcom/tl/uic/model/Control;
.super Lcom/tl/uic/model/ClientMessageHeader;
.source "Control.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xbedb68c99f7bf16L


# instance fields
.field private eventInfo:Lcom/tl/uic/model/EventInfo;

.field private focusInOffset:J

.field private target:Lcom/tl/uic/model/Target;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 27
    sget-object v0, Lcom/tl/uic/model/MessageType;->CONTROL:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/Control;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->clean()Ljava/lang/Boolean;

    .line 146
    iget-object v0, p0, Lcom/tl/uic/model/Control;->target:Lcom/tl/uic/model/Target;

    invoke-virtual {v0}, Lcom/tl/uic/model/Target;->clean()Ljava/lang/Boolean;

    .line 147
    iput-object v1, p0, Lcom/tl/uic/model/Control;->target:Lcom/tl/uic/model/Target;

    .line 148
    iget-object v0, p0, Lcom/tl/uic/model/Control;->eventInfo:Lcom/tl/uic/model/EventInfo;

    invoke-virtual {v0}, Lcom/tl/uic/model/EventInfo;->clean()Ljava/lang/Boolean;

    .line 149
    iput-object v1, p0, Lcom/tl/uic/model/Control;->eventInfo:Lcom/tl/uic/model/EventInfo;

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tl/uic/model/Control;->focusInOffset:J

    .line 151
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

    .line 113
    if-ne p0, p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lcom/tl/uic/model/ClientMessageHeader;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 117
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 120
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 122
    check-cast v0, Lcom/tl/uic/model/Control;

    .line 123
    .local v0, other:Lcom/tl/uic/model/Control;
    iget-object v3, p0, Lcom/tl/uic/model/Control;->eventInfo:Lcom/tl/uic/model/EventInfo;

    if-nez v3, :cond_4

    .line 124
    iget-object v3, v0, Lcom/tl/uic/model/Control;->eventInfo:Lcom/tl/uic/model/EventInfo;

    if-eqz v3, :cond_5

    move v1, v2

    .line 125
    goto :goto_0

    .line 127
    :cond_4
    iget-object v3, p0, Lcom/tl/uic/model/Control;->eventInfo:Lcom/tl/uic/model/EventInfo;

    iget-object v4, v0, Lcom/tl/uic/model/Control;->eventInfo:Lcom/tl/uic/model/EventInfo;

    invoke-virtual {v3, v4}, Lcom/tl/uic/model/EventInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 128
    goto :goto_0

    .line 130
    :cond_5
    iget-object v3, p0, Lcom/tl/uic/model/Control;->target:Lcom/tl/uic/model/Target;

    if-nez v3, :cond_6

    .line 131
    iget-object v3, v0, Lcom/tl/uic/model/Control;->target:Lcom/tl/uic/model/Target;

    if-eqz v3, :cond_0

    move v1, v2

    .line 132
    goto :goto_0

    .line 134
    :cond_6
    iget-object v3, p0, Lcom/tl/uic/model/Control;->target:Lcom/tl/uic/model/Target;

    iget-object v4, v0, Lcom/tl/uic/model/Control;->target:Lcom/tl/uic/model/Target;

    invoke-virtual {v3, v4}, Lcom/tl/uic/model/Target;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 135
    goto :goto_0
.end method

.method public final getEventInfo()Lcom/tl/uic/model/EventInfo;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tl/uic/model/Control;->eventInfo:Lcom/tl/uic/model/EventInfo;

    return-object v0
.end method

.method public final getFocusInOffset()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/tl/uic/model/Control;->focusInOffset:J

    return-wide v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->getJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/tl/uic/model/Control;->getFocusInOffset()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 81
    const-string v2, "focusInOffset"

    invoke-virtual {p0}, Lcom/tl/uic/model/Control;->getFocusInOffset()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 84
    :cond_0
    const-string v2, "target"

    invoke-virtual {p0}, Lcom/tl/uic/model/Control;->getTarget()Lcom/tl/uic/model/Target;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tl/uic/model/Target;->getJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {p0}, Lcom/tl/uic/model/Control;->getEventInfo()Lcom/tl/uic/model/EventInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 87
    const-string v2, "event"

    invoke-virtual {p0}, Lcom/tl/uic/model/Control;->getEventInfo()Lcom/tl/uic/model/EventInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tl/uic/model/EventInfo;->getJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_1
    :goto_0
    return-object v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getTarget()Lcom/tl/uic/model/Target;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tl/uic/model/Control;->target:Lcom/tl/uic/model/Target;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->hashCode()I

    move-result v0

    .line 102
    .local v0, result:I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/tl/uic/model/Control;->eventInfo:Lcom/tl/uic/model/EventInfo;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 103
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/tl/uic/model/Control;->target:Lcom/tl/uic/model/Target;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 104
    return v0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/tl/uic/model/Control;->eventInfo:Lcom/tl/uic/model/EventInfo;

    invoke-virtual {v1}, Lcom/tl/uic/model/EventInfo;->hashCode()I

    move-result v1

    goto :goto_0

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/tl/uic/model/Control;->target:Lcom/tl/uic/model/Target;

    invoke-virtual {v2}, Lcom/tl/uic/model/Target;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public final setEventInfo(Lcom/tl/uic/model/EventInfo;)V
    .locals 0
    .parameter "eventInfo"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tl/uic/model/Control;->eventInfo:Lcom/tl/uic/model/EventInfo;

    .line 56
    return-void
.end method

.method public final setFocusInOffset(J)V
    .locals 0
    .parameter "focusInOffset"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/tl/uic/model/Control;->focusInOffset:J

    .line 70
    return-void
.end method

.method public final setTarget(Lcom/tl/uic/model/Target;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/tl/uic/model/Control;->target:Lcom/tl/uic/model/Target;

    .line 42
    return-void
.end method
