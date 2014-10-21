.class Lorg/codehaus/jackson/map/ObjectMapper$1;
.super Ljava/lang/Object;
.source "ObjectMapper.java"

# interfaces
.implements Lorg/codehaus/jackson/map/Module$SetupContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codehaus/jackson/map/ObjectMapper;->registerModule(Lorg/codehaus/jackson/map/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codehaus/jackson/map/ObjectMapper;

.field final synthetic val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;


# direct methods
.method constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;Lorg/codehaus/jackson/map/ObjectMapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->this$0:Lorg/codehaus/jackson/map/ObjectMapper;

    iput-object p2, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAbstractTypeResolver(Lorg/codehaus/jackson/map/AbstractTypeResolver;)V
    .locals 2
    .parameter "resolver"

    .prologue
    .line 491
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/DeserializerProvider;->withAbstractTypeResolver(Lorg/codehaus/jackson/map/AbstractTypeResolver;)Lorg/codehaus/jackson/map/DeserializerProvider;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    .line 492
    return-void
.end method

.method public addBeanDeserializerModifier(Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;)V
    .locals 2
    .parameter "modifier"

    .prologue
    .line 486
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/DeserializerProvider;->withDeserializerModifier(Lorg/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lorg/codehaus/jackson/map/DeserializerProvider;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    .line 487
    return-void
.end method

.method public addBeanSerializerModifier(Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;)V
    .locals 2
    .parameter "modifier"

    .prologue
    .line 481
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/SerializerFactory;->withSerializerModifier(Lorg/codehaus/jackson/map/ser/BeanSerializerModifier;)Lorg/codehaus/jackson/map/SerializerFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 482
    return-void
.end method

.method public addDeserializers(Lorg/codehaus/jackson/map/Deserializers;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 461
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/DeserializerProvider;->withAdditionalDeserializers(Lorg/codehaus/jackson/map/Deserializers;)Lorg/codehaus/jackson/map/DeserializerProvider;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    .line 462
    return-void
.end method

.method public addKeyDeserializers(Lorg/codehaus/jackson/map/KeyDeserializers;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 466
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/DeserializerProvider;->withAdditionalKeyDeserializers(Lorg/codehaus/jackson/map/KeyDeserializers;)Lorg/codehaus/jackson/map/DeserializerProvider;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lorg/codehaus/jackson/map/DeserializerProvider;

    .line 467
    return-void
.end method

.method public addKeySerializers(Lorg/codehaus/jackson/map/Serializers;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 476
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/SerializerFactory;->withAdditionalKeySerializers(Lorg/codehaus/jackson/map/Serializers;)Lorg/codehaus/jackson/map/SerializerFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 477
    return-void
.end method

.method public addSerializers(Lorg/codehaus/jackson/map/Serializers;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 471
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v1, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/SerializerFactory;->withAdditionalSerializers(Lorg/codehaus/jackson/map/Serializers;)Lorg/codehaus/jackson/map/SerializerFactory;

    move-result-object v1

    iput-object v1, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lorg/codehaus/jackson/map/SerializerFactory;

    .line 472
    return-void
.end method

.method public addTypeModifier(Lorg/codehaus/jackson/map/type/TypeModifier;)V
    .locals 2
    .parameter "modifier"

    .prologue
    .line 496
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v1, Lorg/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lorg/codehaus/jackson/map/type/TypeFactory;

    .line 497
    .local v0, f:Lorg/codehaus/jackson/map/type/TypeFactory;
    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->withModifier(Lorg/codehaus/jackson/map/type/TypeModifier;)Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setTypeFactory(Lorg/codehaus/jackson/map/type/TypeFactory;)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 499
    return-void
.end method

.method public appendAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 1
    .parameter "ai"

    .prologue
    .line 509
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->appendAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)V

    .line 510
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->appendAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)V

    .line 511
    return-void
.end method

.method public getDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->getDeserializationConfig()Lorg/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getMapperVersion()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->this$0:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->version()Lorg/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public getSerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->getSerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public insertAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 1
    .parameter "ai"

    .prologue
    .line 503
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/DeserializationConfig;->insertAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)V

    .line 504
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/SerializationConfig;->insertAnnotationIntrospector(Lorg/codehaus/jackson/map/AnnotationIntrospector;)V

    .line 505
    return-void
.end method

.method public setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, target:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, mixinSource:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lorg/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/DeserializationConfig;->addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 516
    iget-object v0, p0, Lorg/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lorg/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v0, Lorg/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lorg/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/SerializationConfig;->addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 517
    return-void
.end method
