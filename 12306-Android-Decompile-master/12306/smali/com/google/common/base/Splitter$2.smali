.class final Lcom/google/common/base/Splitter$2;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separator:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;
    .locals 1
    .parameter "splitter"
    .parameter "toSplit"

    .prologue
    .line 168
    new-instance v0, Lcom/google/common/base/Splitter$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/Splitter$2$1;-><init>(Lcom/google/common/base/Splitter$2;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$2;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;

    move-result-object v0

    return-object v0
.end method
