.class public Lcom/worklight/androidgap/plugin/Logger;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/Logger$1;,
        Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 6
    .parameter "action"
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 73
    :try_start_0
    invoke-static {p1}, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    move-result-object v0

    .line 74
    .local v0, actionLog:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
    if-nez v0, :cond_0

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 86
    .end local v0           #actionLog:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
    :goto_0
    return v5

    .line 79
    .restart local v0       #actionLog:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
    :cond_0
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Logger;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, tag:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "true"

    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v0           #actionLog:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
    .end local v2           #tag:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed. JSON Error is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
