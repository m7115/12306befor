.class Lcom/google/common/collect/AbstractMultimap$AsMap;
.super Ljava/util/AbstractMap;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;,
        Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field final transient submap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1377
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap;"
    .local p2, submap:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1378
    iput-object p2, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->submap:Ljava/util/Map;

    .line 1379
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1391
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1384
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->entrySet:Ljava/util/Set;

    .line 1385
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;-><init>(Lcom/google/common/collect/AbstractMultimap$AsMap;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1422
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap;"
    if-eq p0, p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1370
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$AsMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1395
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-static {v2, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1396
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 1397
    const/4 v2, 0x0

    .line 1401
    :goto_0
    return-object v2

    .line 1400
    :cond_0
    move-object v1, p1

    .line 1401
    .local v1, k:Ljava/lang/Object;,"TK;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    #calls: Lcom/google/common/collect/AbstractMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    invoke-static {v2, v1, v0}, Lcom/google/common/collect/AbstractMultimap;->access$1300(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1426
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1405
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1370
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$AsMap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1409
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1410
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 1411
    const/4 v1, 0x0

    .line 1418
    :goto_0
    return-object v1

    .line 1414
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {v2}, Lcom/google/common/collect/AbstractMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v1

    .line 1415
    .local v1, output:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1416
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 1417
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1430
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
