.class public Lcom/worklight/androidgap/plugin/Utils;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/Utils$4;,
        Lcom/worklight/androidgap/plugin/Utils$ACTION;
    }
.end annotation


# static fields
.field private static final MARKET_ANDROID_WEB_URL:Ljava/lang/String; = "https://market.android.com/"

.field private static final MARKET_URL_PREFIX:Ljava/lang/String; = "market://"

.field private static final RESULT_ERROR:Ljava/lang/String; = "result:error"

.field private static final RESULT_HEIGHT:Ljava/lang/String; = "height"

.field private static final RESULT_WIDTH:Ljava/lang/String; = "width"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 49
    return-void
.end method

.method private callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 2
    .parameter "result"
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    .line 135
    const-string v0, "result:error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v0}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 140
    :goto_0
    return v1

    .line 139
    :cond_0
    invoke-virtual {p2, p1}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private clearHistory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/worklight/androidgap/plugin/Utils$2;

    invoke-direct {v1, p0}, Lcom/worklight/androidgap/plugin/Utils$2;-><init>(Lcom/worklight/androidgap/plugin/Utils;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    sget-object v0, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v0}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private clearSeassionCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 179
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 180
    sget-object v0, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v0}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyToClipboard(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "txt"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 172
    .local v0, clipboardManager:Landroid/text/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copied text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 174
    const-string v1, "The text was sucessfully copied."

    invoke-direct {p0, v1}, Lcom/worklight/androidgap/plugin/Utils;->showToast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getInitParamaters(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 7
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 195
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 196
    :cond_0
    const/4 v2, 0x0

    .line 205
    :goto_0
    return-object v2

    .line 198
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 199
    .local v2, result:Lorg/json/JSONObject;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, params:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 201
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, val:Ljava/lang/String;
    aget-object v4, v1, v0

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    .end local v3           #val:Ljava/lang/String;
    :cond_2
    const-string v4, "freeSpace"

    invoke-static {}, Lcom/worklight/common/WLUtils;->getFreeSpaceOnDevice()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private getScreenHeight()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 243
    .local v0, display:Landroid/view/Display;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 244
    .local v1, result:Lorg/json/JSONObject;
    const-string v2, "height"

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    return-object v1
.end method

.method private getScreenSize()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 250
    .local v0, display:Landroid/view/Display;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .local v1, result:Lorg/json/JSONObject;
    const-string v2, "height"

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 252
    const-string v2, "width"

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    return-object v1
.end method

.method private getScreenWidth()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 236
    .local v0, display:Landroid/view/Display;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 237
    .local v1, result:Lorg/json/JSONObject;
    const-string v2, "width"

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 238
    return-object v1
.end method

.method private loadSkin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "skinId"
    .parameter "htmlFile"

    .prologue
    .line 271
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/WLDroidGap;

    .line 272
    .local v0, activity:Lcom/worklight/androidgap/WLDroidGap;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageWebRoot()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, skinDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"default\" skin will be used, because skin named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not found. Add a skin or change android/js/skinLoader.js to return existing skin."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/worklight/common/WLUtils;->warning(Ljava/lang/String;)V

    .line 276
    const-string p1, "default"

    .line 278
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/worklight/androidgap/WLDroidGap;->getWebUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, url:Ljava/lang/String;
    new-instance v3, Lcom/worklight/androidgap/plugin/Utils$3;

    invoke-direct {v3, p0, v0, v2}, Lcom/worklight/androidgap/plugin/Utils$3;-><init>(Lcom/worklight/androidgap/plugin/Utils;Lcom/worklight/androidgap/WLDroidGap;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/worklight/androidgap/WLDroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method private openURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    const/4 v6, -0x1

    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, myIntent:Landroid/content/Intent;
    :try_start_0
    const-string v4, "market://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v6, :cond_0

    .line 212
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .end local v1           #myIntent:Landroid/content/Intent;
    .local v2, myIntent:Landroid/content/Intent;
    move-object v1, v2

    .line 217
    .end local v2           #myIntent:Landroid/content/Intent;
    .restart local v1       #myIntent:Landroid/content/Intent;
    :goto_0
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 218
    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v4}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;

    move-result-object v4

    .line 231
    :goto_1
    return-object v4

    .line 214
    :cond_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 215
    .local v3, urlParam:Ljava/net/URL;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #myIntent:Landroid/content/Intent;
    .restart local v2       #myIntent:Landroid/content/Intent;
    move-object v1, v2

    .end local v2           #myIntent:Landroid/content/Intent;
    .restart local v1       #myIntent:Landroid/content/Intent;
    goto :goto_0

    .line 219
    .end local v3           #urlParam:Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WL.App.openURL failed to open web page with URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", because of incorrect URL format."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 231
    .end local v0           #e:Ljava/net/MalformedURLException;
    :goto_2
    const-string v4, "result:error"

    goto :goto_1

    .line 221
    :catch_1
    move-exception v0

    .line 222
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "market://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v6, :cond_1

    .line 224
    new-instance v1, Landroid/content/Intent;

    .end local v1           #myIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://"

    const-string v6, "https://market.android.com/"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    .restart local v1       #myIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 226
    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v4}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 228
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WL.App.openURL failed to open web page with URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", because of incorrect URL format."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private showToast(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "txt"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 165
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 166
    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v1}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private webViewReload()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/worklight/androidgap/plugin/Utils$1;

    invoke-direct {v1, p0}, Lcom/worklight/androidgap/plugin/Utils$1;-><init>(Lcom/worklight/androidgap/plugin/Utils;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    sget-object v0, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v0}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 5
    .parameter "action"
    .parameter "args"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 65
    invoke-static {p1}, Lcom/worklight/androidgap/plugin/Utils$ACTION;->fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/Utils$ACTION;

    move-result-object v0

    .line 66
    .local v0, actionE:Lcom/worklight/androidgap/plugin/Utils$ACTION;
    if-eqz v0, :cond_0

    .line 67
    sget-object v2, Lcom/worklight/androidgap/plugin/Utils$4;->$SwitchMap$com$worklight$androidgap$plugin$Utils$ACTION:[I

    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/Utils$ACTION;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 130
    :goto_0
    return v1

    .line 69
    :pswitch_0
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v1}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/Utils;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/worklight/androidgap/plugin/Utils;->loadSkin(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v1}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/Utils;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto :goto_0

    .line 81
    :pswitch_3
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Utils;->getScreenHeight()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 85
    :pswitch_4
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Utils;->getScreenWidth()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 89
    :pswitch_5
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Utils;->getScreenSize()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 93
    :pswitch_6
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/worklight/androidgap/plugin/Utils;->openURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/Utils;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto :goto_0

    .line 96
    :pswitch_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/Utils;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto :goto_0

    .line 99
    :pswitch_8
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Utils;->clearSeassionCookie()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/Utils;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto :goto_0

    .line 102
    :pswitch_9
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/worklight/androidgap/plugin/Utils;->copyToClipboard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/Utils;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto/16 :goto_0

    .line 105
    :pswitch_a
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/worklight/androidgap/plugin/Utils;->showToast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/Utils;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto/16 :goto_0

    .line 108
    :pswitch_b
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Utils;->clearHistory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/Utils;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto/16 :goto_0

    .line 111
    :pswitch_c
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Utils;->webViewReload()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/Utils;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto/16 :goto_0

    .line 114
    :pswitch_d
    invoke-static {}, Lcom/worklight/common/WLUtils;->getFreeSpaceOnDevice()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/Utils;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto/16 :goto_0

    .line 117
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/worklight/androidgap/plugin/Utils;->getInitParamaters(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 121
    :pswitch_f
    invoke-virtual {p0}, Lcom/worklight/androidgap/plugin/Utils;->reloadApp()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/Utils;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto/16 :goto_0

    .line 129
    :cond_0
    const-string v2, "Null action"

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method reloadApp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Utils;->webView:Lorg/apache/cordova/CordovaWebView;

    iget-object v1, v1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v2, "NativeBusyIndicator"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/api/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/api/CordovaPlugin;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/BusyIndicator;

    .line 186
    .local v0, busyIndicator:Lcom/worklight/androidgap/plugin/BusyIndicator;
    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/BusyIndicator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/BusyIndicator;->hide()V

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Utils;->clearSeassionCookie()Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "exitOnSkinLoader"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/Utils;->webViewReload()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
