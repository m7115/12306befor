.class public Lcom/tl/uic/model/JSONMessage;
.super Ljava/lang/Object;
.source "JSONMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x373047918898ad90L


# instance fields
.field private jsonData:Ljava/lang/String;

.field private logLevel:I

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/tl/uic/model/JSONMessage;->logLevel:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tl/uic/model/JSONMessage;->size:J

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/tl/uic/model/ClientMessageHeader;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/tl/uic/model/ClientMessageHeader;->getLogLevel()I

    move-result v0

    iput v0, p0, Lcom/tl/uic/model/JSONMessage;->logLevel:I

    .line 31
    invoke-virtual {p1}, Lcom/tl/uic/model/ClientMessageHeader;->getJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tl/uic/model/JSONMessage;->size:J

    .line 33
    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/tl/uic/model/JSONMessage;->logLevel:I

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tl/uic/model/JSONMessage;->size:J

    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 113
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 120
    check-cast v0, Lcom/tl/uic/model/JSONMessage;

    .line 121
    .local v0, other:Lcom/tl/uic/model/JSONMessage;
    iget-object v3, p0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 122
    iget-object v3, v0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 129
    :cond_3
    iget v3, p0, Lcom/tl/uic/model/JSONMessage;->logLevel:I

    iget v4, v0, Lcom/tl/uic/model/JSONMessage;->logLevel:I

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 132
    goto :goto_0

    .line 125
    :cond_4
    iget-object v3, p0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    iget-object v4, v0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0
.end method

.method public final getJsonData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogLevel()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/tl/uic/model/JSONMessage;->logLevel:I

    return v0
.end method

.method public final getSize()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/tl/uic/model/JSONMessage;->size:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 95
    const/16 v0, 0x1f

    .line 96
    .local v0, prime:I
    const/4 v1, 0x1

    .line 98
    .local v1, result:I
    iget-object v2, p0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 97
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 99
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/tl/uic/model/JSONMessage;->logLevel:I

    add-int v1, v2, v3

    .line 100
    return v1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public final setJsonData(Ljava/lang/String;)V
    .locals 0
    .parameter "jsonData"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public final setLogLevel(I)V
    .locals 0
    .parameter "logLevel"

    .prologue
    .line 68
    iput p1, p0, Lcom/tl/uic/model/JSONMessage;->logLevel:I

    .line 69
    return-void
.end method

.method public final setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/tl/uic/model/JSONMessage;->size:J

    .line 87
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "JSONMessage [jsonData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, toStringValue:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/tl/uic/model/JSONMessage;->jsonData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v1, ", logLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    iget v1, p0, Lcom/tl/uic/model/JSONMessage;->logLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 145
    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget-wide v1, p0, Lcom/tl/uic/model/JSONMessage;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 147
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
