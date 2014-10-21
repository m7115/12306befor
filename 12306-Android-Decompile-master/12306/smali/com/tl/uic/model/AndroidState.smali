.class public Lcom/tl/uic/model/AndroidState;
.super Ljava/lang/Object;
.source "AndroidState.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x118747e5694d22dbL


# instance fields
.field private keyboardStateType:Lcom/tl/uic/model/KeyboardStateType;


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
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tl/uic/model/AndroidState;->keyboardStateType:Lcom/tl/uic/model/KeyboardStateType;

    .line 79
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

    .line 60
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 64
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 66
    check-cast v0, Lcom/tl/uic/model/AndroidState;

    .line 67
    .local v0, other:Lcom/tl/uic/model/AndroidState;
    iget-object v3, p0, Lcom/tl/uic/model/AndroidState;->keyboardStateType:Lcom/tl/uic/model/KeyboardStateType;

    iget-object v4, v0, Lcom/tl/uic/model/AndroidState;->keyboardStateType:Lcom/tl/uic/model/KeyboardStateType;

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 68
    goto :goto_0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "keyboardState"

    invoke-virtual {p0}, Lcom/tl/uic/model/AndroidState;->getKeyboardStateType()Lcom/tl/uic/model/KeyboardStateType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getKeyboardStateType()Lcom/tl/uic/model/KeyboardStateType;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tl/uic/model/AndroidState;->keyboardStateType:Lcom/tl/uic/model/KeyboardStateType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tl/uic/model/AndroidState;->keyboardStateType:Lcom/tl/uic/model/KeyboardStateType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tl/uic/model/AndroidState;->keyboardStateType:Lcom/tl/uic/model/KeyboardStateType;

    invoke-virtual {v0}, Lcom/tl/uic/model/KeyboardStateType;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final setKeyboardStateType(Lcom/tl/uic/model/KeyboardStateType;)V
    .locals 0
    .parameter "keyboardStateType"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tl/uic/model/AndroidState;->keyboardStateType:Lcom/tl/uic/model/KeyboardStateType;

    .line 32
    return-void
.end method
