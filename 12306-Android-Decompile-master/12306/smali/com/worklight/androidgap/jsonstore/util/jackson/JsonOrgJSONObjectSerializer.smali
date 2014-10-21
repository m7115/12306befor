.class public Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "JsonOrgJSONObjectSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;

    invoke-direct {v0}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getSchema(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/JsonNode;
    .locals 2
    .parameter "provider"
    .parameter "typeHint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v0, "object"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;->serialize(Lorg/json/JSONObject;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/json/JSONObject;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter "value"
    .parameter "jgen"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;->serializeContents(Lorg/json/JSONObject;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 51
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 52
    return-void
.end method

.method protected serializeContents(Lorg/json/JSONObject;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 7
    .parameter "value"
    .parameter "jgen"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 59
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 65
    .local v3, key:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 72
    .local v4, obj:Ljava/lang/Object;
    if-eqz v4, :cond_0

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/JsonGenerator;->writeNullField(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v4           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Lorg/json/JSONException;
    new-instance v5, Lorg/codehaus/jackson/JsonGenerationException;

    invoke-direct {v5, v1}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 78
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 82
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v5, Lorg/json/JSONObject;

    if-eq v0, v5, :cond_2

    const-class v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    :cond_2
    check-cast v4, Lorg/json/JSONObject;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {p0, v4, p2, p3}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;->serialize(Lorg/json/JSONObject;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 87
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_3
    const-class v5, Lorg/json/JSONArray;

    if-eq v0, v5, :cond_4

    const-class v5, Lorg/json/JSONArray;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    :cond_4
    sget-object v5, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;

    check-cast v4, Lorg/json/JSONArray;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v5, v4, p2, p3}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;->serialize(Lorg/json/JSONArray;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 93
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_5
    const-class v5, Ljava/lang/String;

    if-ne v0, v5, :cond_6

    .line 94
    check-cast v4, Ljava/lang/String;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {p2, v4}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_6
    const-class v5, Ljava/lang/Integer;

    if-ne v0, v5, :cond_7

    .line 98
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p2, v5}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    goto :goto_0

    .line 101
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_7
    const-class v5, Ljava/lang/Long;

    if-ne v0, v5, :cond_8

    .line 102
    check-cast v4, Ljava/lang/Long;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    goto :goto_0

    .line 105
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_8
    const-class v5, Ljava/lang/Boolean;

    if-ne v0, v5, :cond_9

    .line 106
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p2, v5}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 109
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_9
    const-class v5, Ljava/lang/Double;

    if-ne v0, v5, :cond_a

    .line 110
    check-cast v4, Ljava/lang/Double;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    goto/16 :goto_0

    .line 114
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_a
    invoke-virtual {p3, v4, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeValue(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    goto/16 :goto_0

    .line 117
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #obj:Ljava/lang/Object;
    :cond_b
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;->serializeWithType(Lorg/json/JSONObject;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Lorg/json/JSONObject;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter "value"
    .parameter "jgen"
    .parameter "provider"
    .parameter "typeSer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;->serializeContents(Lorg/json/JSONObject;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 127
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 128
    return-void
.end method
