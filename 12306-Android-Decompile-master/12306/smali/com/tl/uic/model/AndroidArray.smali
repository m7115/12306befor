.class public Lcom/tl/uic/model/AndroidArray;
.super Ljava/lang/Object;
.source "AndroidArray.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5058995dd647841eL


# instance fields
.field private brand:Ljava/lang/String;

.field private fingerPrint:Ljava/lang/String;

.field private keyboardType:Lcom/tl/uic/model/KeyboardType;


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
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/tl/uic/model/AndroidArray;->brand:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/tl/uic/model/AndroidArray;->fingerPrint:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/tl/uic/model/AndroidArray;->keyboardType:Lcom/tl/uic/model/KeyboardType;

    .line 91
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tl/uic/model/AndroidArray;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public final getFingerPrint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tl/uic/model/AndroidArray;->fingerPrint:Ljava/lang/String;

    return-object v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "brand"

    invoke-virtual {p0}, Lcom/tl/uic/model/AndroidArray;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v2, "fingerPrint"

    invoke-virtual {p0}, Lcom/tl/uic/model/AndroidArray;->getFingerPrint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v2, "keyboardType"

    invoke-virtual {p0}, Lcom/tl/uic/model/AndroidArray;->getKeyboardType()Lcom/tl/uic/model/KeyboardType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getKeyboardType()Lcom/tl/uic/model/KeyboardType;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tl/uic/model/AndroidArray;->keyboardType:Lcom/tl/uic/model/KeyboardType;

    return-object v0
.end method

.method public final setBrand(Ljava/lang/String;)V
    .locals 0
    .parameter "brand"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tl/uic/model/AndroidArray;->brand:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public final setFingerPrint(Ljava/lang/String;)V
    .locals 0
    .parameter "fingerPrint"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tl/uic/model/AndroidArray;->fingerPrint:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public final setKeyboardType(Lcom/tl/uic/model/KeyboardType;)V
    .locals 0
    .parameter "keyboardType"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tl/uic/model/AndroidArray;->keyboardType:Lcom/tl/uic/model/KeyboardType;

    .line 65
    return-void
.end method
