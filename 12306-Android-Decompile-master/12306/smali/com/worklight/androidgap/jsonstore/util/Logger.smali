.class public Lcom/worklight/androidgap/jsonstore/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final instances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/androidgap/jsonstore/util/Logger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/util/Logger;->instances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/worklight/androidgap/jsonstore/util/Logger;->tag:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/util/Logger;
    .locals 3
    .parameter "name"

    .prologue
    .line 29
    const-class v2, Lcom/worklight/androidgap/jsonstore/util/Logger;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/worklight/androidgap/jsonstore/util/Logger;->instances:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/jsonstore/util/Logger;

    .line 31
    .local v0, logger:Lcom/worklight/androidgap/jsonstore/util/Logger;
    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/worklight/androidgap/jsonstore/util/Logger;

    .end local v0           #logger:Lcom/worklight/androidgap/jsonstore/util/Logger;
    invoke-direct {v0, p0}, Lcom/worklight/androidgap/jsonstore/util/Logger;-><init>(Ljava/lang/String;)V

    .line 34
    .restart local v0       #logger:Lcom/worklight/androidgap/jsonstore/util/Logger;
    sget-object v1, Lcom/worklight/androidgap/jsonstore/util/Logger;->instances:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit v2

    return-object v0

    .line 29
    .end local v0           #logger:Lcom/worklight/androidgap/jsonstore/util/Logger;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public isLoggable(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public logDebug(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "error"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "error"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    return-void
.end method

.method public logInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "error"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    return-void
.end method

.method public logWarning(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public logWarning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "message"
    .parameter "error"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/util/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    return-void
.end method
