.class public Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.source "ChangePasswordActionDispatcher.java"


# static fields
.field private static final PARAM_NEW_PW:Ljava/lang/String; = "newPW"

.field private static final PARAM_OLD_PW:Ljava/lang/String; = "oldPW"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"

.field private static final PARAM_USERNAME:Ljava/lang/String; = "username"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 27
    const-string v0, "changePassword"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v0, "oldPW"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 34
    const-string v0, "newPW"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 36
    const-string v0, "username"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 40
    const-string v0, "options"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 42
    return-void
.end method

.method private getNewPW(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const-string v0, "newPW"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOldPW(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const-string v0, "oldPW"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserName(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    const-string v0, "username"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 66
    const/4 v3, 0x0

    .line 68
    .local v3, oldDPK:Ljava/lang/String;
    const/4 v4, 0x0

    .line 69
    .local v4, salt:Ljava/lang/String;
    const/4 v2, 0x0

    .line 73
    .local v2, username:Ljava/lang/String;
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getInstance()Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->isDatabaseOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v9, -0x32

    invoke-direct {v5, v6, v9}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    .line 106
    :goto_0
    return-object v5

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;->getNewPW(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, newPW:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;->getOldPW(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, oldPW:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;->getUserName(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->getInstance(Landroid/content/Context;)Lcom/worklight/androidgap/jsonstore/security/SecurityManager;

    move-result-object v0

    .line 88
    .local v0, manager:Lcom/worklight/androidgap/jsonstore/security/SecurityManager;
    :try_start_0
    invoke-virtual {v0, v8, v2}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->getDPK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v0, v2}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->getSalt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 101
    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->storeDPK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 106
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v9, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v5, v9, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto :goto_0

    .line 92
    :catch_0
    move-exception v7

    .line 96
    .local v7, e:Ljava/lang/Throwable;
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v9, 0x18

    invoke-direct {v5, v6, v9}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto :goto_0
.end method
