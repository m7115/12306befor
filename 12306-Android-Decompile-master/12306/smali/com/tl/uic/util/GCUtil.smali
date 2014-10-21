.class public final Lcom/tl/uic/util/GCUtil;
.super Ljava/lang/Object;
.source "GCUtil.java"


# static fields
.field private static volatile _myInstance:Lcom/tl/uic/util/GCUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static clean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/tl/uic/util/GCUtil;->invokeCleanMethod(Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static clean(Ljava/util/HashMap;)Ljava/lang/Boolean;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap",
            "<TK;TV;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<TK;TV;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 117
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 129
    :goto_0
    return-object v3

    .line 120
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 121
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 127
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 129
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 122
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 123
    .local v0, element:Ljava/lang/Object;
    invoke-static {v0}, Lcom/tl/uic/util/GCUtil;->invokeCleanMethod(Ljava/lang/Object;)Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static clean(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p0, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .line 65
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 66
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    .line 70
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 71
    .local v0, element:Ljava/lang/Object;
    invoke-static {v0}, Lcom/tl/uic/util/GCUtil;->invokeCleanMethod(Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 69
    .end local v0           #element:Ljava/lang/Object;
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 77
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static clean(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/Boolean;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, hashMap:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 91
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 103
    :goto_0
    return-object v3

    .line 94
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 95
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 103
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 96
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, element:Ljava/lang/Object;
    invoke-static {v0}, Lcom/tl/uic/util/GCUtil;->invokeCleanMethod(Ljava/lang/Object;)Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public static getInstance()Lcom/tl/uic/util/GCUtil;
    .locals 3

    .prologue
    .line 30
    sget-object v1, Lcom/tl/uic/util/GCUtil;->_myInstance:Lcom/tl/uic/util/GCUtil;

    if-nez v1, :cond_0

    .line 31
    const-class v2, Lcom/tl/uic/util/GCUtil;

    monitor-enter v2

    .line 32
    :try_start_0
    new-instance v0, Lcom/tl/uic/util/GCUtil;

    invoke-direct {v0}, Lcom/tl/uic/util/GCUtil;-><init>()V

    .line 33
    .local v0, gcUtil:Lcom/tl/uic/util/GCUtil;
    sput-object v0, Lcom/tl/uic/util/GCUtil;->_myInstance:Lcom/tl/uic/util/GCUtil;

    .line 31
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    sget-object v1, Lcom/tl/uic/util/GCUtil;->_myInstance:Lcom/tl/uic/util/GCUtil;

    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static invokeCleanMethod(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 5
    .parameter "element"

    .prologue
    const/4 v3, 0x0

    .line 139
    if-nez p0, :cond_0

    .line 140
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 151
    :goto_0
    return-object v3

    .line 143
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "clean"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 146
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_1
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/Tealeaf;->logException(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    goto :goto_1
.end method
