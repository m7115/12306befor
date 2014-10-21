.class public Lcom/worklight/androidgap/WLDroidGap;
.super Lorg/apache/cordova/DroidGap;
.source "WLDroidGap.java"

# interfaces
.implements Lcom/worklight/androidgap/WLDroidGapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;,
        Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;
    }
.end annotation


# static fields
.field private static final CLEAR_CACHE_NEXT_LOAD:Ljava/lang/String; = "com.worklight.clearCacheNextLoad"

.field private static final ENABLE_SETTINGS_FLAG:Ljava/lang/String; = "enableSettings"

.field public static final EXIT_ON_SKIN_LOADER:Ljava/lang/String; = "exitOnSkinLoader"

.field private static final NATIVE_EMPTY_APP_HTML:Ljava/lang/String; = "NativeEmptyApp.html"

.field public static final RESOURCES_CHECKSUM_PREF_KEY:Ljava/lang/String; = "wlResourcesChecksum"

.field public static final SKIN_LOADER_HTML:Ljava/lang/String; = "skinLoader.html"

.field public static final SKIN_NAME_PREF_KEY:Ljava/lang/String; = "wlSkinName"

.field public static final WL_DEFAULT_SERVER_URL:Ljava/lang/String; = "WLDefaultServerURL"

.field private static isForegound:Z

.field private static wlConfig:Lcom/worklight/common/WLConfig;


# instance fields
.field private fatalErrorOccurred:Z

.field private longPrepareTask:Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;

.field private optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/worklight/androidgap/WLDroidGap;->isForegound:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/WLDroidGap;->fatalErrorOccurred:Z

    .line 667
    return-void
.end method

