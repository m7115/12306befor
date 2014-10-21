.class public Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;
.super Lorg/codehaus/jackson/map/ser/SerializerBase;
.source "JsonOrgJSONArraySerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/SerializerBase",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;

    invoke-direct {v0}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 32
    return-void
.end method

.method private serializeContents(Lorg/json/JSONArray;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 6
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
    .line 54
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 56
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_b

    .line 58
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 60
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 56
    .end local v3           #obj:Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v4, Lorg/json/JSONObject;

    if-eq v0, v4, :cond_2

    const-class v4, Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    :cond_2
    sget-object v4, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;

    check-cast v3, Lorg/json/JSONObject;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v4, v3, p2, p3}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;->serialize(Lorg/json/JSONObject;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1

    .line 74
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_3
    const-class v4, Lorg/json/JSONArray;

    if-eq v0, v4, :cond_4

    const-class v4, Lorg/json/JSONArray;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 76
    :cond_4
    check-cast v3, Lorg/json/JSONArray;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {p0, v3, p2, p3}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;->serialize(Lorg/json/JSONArray;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1

    .line 79
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_5
    const-class v4, Ljava/lang/String;

    if-ne v0, v4, :cond_6

    .line 80
    check-cast v3, Ljava/lang/String;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {p2, v3}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_6
    const-class v4, Ljava/lang/Integer;

    if-ne v0, v4, :cond_7

    .line 84
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    goto :goto_1

    .line 87
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_7
    const-class v4, Ljava/lang/Long;

    if-ne v0, v4, :cond_8

    .line 88
    check-cast v3, Ljava/lang/Long;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    goto :goto_1

    .line 91
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_8
    const-class v4, Ljava/lang/Boolean;

    if-ne v0, v4, :cond_9

    .line 92
    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p2, v4}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    goto :goto_1

    .line 95
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_9
    const-class v4, Ljava/lang/Double;

    if-ne v0, v4, :cond_a

    .line 96
    check-cast v3, Ljava/lang/Double;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    goto :goto_1

    .line 100
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_a
    invoke-virtual {p3, v3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeValue(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 103
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #obj:Ljava/lang/Object;
    :cond_b
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
    .line 37
    const-string v0, "array"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;->createSchemaNode(Ljava/lang/String;Z)Lorg/codehaus/jackson/node/ObjectNode;

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
    .line 26
    check-cast p1, Lorg/json/JSONArray;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;->serialize(Lorg/json/JSONArray;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/json/JSONArray;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
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
    .line 44
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;->serializeContents(Lorg/json/JSONArray;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 48
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 49
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
    .line 26
    check-cast p1, Lorg/json/JSONArray;

    .end local p1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;->serializeWithType(Lorg/json/JSONArray;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Lorg/json/JSONArray;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
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
    .line 109
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;->serializeContents(Lorg/json/JSONArray;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 113
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 114
    return-void
.end method
