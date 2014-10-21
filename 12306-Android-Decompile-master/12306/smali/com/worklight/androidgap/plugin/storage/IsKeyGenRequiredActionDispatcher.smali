.class public Lcom/worklight/androidgap/plugin/storage/IsKeyGenRequiredActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.source "IsKeyGenRequiredActionDispatcher.java"


# static fields
.field private static final PARAM_USERNAME:Ljava/lang/String; = "username"


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 22
    const-string v0, "isKeyGenRequired"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v0, "username"

    new-array v1, v4, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const/4 v2, 0x0

    sget-object v3, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v4, v1}, Lcom/worklight/androidgap/plugin/storage/IsKeyGenRequiredActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 28
    return-void
.end method

.method private getUserName(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    const-string v0, "username"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 36
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/IsKeyGenRequiredActionDispatcher;->getUserName(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, username:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->getInstance(Landroid/content/Context;)Lcom/worklight/androidgap/jsonstore/security/SecurityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->isDPKAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 42
    .local v0, returnCode:I
    :goto_0
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v3, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    return-object v2

    .line 38
    .end local v0           #returnCode:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
