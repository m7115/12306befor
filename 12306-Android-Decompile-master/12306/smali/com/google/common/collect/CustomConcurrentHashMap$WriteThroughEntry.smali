.class final Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;
.super Lcom/google/common/collect/AbstractMapEntry;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 3555
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.WriteThroughEntry;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 3556
    iput-object p2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->key:Ljava/lang/Object;

    .line 3557
    iput-object p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->value:Ljava/lang/Object;

    .line 3558
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.WriteThroughEntry;"
    const/4 v1, 0x0

    .line 3570
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 3571
    check-cast v0, Ljava/util/Map$Entry;

    .line 3572
    .local v0, that:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 3575
    .end local v0           #that:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    :cond_0
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3561
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.WriteThroughEntry;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3565
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.WriteThroughEntry;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 3580
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.WriteThroughEntry;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3584
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>.WriteThroughEntry;"
    .local p1, newValue:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap;

    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3585
    .local v0, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$WriteThroughEntry;->value:Ljava/lang/Object;

    .line 3586
    return-object v0
.end method
