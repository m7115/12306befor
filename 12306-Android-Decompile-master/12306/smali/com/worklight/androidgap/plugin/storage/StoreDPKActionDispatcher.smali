.class public Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.source "StoreDPKActionDispatcher.java"


# static fields
.field private static final PARAM_CBK_CLEAR:Ljava/lang/String; = "cbkClear"

.field private static final PARAM_DPK_CLEAR:Ljava/lang/String; = "dpkClear"

.field private static final PARAM_LOCALKEYGEN:Ljava/lang/String; = "localKeyGen"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"

.field private static final PARAM_SALT:Ljava/lang/String; = "salt"

.field private static final PARAM_USERNAME:Ljava/lang/String; = "username"


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 27
    const-string v0, "storeDPK"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v0, "dpkClear"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 32
    const-string v0, "cbkClear"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 33
    const-string v0, "salt"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 34
    const-string v0, "username"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 35
    const-string v0, "localKeyGen"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->BOOLEAN:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v3, v1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 38
    const-string v0, "options"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v4, v1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 39
    return-void
.end method

.method private getCBKClear(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const-string v0, "cbkClear"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDPKClear(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const-string v0, "dpkClear"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocalKeyGen(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/Boolean;
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const-string v0, "localKeyGen"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getBooleanParameter(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private getSalt(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const-string v0, "salt"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserName(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const-string v0, "username"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatch(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->getCBKClear(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, cbkClear:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->getDPKClear(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, dpkClear:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->getSalt(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, salt:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->getUserName(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, username:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;->getLocalKeyGen(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/Boolean;

    move-result-object v7

    .line 71
    .local v7, localKeyGen:Ljava/lang/Boolean;
    invoke-virtual {p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->getInstance(Landroid/content/Context;)Lcom/worklight/androidgap/jsonstore/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->storeDPK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 78
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v6, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    return-object v0
.end method
