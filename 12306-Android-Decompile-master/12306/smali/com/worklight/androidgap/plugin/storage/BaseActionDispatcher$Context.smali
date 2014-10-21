.class public Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;
.super Ljava/lang/Object;
.source "BaseActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private cordovaContext:Lorg/apache/cordova/api/CordovaInterface;

.field private parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/cordova/api/CordovaInterface;)V
    .locals 1
    .parameter "cordovaContext"

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->cordovaContext:Lorg/apache/cordova/api/CordovaInterface;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->parameters:Ljava/util/HashMap;

    .line 184
    return-void
.end method

.method static synthetic access$100(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->addParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method


# virtual methods
.method public getArrayParameter(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .parameter "name"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public getBooleanParameter(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "name"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->cordovaContext:Lorg/apache/cordova/api/CordovaInterface;

    return-object v0
.end method

.method public getFloatParameter(Ljava/lang/String;)F
    .locals 1
    .parameter "name"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getIntParameter(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getObjectParameter(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "name"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public getStringParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUntypedParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
