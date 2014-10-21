.class public Lcom/worklight/androidgap/SSLWLWebView;
.super Lorg/apache/cordova/CordovaWebView;
.source "SSLWLWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaWebView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/worklight/androidgap/SSLWLWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 33
    .local v1, settings:Landroid/webkit/WebSettings;
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 34
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "database"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, databasePath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 53
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaWebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    :sswitch_0
    return v1

    .line 48
    :sswitch_1
    iget-object v2, p0, Lcom/worklight/androidgap/SSLWLWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v3, "WebResourcesDownloader"

    invoke-virtual {v2, v3}, Lorg/apache/cordova/api/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/api/CordovaPlugin;

    move-result-object v0

    .line 49
    .local v0, plugin:Lorg/apache/cordova/api/CordovaPlugin;
    check-cast v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;

    .end local v0           #plugin:Lorg/apache/cordova/api/CordovaPlugin;
    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->isUpdating()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method
