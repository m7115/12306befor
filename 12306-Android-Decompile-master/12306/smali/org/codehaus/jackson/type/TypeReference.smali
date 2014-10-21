.class public Lorg/codehaus/jackson/type/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final genericType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    .local p0, this:Lorg/codehaus/jackson/type/TypeReference;,"Lorg/codehaus/jackson/type/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 17
    .local v0, superClassType:Ljava/lang/reflect/Type;
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0           #superClassType:Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/codehaus/jackson/type/TypeReference;->genericType:Ljava/lang/reflect/Type;

    .line 18
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 30
    .local p0, this:Lorg/codehaus/jackson/type/TypeReference;,"Lorg/codehaus/jackson/type/TypeReference<TT;>;"
    iget-object v0, p0, Lorg/codehaus/jackson/type/TypeReference;->genericType:Ljava/lang/reflect/Type;

    return-object v0
.end method
