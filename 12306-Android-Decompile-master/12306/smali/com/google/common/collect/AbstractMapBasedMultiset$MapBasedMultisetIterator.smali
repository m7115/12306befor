.class Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapBasedMultisetIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field canRemove:Z

.field currentEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field final entryIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;>;"
        }
    .end annotation
.end field

.field occurrencesLeft:I

.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V
    .locals 1
    .parameter

    .prologue
    .line 200
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedMultisetIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    #getter for: Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    .line 202
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 206
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedMultisetIterator;"
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedMultisetIterator;"
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    .line 215
    :cond_0
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    .line 217
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 222
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.MapBasedMultisetIterator;"
    iget-boolean v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    const-string v2, "no calls to next() since the last call to remove()"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 224
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 225
    .local v0, frequency:I
    if-gtz v0, :cond_0

    .line 226
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->this$0:Lcom/google/common/collect/AbstractMapBasedMultiset;

    invoke-static {v1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->access$210(Lcom/google/common/collect/AbstractMapBasedMultiset;)J

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    .line 233
    return-void
.end method
