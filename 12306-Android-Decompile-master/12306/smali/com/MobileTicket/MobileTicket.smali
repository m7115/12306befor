.class public Lcom/MobileTicket/MobileTicket;
.super Lcom/worklight/androidgap/WLDroidGap;
.source "MobileTicket.java"


# static fields
.field public static final HONEYCOMB:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/worklight/androidgap/WLDroidGap;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindBrowser(Lorg/apache/cordova/CordovaWebView;Z)V
    .locals 3
    .parameter "appView"
    .parameter "clearCache"

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/worklight/androidgap/WLDroidGap;->bindBrowser(Lorg/apache/cordova/CordovaWebView;Z)V

    .line 53
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "WebResourcesDownloader"

    const-string v2, "com.worklight.androidgap.plugin.SSLWebResourcesDownloaderPlugin"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    const-string v1, "NativeBusyIndicator"

    const-string v2, "com.worklight.androidgap.plugin.MyBusyIndicator"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/worklight/androidgap/SSLWLWebView;

    invoke-direct {v0, p0}, Lcom/worklight/androidgap/SSLWLWebView;-><init>(Landroid/content/Context;)V

    .line 33
    .local v0, webView:Lorg/apache/cordova/CordovaWebView;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 34
    new-instance v1, Lorg/apache/cordova/CordovaWebViewClient;

    invoke-direct {v1, p0, v0}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 38
    .local v1, webViewClient:Lorg/apache/cordova/CordovaWebViewClient;
    :goto_0
    new-instance v2, Lorg/apache/cordova/CordovaChromeClient;

    invoke-direct {v2, p0, v0}, Lorg/apache/cordova/CordovaChromeClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    invoke-super {p0, v0, v1, v2}, Lcom/worklight/androidgap/WLDroidGap;->init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaWebViewClient;Lorg/apache/cordova/CordovaChromeClient;)V

    .line 39
    return-void

    .line 36
    .end local v1           #webViewClient:Lorg/apache/cordova/CordovaWebViewClient;
    :cond_0
    new-instance v1, Lorg/apache/cordova/IceCreamCordovaWebViewClient;

    invoke-direct {v1, p0, v0}, Lorg/apache/cordova/IceCreamCordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .restart local v1       #webViewClient:Lorg/apache/cordova/CordovaWebViewClient;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/worklight/androidgap/WLDroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/worklight/androidgap/WLDroidGap;->onRestart()V

    .line 43
    invoke-static {}, Lcom/MobileTicket/WebPayActivity;->isCallJSFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/worklight/androidgap/WLDroidGap;->appView:Lorg/apache/cordova/CordovaWebView;

    const-string v1, "javascript:orderComplete()"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/MobileTicket/WebPayActivity;->setCallJSFlag(Z)V

    .line 47
    :cond_0
    return-void
.end method

.method public onWLInitCompleted(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 24
    const-string v0, "splashscreen"

    const v1, 0x7f020009

    invoke-super {p0, v0, v1}, Lcom/worklight/androidgap/WLDroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 25
    invoke-virtual {p0}, Lcom/MobileTicket/MobileTicket;->getWebMainFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/worklight/androidgap/WLDroidGap;->loadUrl(Ljava/lang/String;)V

    .line 27
    return-void
.end method
