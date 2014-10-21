.class public Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "AnalyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final wlConfig:Lcom/worklight/common/WLConfig;


# direct methods
.method public constructor <init>(Lcom/worklight/common/WLConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 32
    iput-object p1, p0, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;->wlConfig:Lcom/worklight/common/WLConfig;

    .line 33
    return-void
.end method


# virtual methods
.method public setDefaultUncaughtExceptionHandler()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 65
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .parameter "t"
    .parameter "e"

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, context:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "appName"

    iget-object v3, p0, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v3}, Lcom/worklight/common/WLConfig;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v2, "timestamp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v2, "environment"

    iget-object v3, p0, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v3}, Lcom/worklight/common/WLConfig;->getWLEnvironment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v2, "appVersion"

    iget-object v3, p0, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v3}, Lcom/worklight/common/WLConfig;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v2, "exceptionType"

    const-string v3, "UncaughtException"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :try_start_0
    const-string v2, "com.tl.uic.Tealeaf"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "logException"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Throwable;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/util/HashMap;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 60
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, e2:Ljava/lang/Throwable;
    const-string v2, "AnalyticsUncaughtExceptionHandler"

    const-string v3, "There was an error logging the exception on Tealeaf with the WL context."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    .end local v1           #e2:Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    goto :goto_0
.end method
