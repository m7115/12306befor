.class Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;
.super Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftEvictableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter "hash"
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1242
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry<TK;TV;>;"
    .local p1, map:Lcom/google/common/collect/CustomConcurrentHashMap;,"Lcom/google/common/collect/CustomConcurrentHashMap<TK;TV;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p4, next:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEntry;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap;Ljava/lang/Object;ILcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V

    .line 1247
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->nullEntry()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;->nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1258
    invoke-static {}, Lcom/google/common/collect/CustomConcurrentHashMap;->nullEntry()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;->previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1243
    return-void
.end method


# virtual methods
.method public getNextEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1251
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;->nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousEvictable()Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1262
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;->previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    return-object v0
.end method

.method public setNextEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1255
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry<TK;TV;>;"
    .local p1, next:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;->nextEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1256
    return-void
.end method

.method public setPreviousEvictable(Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1266
    .local p0, this:Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry<TK;TV;>;"
    .local p1, previous:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;,"Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$SoftEvictableEntry;->previousEvictable:Lcom/google/common/collect/CustomConcurrentHashMap$ReferenceEntry;

    .line 1267
    return-void
.end method
