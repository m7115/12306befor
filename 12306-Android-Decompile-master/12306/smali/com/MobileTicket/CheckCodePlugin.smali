.class public Lcom/MobileTicket/CheckCodePlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "CheckCodePlugin.java"


# static fields
.field private static final GET_ACTION:Ljava/lang/String; = "getcheckcode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 5
    .parameter "action"
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 17
    const-string v4, "getcheckcode"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, timeStamp:Ljava/lang/String;
    const-string v4, ""

    invoke-static {v4, v2}, Lcom/MobileTicket/CheckCodeUtil;->checkcode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, code:Ljava/lang/String;
    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const/4 v3, 0x1

    .line 31
    .end local v0           #code:Ljava/lang/String;
    .end local v2           #timeStamp:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, e:Lorg/json/JSONException;
    const-string v4, "Failed to parse parameters"

    invoke-virtual {p3, v4}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
