.class final enum Lcom/google/common/collect/SortedLists$Relation$1;
.super Lcom/google/common/collect/SortedLists$Relation;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/SortedLists$Relation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/SortedLists$Relation;-><init>(Ljava/lang/String;ILcom/google/common/collect/SortedLists$1;)V

    return-void
.end method


# virtual methods
.method exactMatchFound(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I
    .locals 8
    .parameter
    .parameter
    .parameter "lower"
    .parameter "index"
    .parameter "upper"
    .parameter
    .parameter "worryAboutDuplicates"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;III",
            "Ljava/util/Comparator",
            "<-TE;>;Z)I"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, list:Ljava/util/List;,"Ljava/util/List<+TE;>;"
    .local p2, e:Ljava/lang/Object;,"TE;"
    .local p6, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    sget-object v0, Lcom/google/common/collect/SortedLists$Relation$1;->FLOOR:Lcom/google/common/collect/SortedLists$Relation;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/common/collect/SortedLists$Relation;->exactMatchFound(Ljava/util/List;Ljava/lang/Object;IIILjava/util/Comparator;Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method exactMatchNotFound(Ljava/util/List;Ljava/lang/Object;ILjava/util/Comparator;)I
    .locals 1
    .parameter
    .parameter
    .parameter "higherIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+TE;>;TE;I",
            "Ljava/util/Comparator",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, list:Ljava/util/List;,"Ljava/util/List<+TE;>;"
    .local p2, e:Ljava/lang/Object;,"TE;"
    .local p4, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    add-int/lit8 v0, p3, -0x1

    return v0
.end method

.method reverse()Lcom/google/common/collect/SortedLists$Relation;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/common/collect/SortedLists$Relation$1;->HIGHER:Lcom/google/common/collect/SortedLists$Relation;

    return-object v0
.end method
