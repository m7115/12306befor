.class public Lcom/worklight/androidgap/plugin/storage/DestroyDBFileAndKeychainActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.source "DestroyDBFileAndKeychainActionDispatcher.java"


# static fields
.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 24
    const-string v0, "destroyDbFileAndKeychain"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v0, "options"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/DestroyDBFileAndKeychainActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 30
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
    .line 37
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getInstance()Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    move-result-object v0

    .line 42
    .local v0, dbManager:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
    invoke-virtual {p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->destroyKeychain(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->destroyPreferences(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->clearDbPath()V

    .line 45
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->clearDatabaseKey()V

    .line 49
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->isDatabaseOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->closeDatabase()V

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->destroyDatabase(Landroid/content/Context;)I

    move-result v1

    .line 56
    .local v1, result:I
    if-nez v1, :cond_1

    .line 60
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    .line 66
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v4, 0x19

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto :goto_0
.end method
