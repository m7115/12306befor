.class public Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;
.super Lorg/codehaus/jackson/map/module/SimpleModule;
.source "JsonOrgModule.java"


# static fields
.field private static final mapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 27
    sget-object v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    new-instance v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;

    invoke-direct {v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;-><init>()V

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->registerModule(Lorg/codehaus/jackson/map/Module;)V

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    const-string v0, "JsonOrgModule"

    new-instance v1, Lorg/codehaus/jackson/Version;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v4, v3}, Lorg/codehaus/jackson/Version;-><init>(IIILjava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/module/SimpleModule;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/Version;)V

    .line 33
    const-class v0, Lorg/json/JSONArray;

    sget-object v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArrayDeserializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArrayDeserializer;

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    .line 35
    const-class v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectDeserializer;

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    .line 38
    const-class v0, Lorg/json/JSONArray;

    sget-object v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    .line 39
    const-class v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;->instance:Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgJSONObjectSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    .line 41
    return-void
.end method

.method public static deserializeJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    const-class v1, Lorg/json/JSONArray;

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public static deserializeJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static serialize(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 3
    .parameter "array"

    .prologue
    .line 55
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 57
    .local v1, writer:Ljava/io/StringWriter;
    sget-object v2, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v2, v1, p0}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Ljava/io/Writer;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V

    .line 61
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 65
    .end local v1           #writer:Ljava/io/StringWriter;
    :goto_0
    return-object v2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static serialize(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 73
    .local v1, writer:Ljava/io/StringWriter;
    sget-object v2, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v2, v1, p0}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Ljava/io/Writer;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V

    .line 77
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 81
    .end local v1           #writer:Ljava/io/StringWriter;
    :goto_0
    return-object v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method
