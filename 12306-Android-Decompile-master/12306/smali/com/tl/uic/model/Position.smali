.class public Lcom/tl/uic/model/Position;
.super Ljava/lang/Object;
.source "Position.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x57692b230d050024L


# instance fields
.field private height:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/tl/uic/model/Position;->x:I

    .line 149
    iput v0, p0, Lcom/tl/uic/model/Position;->y:I

    .line 150
    iput v0, p0, Lcom/tl/uic/model/Position;->width:I

    .line 151
    iput v0, p0, Lcom/tl/uic/model/Position;->height:I

    .line 152
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

    .line 119
    if-ne p0, p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 126
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 128
    check-cast v0, Lcom/tl/uic/model/Position;

    .line 129
    .local v0, other:Lcom/tl/uic/model/Position;
    iget v3, p0, Lcom/tl/uic/model/Position;->height:I

    iget v4, v0, Lcom/tl/uic/model/Position;->height:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 130
    goto :goto_0

    .line 132
    :cond_4
    iget v3, p0, Lcom/tl/uic/model/Position;->width:I

    iget v4, v0, Lcom/tl/uic/model/Position;->width:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 133
    goto :goto_0

    .line 135
    :cond_5
    iget v3, p0, Lcom/tl/uic/model/Position;->x:I

    iget v4, v0, Lcom/tl/uic/model/Position;->x:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 136
    goto :goto_0

    .line 138
    :cond_6
    iget v3, p0, Lcom/tl/uic/model/Position;->y:I

    iget v4, v0, Lcom/tl/uic/model/Position;->y:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 139
    goto :goto_0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/tl/uic/model/Position;->height:I

    return v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 88
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "x"

    invoke-virtual {p0}, Lcom/tl/uic/model/Position;->getX()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v2, "y"

    invoke-virtual {p0}, Lcom/tl/uic/model/Position;->getY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string v2, "width"

    invoke-virtual {p0}, Lcom/tl/uic/model/Position;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v2, "height"

    invoke-virtual {p0}, Lcom/tl/uic/model/Position;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/tl/uic/model/Position;->width:I

    return v0
.end method

.method public final getX()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/tl/uic/model/Position;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/tl/uic/model/Position;->y:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x1

    .line 107
    .local v0, result:I
    iget v1, p0, Lcom/tl/uic/model/Position;->height:I

    add-int/lit8 v0, v1, 0x1f

    .line 108
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/tl/uic/model/Position;->width:I

    add-int v0, v1, v2

    .line 109
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/tl/uic/model/Position;->x:I

    add-int v0, v1, v2

    .line 110
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/tl/uic/model/Position;->y:I

    add-int v0, v1, v2

    .line 111
    return v0
.end method

.method public final setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 81
    iput p1, p0, Lcom/tl/uic/model/Position;->height:I

    .line 82
    return-void
.end method

.method public final setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 66
    iput p1, p0, Lcom/tl/uic/model/Position;->width:I

    .line 67
    return-void
.end method

.method public final setX(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 36
    iput p1, p0, Lcom/tl/uic/model/Position;->x:I

    .line 37
    return-void
.end method

.method public final setY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 51
    iput p1, p0, Lcom/tl/uic/model/Position;->y:I

    .line 52
    return-void
.end method