.method static synthetic access$100(Lcom/worklight/androidgap/WLDroidGap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/worklight/androidgap/WLDroidGap;->testResourcesChecksum()V

    return-void
.end method

.method static synthetic access$200()Lcom/worklight/common/WLConfig;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/worklight/androidgap/WLDroidGap;->wlConfig:Lcom/worklight/common/WLConfig;

    return-object v0
.end method

.method static synthetic access$302(Lcom/worklight/androidgap/WLDroidGap;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/worklight/androidgap/WLDroidGap;->fatalErrorOccurred:Z

    return p1
.end method

.method static synthetic access$500(Lcom/worklight/androidgap/WLDroidGap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/worklight/androidgap/WLDroidGap;->doPrepareAssetsWork()V

    return-void
.end method

.method private doPrepareAssetsWork()V
    .locals 2

    .prologue
    .line 643
    new-instance v0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;

    invoke-direct {v0, p0}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;-><init>(Lcom/worklight/androidgap/WLDroidGap;)V

    #calls: Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->copyPrepackagedAssetsToLocalCopyIfNeeded()V
    invoke-static {v0}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->access$400(Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;)V

    .line 645
    const-string v0, "WLDefaultServerURL"

    invoke-static {}, Lcom/worklight/androidgap/WLDroidGap;->getWLConfig()Lcom/worklight/common/WLConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/worklight/common/WLConfig;->getDefaultRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v0, "exitOnSkinLoader"

    const-string v1, "false"

    invoke-static {p0, v0, v1}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v0, "enableSettings"

    invoke-static {}, Lcom/worklight/androidgap/WLDroidGap;->getWLConfig()Lcom/worklight/common/WLConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/worklight/common/WLConfig;->getSettingsFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/worklight/androidgap/WLDroidGap;->setForeGround(Z)V

    .line 651
    return-void
.end method

.method public static getWLConfig()Lcom/worklight/common/WLConfig;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/worklight/androidgap/WLDroidGap;->wlConfig:Lcom/worklight/common/WLConfig;

    return-object v0
.end method

.method private isClearCacheNextLoad()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    invoke-virtual {p0, v2}, Lcom/worklight/androidgap/WLDroidGap;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.worklight.clearCacheNextLoad"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isForeGround()Z
    .locals 1

    .prologue
    .line 174
    sget-boolean v0, Lcom/worklight/androidgap/WLDroidGap;->isForegound:Z

    return v0
.end method

.method private removeSessionCookies(Lorg/apache/cordova/CordovaWebView;)V
    .locals 1
    .parameter "appView"

    .prologue
    .line 258
    invoke-virtual {p1}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 259
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 260
    return-void
.end method

.method private setClearCacheNextLoad(Z)V
    .locals 2
    .parameter "clearCacheNextLoad"

    .prologue
    .line 345
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/worklight/androidgap/WLDroidGap;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 346
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.worklight.clearCacheNextLoad"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 347
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 348
    return-void
.end method

.method private static setForeGround(Z)V
    .locals 0
    .parameter "foreground"

    .prologue
    .line 178
    sput-boolean p0, Lcom/worklight/androidgap/WLDroidGap;->isForegound:Z

    .line 179
    return-void
.end method

.method private testResourcesChecksum()V
    .locals 6

    .prologue
    .line 134
    invoke-static {}, Lcom/worklight/androidgap/WLDroidGap;->getWLConfig()Lcom/worklight/common/WLConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/worklight/common/WLConfig;->getTestWebResourcesChecksumFlag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 135
    .local v1, shouldTestWebResourcesChecksum:Z
    if-nez v1, :cond_0

    .line 136
    const-string v2, "no need to check web resource integrity"

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v2, "start web resource integrity test"

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageWebRoot()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, resourcesPath:Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/worklight/common/WLUtils;->checksumTestOnResources(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    const-string v2, "Error"

    const-string v3, "The application encountered an internal error. Please uninstall the application and then re-install it."

    const-string v4, "Close"

    new-instance v5, Lcom/worklight/androidgap/WLDroidGap$1;

    invoke-direct {v5, p0}, Lcom/worklight/androidgap/WLDroidGap$1;-><init>(Lcom/worklight/androidgap/WLDroidGap;)V

    invoke-static {p0, v2, v3, v4, v5}, Lcom/worklight/common/WLUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 151
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/worklight/androidgap/WLDroidGap;->fatalErrorOccurred:Z

    goto :goto_0

    .line 153
    :cond_1
    const-string v2, "web resource integrity test: Success"

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bindBrowser(Lorg/apache/cordova/CordovaWebView;)V
    .locals 1
    .parameter "appView"

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/worklight/androidgap/WLDroidGap;->bindBrowser(Lorg/apache/cordova/CordovaWebView;Z)V

    .line 221
    return-void
.end method

.method protected bindBrowser(Lorg/apache/cordova/CordovaWebView;Z)V
    .locals 3
    .parameter "appView"
    .parameter "clearCache"

    .prologue
    .line 224
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "AnalyticsConfigurator"

    const-string v2, "com.worklight.androidgap.plugin.AnalyticsConfigurator"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "Logger"

    const-string v2, "com.worklight.androidgap.plugin.Logger"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "Utils"

    const-string v2, "com.worklight.androidgap.plugin.Utils"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "NativePage"

    const-string v2, "com.worklight.androidgap.plugin.NativePage"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "NativeBusyIndicator"

    const-string v2, "com.worklight.androidgap.plugin.BusyIndicator"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "SecurityPlugin"

    const-string v2, "com.worklight.androidgap.plugin.SecurityPlugin"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "StoragePlugin"

    const-string v2, "com.worklight.androidgap.plugin.storage.StoragePlugin"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "Push"

    const-string v2, "com.worklight.androidgap.plugin.Push"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "WebResourcesDownloader"

    const-string v2, "com.worklight.androidgap.plugin.WebResourcesDownloaderPlugin"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "NetworkDetector"

    const-string v2, "com.worklight.androidgap.plugin.NetworkDetector"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "DeviceAuth"

    const-string v2, "com.worklight.androidgap.plugin.DeviceAuthPlugin"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "WifiPlugin"

    const-string v2, "com.worklight.androidgap.plugin.WifiPlugin"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "WLGeolocationPlugin"

    const-string v2, "com.worklight.androidgap.plugin.WLGeolocationPlugin"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "ForegroundBinderPlugin"

    const-string v2, "com.worklight.androidgap.plugin.ForegroundBinderPlugin"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "WLCustomDialog"

    const-string v2, "com.worklight.androidgap.plugin.WLCustomDialog"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "NetworkStatus"

    const-string v2, "com.worklight.androidgap.plugin.WLNetworkManager"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    invoke-direct {v0, p0}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;-><init>(Lcom/worklight/androidgap/WLDroidGap;)V

    iput-object v0, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    const-string v1, "NativeOptionsMenu"

    invoke-virtual {p1, v0, v1}, Lorg/apache/cordova/CordovaWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    const-string v0, "WLCordovaSplashScreenDialog"

    invoke-virtual {p1, p0, v0}, Lorg/apache/cordova/CordovaWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    if-eqz p2, :cond_1

    .line 253
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/WLDroidGap;->removeSessionCookies(Lorg/apache/cordova/CordovaWebView;)V

    .line 255
    :cond_1
    return-void
.end method

.method public getAppWebUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "skinName"

    .prologue
    .line 387
    invoke-static {}, Lcom/worklight/androidgap/WLDroidGap;->getWLConfig()Lcom/worklight/common/WLConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/worklight/common/WLConfig;->getMainFilePath()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, mainHTMLFile:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageWebRoot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NativeEmptyApp.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    const-string v1, "NativeEmptyApp.html"

    .line 392
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/worklight/androidgap/WLDroidGap;->getWebUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getIntentDataInJSONFormat(Landroid/content/Intent;)Ljava/lang/String;
    .locals 7
    .parameter "intent"

    .prologue
    .line 283
    const-string v4, ""

    .line 284
    .local v4, json:Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 285
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 286
    .local v0, dataKey:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v2, extrasMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 288
    .local v5, key:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 290
    .end local v5           #key:Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 291
    .local v1, extrasJson:Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 293
    .end local v0           #dataKey:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #extrasJson:Lorg/json/JSONObject;
    .end local v2           #extrasMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v4
.end method

.method public getLocalStorageRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/worklight/androidgap/WLDroidGap;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalStorageWebRoot()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/www"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebMainFilePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 367
    sget-object v3, Lcom/worklight/androidgap/WLDroidGap;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v3}, Lcom/worklight/common/WLConfig;->getMainFileFromDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, mainFilePath:Ljava/lang/String;
    const-string v3, "http:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v0

    .line 379
    .end local v0           #mainFilePath:Ljava/lang/String;
    .local v1, mainFilePath:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 372
    .end local v1           #mainFilePath:Ljava/lang/String;
    .restart local v0       #mainFilePath:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 373
    const-string v3, "wlSkinName"

    invoke-static {p0, v3}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, skinName:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 375
    invoke-virtual {p0, v2}, Lcom/worklight/androidgap/WLDroidGap;->getAppWebUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 379
    .end local v0           #mainFilePath:Ljava/lang/String;
    .restart local v1       #mainFilePath:Ljava/lang/String;
    goto :goto_0

    .line 377
    .end local v1           #mainFilePath:Ljava/lang/String;
    .restart local v0       #mainFilePath:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/worklight/androidgap/WLDroidGap;->getWebUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "skinLoader.html"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageWebRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 117
    new-instance v0, Lcom/worklight/androidgap/WLWebView;

    invoke-direct {v0, p0}, Lcom/worklight/androidgap/WLWebView;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, webView:Lorg/apache/cordova/CordovaWebView;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 120
    new-instance v1, Lorg/apache/cordova/CordovaWebViewClient;

    invoke-direct {v1, p0, v0}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 124
    .local v1, webViewClient:Lorg/apache/cordova/CordovaWebViewClient;
    :goto_0
    new-instance v2, Lorg/apache/cordova/CordovaChromeClient;

    invoke-direct {v2, p0, v0}, Lorg/apache/cordova/CordovaChromeClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    invoke-super {p0, v0, v1, v2}, Lorg/apache/cordova/DroidGap;->init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaWebViewClient;Lorg/apache/cordova/CordovaChromeClient;)V

    .line 126
    return-void

    .line 122
    .end local v1           #webViewClient:Lorg/apache/cordova/CordovaWebViewClient;
    :cond_0
    new-instance v1, Lorg/apache/cordova/IceCreamCordovaWebViewClient;

    invoke-direct {v1, p0, v0}, Lorg/apache/cordova/IceCreamCordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .restart local v1       #webViewClient:Lorg/apache/cordova/CordovaWebViewClient;
    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 326
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/worklight/androidgap/WLDroidGap;->loadUrl(Ljava/lang/String;Z)V

    .line 327
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Z)V
    .locals 2
    .parameter "url"
    .parameter "clearCache"

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/worklight/androidgap/WLDroidGap;->fatalErrorOccurred:Z

    if-nez v0, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/worklight/androidgap/WLDroidGap;->isClearCacheNextLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/worklight/androidgap/WLDroidGap;->appView:Lorg/apache/cordova/CordovaWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->clearCache(Z)V

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/WLDroidGap;->setClearCacheNextLoad(Z)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/worklight/androidgap/WLDroidGap;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {p0, v0, p2}, Lcom/worklight/androidgap/WLDroidGap;->bindBrowser(Lorg/apache/cordova/CordovaWebView;Z)V

    .line 336
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 338
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 264
    sget v1, Lcom/worklight/androidgap/plugin/NativePage;->NATIVE_ACTIVITY_REQ_CODE:I

    if-ne p1, v1, :cond_1

    .line 265
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 266
    const-string v1, "NativePage returned OK result code"

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 270
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WL.NativePage.onNativePageClose("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/worklight/androidgap/WLDroidGap;->getIntentDataInJSONFormat(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, javascript:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/WLDroidGap;->sendJavascript(Ljava/lang/String;)V

    .line 275
    .end local v0           #javascript:Ljava/lang/String;
    :goto_1
    return-void

    .line 268
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Code returned from NativePage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/DroidGap;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 87
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 90
    :try_start_0
    const-string v3, "drawable"

    const-string v4, "splash"

    invoke-static {p0, v3, v4}, Lcom/worklight/common/WLUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/cordova/DroidGap;->splashscreen:I

    .line 91
    iget v3, p0, Lorg/apache/cordova/DroidGap;->splashscreen:I

    if-eqz v3, :cond_0

    .line 92
    const/16 v3, 0x4e20

    invoke-virtual {p0, v3}, Lcom/worklight/androidgap/WLDroidGap;->showSplashScreen(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/worklight/androidgap/WLDroidGap;->init()V

    .line 103
    invoke-static {p0}, Lcom/worklight/androidgap/analytics/WLAnalytics;->initializeTealeaf(Lcom/worklight/androidgap/WLDroidGap;)V

    .line 105
    new-instance v3, Lcom/worklight/common/WLConfig;

    invoke-virtual {p0}, Lcom/worklight/androidgap/WLDroidGap;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/worklight/common/WLConfig;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/worklight/androidgap/WLDroidGap;->wlConfig:Lcom/worklight/common/WLConfig;

    .line 106
    iget-object v3, p0, Lcom/worklight/androidgap/WLDroidGap;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v3}, Lorg/apache/cordova/CordovaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 107
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, ua:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Worklight/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/worklight/androidgap/WLDroidGap;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v4}, Lcom/worklight/common/WLConfig;->getPlatformVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 110
    new-instance v3, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;-><init>(Lcom/worklight/androidgap/WLDroidGap;Lcom/worklight/androidgap/WLDroidGap$1;)V

    iput-object v3, p0, Lcom/worklight/androidgap/WLDroidGap;->longPrepareTask:Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;

    .line 111
    iget-object v3, p0, Lcom/worklight/androidgap/WLDroidGap;->longPrepareTask:Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/os/Bundle;

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    return-void

    .line 94
    .end local v1           #settings:Landroid/webkit/WebSettings;
    .end local v2           #ua:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/Exception;
    iput v5, p0, Lorg/apache/cordova/DroidGap;->splashscreen:I

    .line 96
    const-string v3, "Application will not display splash screen because required icon is missing. Add splash.png icon to res/drawble folder"

    invoke-static {v3}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/WLDroidGap;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onDestroy()V

    .line 308
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->runFinalizersOnExit(Z)V

    .line 317
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 318
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 684
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onNewIntent(Landroid/content/Intent;)V

    .line 685
    const-string v2, "message"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    .line 686
    .local v0, message:Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
    if-eqz v0, :cond_0

    .line 687
    iget-object v2, p0, Lcom/worklight/androidgap/WLDroidGap;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v2, v2, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v3, "Push"

    invoke-virtual {v2, v3}, Lorg/apache/cordova/api/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/api/CordovaPlugin;

    move-result-object v1

    check-cast v1, Lcom/worklight/androidgap/plugin/Push;

    .line 688
    .local v1, pushPlugin:Lcom/worklight/androidgap/plugin/Push;
    invoke-virtual {v1, v0}, Lcom/worklight/androidgap/plugin/Push;->dispatchPending(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;)V

    .line 690
    .end local v1           #pushPlugin:Lcom/worklight/androidgap/plugin/Push;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 211
    iget-object v1, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->getItemById(I)Lcom/worklight/androidgap/plugin/WLMenuItem;

    move-result-object v0

    .line 212
    .local v0, btn:Lcom/worklight/androidgap/plugin/WLMenuItem;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/WLMenuItem;->getCallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/worklight/androidgap/WLDroidGap;->sendJavascript(Ljava/lang/String;)V

    .line 214
    const/4 v1, 0x1

    .line 216
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 166
    :try_start_0
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onPause()V

    .line 167
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/worklight/androidgap/WLDroidGap;->setForeGround(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 187
    iget-object v4, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    invoke-virtual {v4}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    move v5, v6

    .line 206
    :cond_0
    :goto_0
    return v5

    .line 189
    :cond_1
    iget-object v4, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    invoke-virtual {v4}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isInit()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    invoke-virtual {v4}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->hasChanged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 194
    iget-object v4, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    invoke-virtual {v4}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    iget-object v4, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    invoke-virtual {v4}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->getItems()Ljava/util/List;

    move-result-object v3

    .line 196
    .local v3, items:Ljava/util/List;,"Ljava/util/List<Lcom/worklight/androidgap/plugin/WLMenuItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/WLMenuItem;

    .line 197
    .local v0, button:Lcom/worklight/androidgap/plugin/WLMenuItem;
    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/WLMenuItem;->getId()I

    move-result v4

    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/WLMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v4, v6, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 198
    .local v2, item:Landroid/view/MenuItem;
    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/WLMenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    invoke-virtual {v4}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 199
    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/WLMenuItem;->getImagePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 200
    invoke-virtual {v0, p0}, Lcom/worklight/androidgap/plugin/WLMenuItem;->getImage(Lcom/worklight/androidgap/WLDroidGap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    move v4, v6

    .line 198
    goto :goto_2

    .line 203
    .end local v0           #button:Lcom/worklight/androidgap/plugin/WLMenuItem;
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_4
    iget-object v4, p0, Lcom/worklight/androidgap/WLDroidGap;->optionsMenu:Lcom/worklight/androidgap/plugin/WLOptionsMenu;

    invoke-virtual {v4}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->unsetChanged()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onResume()V

    .line 160
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/worklight/androidgap/WLDroidGap;->setForeGround(Z)V

    .line 161
    return-void
.end method

.method public onWLInitCompleted(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 640
    return-void
.end method

.method public removeSplashScreen()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 657
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->removeSplashScreen()V

    .line 658
    return-void
.end method

.method public setClearCacheNextLoad()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/WLDroidGap;->setClearCacheNextLoad(Z)V

    .line 342
    return-void
.end method
