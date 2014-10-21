.class Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;
.super Ljava/lang/Object;
.source "DispatchingPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionDispatcherRunnable"
.end annotation


# instance fields
.field private args:Lorg/json/JSONArray;

.field private callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field private context:Lorg/apache/cordova/api/CordovaInterface;

.field private dispatcher:Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;


# direct methods
.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;Lorg/json/JSONArray;Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0
    .parameter
    .parameter "dispatcher"
    .parameter "args"
    .parameter "context"
    .parameter "callbackContext"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->this$0:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->args:Lorg/json/JSONArray;

    .line 103
    iput-object p5, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 104
    iput-object p4, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->context:Lorg/apache/cordova/api/CordovaInterface;

    .line 105
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->dispatcher:Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;Lorg/json/JSONArray;Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/api/CallbackContext;Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;-><init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;Lorg/json/JSONArray;Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/api/CallbackContext;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 113
    .local v1, result:Lorg/apache/cordova/api/PluginResult;
    :try_start_0
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->dispatcher:Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;

    iget-object v3, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->context:Lorg/apache/cordova/api/CordovaInterface;

    iget-object v4, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->args:Lorg/json/JSONArray;

    invoke-interface {v2, v3, v4}, Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;->dispatch(Lorg/apache/cordova/api/CordovaInterface;Lorg/json/JSONArray;)Lorg/apache/cordova/api/PluginResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v2, v1}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 128
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Throwable;
    invoke-static {}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->access$200()Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-static {}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;->access$200()Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error while dispatching action \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$ActionDispatcherRunnable;->dispatcher:Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;

    invoke-interface {v4}, Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :cond_0
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    .end local v1           #result:Lorg/apache/cordova/api/PluginResult;
    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .restart local v1       #result:Lorg/apache/cordova/api/PluginResult;
    goto :goto_0
.end method
