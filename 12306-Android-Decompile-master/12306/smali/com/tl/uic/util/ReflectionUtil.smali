.class public final Lcom/tl/uic/util/ReflectionUtil;
.super Ljava/lang/Object;
.source "ReflectionUtil.java"


# static fields
.field private static volatile _myInstance:Lcom/tl/uic/util/ReflectionUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "fromObject"
    .parameter "property"

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 44
    .local v2, object:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 45
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 50
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #object:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 47
    .restart local v2       #object:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/tl/uic/util/ReflectionUtil;
    .locals 3

    .prologue
    .line 24
    sget-object v1, Lcom/tl/uic/util/ReflectionUtil;->_myInstance:Lcom/tl/uic/util/ReflectionUtil;

    if-nez v1, :cond_0

    .line 25
    const-class v2, Lcom/tl/uic/util/ReflectionUtil;

    monitor-enter v2

    .line 26
    :try_start_0
    new-instance v0, Lcom/tl/uic/util/ReflectionUtil;

    invoke-direct {v0}, Lcom/tl/uic/util/ReflectionUtil;-><init>()V

    .line 27
    .local v0, reflectionUtil:Lcom/tl/uic/util/ReflectionUtil;
    sput-object v0, Lcom/tl/uic/util/ReflectionUtil;->_myInstance:Lcom/tl/uic/util/ReflectionUtil;

    .line 25
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    sget-object v1, Lcom/tl/uic/util/ReflectionUtil;->_myInstance:Lcom/tl/uic/util/ReflectionUtil;

    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static varargs getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter "fromObject"
    .parameter "methodName"
    .parameter "parameterTypes"

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs getStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter "fromClass"
    .parameter "methodName"
    .parameter "parameterTypes"

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v1

    .line 95
    .end local v1           #method:Ljava/lang/reflect/Method;
    .local v2, method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 90
    .end local v2           #method:Ljava/lang/reflect/Method;
    .restart local v1       #method:Ljava/lang/reflect/Method;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 91
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v2, v1

    .line 95
    .end local v1           #method:Ljava/lang/reflect/Method;
    .restart local v2       #method:Ljava/lang/reflect/Method;
    goto :goto_0

    .line 92
    .end local v2           #method:Ljava/lang/reflect/Method;
    .restart local v1       #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
