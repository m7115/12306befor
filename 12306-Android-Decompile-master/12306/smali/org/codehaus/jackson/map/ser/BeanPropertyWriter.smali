.class public Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
.super Ljava/lang/Object;
.source "BeanPropertyWriter.java"

# interfaces
.implements Lorg/codehaus/jackson/map/BeanProperty;


# instance fields
.field protected final _accessorMethod:Ljava/lang/reflect/Method;

.field protected final _cfgSerializationType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

.field protected final _declaredType:Lorg/codehaus/jackson/type/JavaType;

.field protected _dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

.field protected final _field:Ljava/lang/reflect/Field;

.field protected _includeInViews:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _internalSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _member:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

.field protected final _name:Lorg/codehaus/jackson/io/SerializedString;

.field protected _nonTrivialBaseType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _serializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _suppressNulls:Z

.field protected final _suppressableValue:Ljava/lang/Object;

.field protected _typeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/util/Annotations;Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 12
    .parameter "member"
    .parameter "contextAnnotations"
    .parameter "name"
    .parameter "declaredType"
    .parameter
    .parameter "typeSer"
    .parameter "serType"
    .parameter "m"
    .parameter "f"
    .parameter "suppressNulls"
    .parameter "suppressableValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/map/util/Annotations;",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p5, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v3, Lorg/codehaus/jackson/io/SerializedString;

    invoke-direct {v3, p3}, Lorg/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/io/SerializedString;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/introspect/AnnotatedMember;Lorg/codehaus/jackson/map/util/Annotations;Lorg/codehaus/jackson/io/SerializedString;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/JsonSerializer;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 1
    .parameter "member"
    .parameter "contextAnnotations"
    .parameter "name"
    .parameter "declaredType"
    .parameter
    .parameter "typeSer"
    .parameter "serType"
    .parameter "m"
    .parameter "f"
    .parameter "suppressNulls"
    .parameter "suppressableValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lorg/codehaus/jackson/map/util/Annotations;",
            "Lorg/codehaus/jackson/io/SerializedString;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p5, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 177
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

    .line 178
    iput-object p3, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lorg/codehaus/jackson/io/SerializedString;

    .line 179
    iput-object p4, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_declaredType:Lorg/codehaus/jackson/type/JavaType;

    .line 180
    iput-object p5, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 181
    if-nez p5, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->emptyMap()Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 182
    iput-object p6, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 183
    iput-object p7, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lorg/codehaus/jackson/type/JavaType;

    .line 184
    iput-object p8, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    .line 185
    iput-object p9, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    .line 186
    iput-boolean p10, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressNulls:Z

    .line 187
    iput-object p11, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    .line 188
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 1
    .parameter "base"

    .prologue
    .line 195
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/JsonSerializer;)V

    .line 196
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 2
    .parameter "base"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p2, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 205
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 206
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

    .line 207
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lorg/codehaus/jackson/io/SerializedString;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lorg/codehaus/jackson/io/SerializedString;

    .line 208
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_declaredType:Lorg/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_declaredType:Lorg/codehaus/jackson/type/JavaType;

    .line 209
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 210
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    .line 211
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lorg/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lorg/codehaus/jackson/type/JavaType;

    .line 212
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    .line 213
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    .line 214
    iget-boolean v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressNulls:Z

    iput-boolean v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressNulls:Z

    .line 215
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    .line 217
    iget-object v0, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method protected final _findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .parameter "map"
    .parameter
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 441
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v2, :cond_1

    .line 442
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p2}, Lorg/codehaus/jackson/type/JavaType;->forcedNarrowBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 443
    .local v1, t:Lorg/codehaus/jackson/type/JavaType;
    invoke-virtual {p1, v1, p3, p0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 448
    .end local v1           #t:Lorg/codehaus/jackson/type/JavaType;
    .local v0, result:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    :goto_0
    iget-object v2, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, v2, :cond_0

    .line 449
    iget-object v2, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 451
    :cond_0
    iget-object v2, v0, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v2

    .line 445
    .end local v0           #result:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    :cond_1
    invoke-virtual {p1, p2, p3, p0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .restart local v0       #result:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    goto :goto_0
.end method

.method protected _reportSelfReference(Ljava/lang/Object;)V
    .locals 2
    .parameter "bean"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, Lorg/codehaus/jackson/map/JsonMappingException;

    const-string v1, "Direct self-reference leading to cycle"

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "bean"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 467
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, acls:Ljava/lang/Class;,"Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, acls:Ljava/lang/Class;,"Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_contextAnnotations:Lorg/codehaus/jackson/map/util/Annotations;

    invoke-interface {v0, p1}, Lorg/codehaus/jackson/map/util/Annotations;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getGenericPropertyType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 381
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public getInternalSetting(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 299
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getMember()Lorg/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lorg/codehaus/jackson/map/introspect/AnnotatedMember;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lorg/codehaus/jackson/io/SerializedString;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getRawSerializationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lorg/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getSerializationType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getSerializedName()Lorg/codehaus/jackson/io/SerializedString;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lorg/codehaus/jackson/io/SerializedString;

    return-object v0
.end method

.method protected getSerializer()Lorg/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public getType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_declaredType:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getViews()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;

    return-object v0
.end method

.method public hasSerializer()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeInternalSetting(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, removed:Ljava/lang/Object;
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 334
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    .line 337
    .end local v0           #removed:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public serializeAsField(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 5
    .parameter "bean"
    .parameter "jgen"
    .parameter "prov"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 402
    .local v3, value:Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 403
    iget-boolean v4, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressNulls:Z

    if-nez v4, :cond_0

    .line 404
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lorg/codehaus/jackson/io/SerializedString;

    invoke-virtual {p2, v4}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V

    .line 405
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    if-ne v3, p1, :cond_2

    .line 411
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_reportSelfReference(Ljava/lang/Object;)V

    .line 413
    :cond_2
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 417
    :cond_3
    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 418
    .local v2, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v2, :cond_4

    .line 419
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 420
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 421
    .local v1, map:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 422
    if-nez v2, :cond_4

    .line 423
    invoke-virtual {p0, v1, v0, p3}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_findAndAddDynamic(Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializerProvider;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    .line 426
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #map:Lorg/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    :cond_4
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lorg/codehaus/jackson/io/SerializedString;

    invoke-virtual {p2, v4}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Lorg/codehaus/jackson/io/SerializedString;)V

    .line 427
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    if-nez v4, :cond_5

    .line 428
    invoke-virtual {v2, v3, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 430
    :cond_5
    iget-object v4, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lorg/codehaus/jackson/map/TypeSerializer;

    invoke-virtual {v2, v3, p2, p3, v4}, Lorg/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    goto :goto_0
.end method

.method public setInternalSetting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 314
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setNonTrivialBaseType(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 254
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lorg/codehaus/jackson/type/JavaType;

    .line 255
    return-void
.end method

.method public setViews([Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, views:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 480
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 482
    const-string v1, "via method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :goto_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v1, :cond_1

    .line 487
    const-string v1, ", no static serializer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :goto_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 484
    :cond_0
    const-string v1, "field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 489
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", static serializer of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public withSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, ser:Lorg/codehaus/jackson/map/JsonSerializer;,"Lorg/codehaus/jackson/map/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-eq v0, v1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BeanPropertyWriter sub-class does not override \'withSerializer()\'; needs to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lorg/codehaus/jackson/map/ser/BeanPropertyWriter;Lorg/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method
