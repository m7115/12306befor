.class public Lcom/worklight/androidgap/plugin/storage/CloseDatabaseActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.source "CloseDatabaseActionDispatcher.java"


# static fields
.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    const-string v0, "closeDatabase"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 27
    const-string v0, "options"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/CloseDatabaseActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 29
    return-void
.end method


# virtual methods
.method public dispatch(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getInstance()Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    move-result-object v0

    .line 41
    .local v0, dbManager:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
    :try_start_0
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->clearDbPath()V

    .line 42
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->clearDatabaseKey()V

    .line 44
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->isDatabaseOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->closeDatabase()V

    .line 48
    :cond_0
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-object v2

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/Throwable;
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v4, 0x17

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto :goto_0
.end method
