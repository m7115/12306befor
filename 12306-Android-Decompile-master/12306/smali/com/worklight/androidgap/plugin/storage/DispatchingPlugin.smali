.class public abstract Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "DispatchingPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$1;,
        Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;,
        Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;
    }
.end annotation


# static fields
.field private static final executor:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;

.field private static final logger:Lcom/worklight/androidgap/jsonstore/util/Logger;


# instance fields
.field private dispatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;-><init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$1;)V

    sput-object v0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->executor:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;

    .line 35
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->getCoreLogger()Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->dispatchers:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method static synthetic access$200()Lcom/worklight/androidgap/jsonstore/util/Logger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    return-object v0
.end method

.method private doDispatch(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 8
    .parameter "action"
    .parameter "args"
    .parameter "callbackContext"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->dispatchers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;

    .line 67
    .local v2, dispatcher:Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;
    sget-object v0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatching action \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 74
    :cond_0
    if-nez v2, :cond_1

    .line 75
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to dispatch action \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 79
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    .line 84
    :cond_1
    sget-object v7, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->executor:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;

    new-instance v0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;

    iget-object v4, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;-><init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;Lorg/json/JSONArray;Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/api/CallbackContext;Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$1;)V

    invoke-virtual {v7, v0}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 87
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V
    .locals 2
    .parameter "dispatcher"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->dispatchers:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 3
    .parameter "action"
    .parameter "rawArgs"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 53
    .local v0, args:Lorg/json/JSONArray;
    :try_start_0
    invoke-static {p2}, Lcom/worklight/androidgap/jsonstore/util/jackson/JsonOrgModule;->deserializeJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 60
    invoke-direct {p0, p1, v0, p3}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->doDispatch(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v2

    return v2

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, e:Ljava/lang/Throwable;
    new-instance v2, Lorg/json/JSONException;

    invoke-direct {v2, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
