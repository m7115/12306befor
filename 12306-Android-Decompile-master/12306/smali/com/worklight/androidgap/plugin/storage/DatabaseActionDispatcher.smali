.class public abstract Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.source "DatabaseActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$1;,
        Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;,
        Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;,
        Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;
    }
.end annotation


# static fields
.field private static final PARAM_DBNAME:Ljava/lang/String; = "dbName"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 31
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v0, "dbName"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const/4 v2, 0x0

    sget-object v3, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 37
    return-void
.end method


# virtual methods
.method public dispatch(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;-><init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$1;)V

    .line 47
    .local v0, dbContext:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getInstance()Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->isDatabaseOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v3, -0x32

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    .line 56
    :goto_0
    return-object v1

    .line 54
    :cond_0
    #calls: Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->initialize()V
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->access$100(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;->dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract dispatch(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
