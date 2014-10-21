.class public Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;
.super Ljava/lang/Object;
.source "JsonstoreUtil.java"


# static fields
.field private static final coreLogger:Lcom/worklight/androidgap/jsonstore/util/Logger;

.field private static final dbLogger:Lcom/worklight/androidgap/jsonstore/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "jsonstore-core"

    invoke-static {v0}, Lcom/worklight/androidgap/jsonstore/util/Logger;->getLogger(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->coreLogger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    .line 22
    const-string v0, "jsonstore-db"

    invoke-static {v0}, Lcom/worklight/androidgap/jsonstore/util/Logger;->getLogger(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->dbLogger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "pattern"
    .parameter "args"

    .prologue
    .line 36
    invoke-static {p0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCoreLogger()Lcom/worklight/androidgap/jsonstore/util/Logger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->coreLogger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    return-object v0
.end method

.method public static getDatabaseLogger()Lcom/worklight/androidgap/jsonstore/util/Logger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->dbLogger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    return-object v0
.end method

.method public static splitArray([I)Ljava/util/List;
    .locals 7
    .parameter "arr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x2ee

    .line 41
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 42
    .local v2, list:Ljava/util/List;,"Ljava/util/List<[I>;"
    const/16 v0, 0x2ee

    .line 43
    .local v0, CHUNK_SIZE:I
    const/4 v4, 0x0

    .line 44
    .local v4, start:I
    array-length v1, p0

    .line 45
    .local v1, count:I
    if-gt v1, v6, :cond_1

    .line 46
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-object v2

    .line 48
    :cond_1
    :goto_0
    if-lez v1, :cond_0

    .line 49
    array-length v5, p0

    sub-int/2addr v5, v4

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 50
    .local v3, numToCopy:I
    add-int v5, v4, v3

    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit16 v4, v4, 0x2ee

    .line 52
    add-int/lit16 v1, v1, -0x2ee

    .line 53
    goto :goto_0
.end method
