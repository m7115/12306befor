.class public Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;
.super Lorg/json/JSONObject;
.source "JacksonSerializedJSONObject.java"


# instance fields
.field private wrappedObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;->wrappedObject:Lorg/json/JSONObject;

    .line 25
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;->wrappedObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .end local p0
    :goto_0
    invoke-static {p0}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->serialize(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p0
    :cond_0
    iget-object p0, p0, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;->wrappedObject:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .parameter "indentFactor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
