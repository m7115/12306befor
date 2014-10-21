.class final enum Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$3;
.super Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
.source "SecurityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;-><init>(Ljava/lang/String;ILcom/worklight/androidgap/plugin/SecurityPlugin$1;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;Landroid/content/Context;)Z
    .locals 3
    .parameter "args"
    .parameter "callbackCtx"
    .parameter "androidCtx"

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #calls: Lcom/worklight/androidgap/plugin/SecurityPlugin;->decrypt(Lorg/json/JSONArray;)[B
    invoke-static {p1}, Lcom/worklight/androidgap/plugin/SecurityPlugin;->access$300(Lorg/json/JSONArray;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v1}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v1, 0x1

    .line 71
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$3;->decrypt:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p2, v2}, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$3;->executeError(Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;Lorg/apache/cordova/api/CallbackContext;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
