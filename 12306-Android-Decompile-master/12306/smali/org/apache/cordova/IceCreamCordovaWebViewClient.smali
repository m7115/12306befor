.class public Lorg/apache/cordova/IceCreamCordovaWebViewClient;
.super Lorg/apache/cordova/CordovaWebViewClient;
.source "IceCreamCordovaWebViewClient.java"


# direct methods
.method public constructor <init>(Lorg/apache/cordova/api/CordovaInterface;)V
    .locals 0
    .parameter "cordova"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0
    .parameter "cordova"
    .parameter "view"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 42
    return-void
.end method

.method private generateWebResourceResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 11
    .parameter "url"

    .prologue
    const/4 v10, 0x0

    .line 71
    const-string v0, "file:///android_asset/"

    .line 72
    .local v0, ANDROID_ASSET:Ljava/lang/String;
    const-string v8, "file:///android_asset/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 73
    move-object v4, p1

    .line 74
    .local v4, niceUrl:Ljava/lang/String;
    const-string v8, "file:///android_asset/"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    const-string v8, "?"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 76
    const-string v8, "\\?"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v4, v8, v10

    .line 83
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 84
    .local v3, mimetype:Ljava/lang/String;
    const-string v8, ".html"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 85
    const-string v3, "text/html"

    .line 89
    :cond_1
    :try_start_0
    iget-object v8, p0, Lorg/apache/cordova/IceCreamCordovaWebViewClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 90
    .local v1, assets:Landroid/content/res/AssetManager;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 91
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v1, v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v6

    .line 92
    .local v6, stream:Ljava/io/InputStream;
    new-instance v5, Landroid/webkit/WebResourceResponse;

    const-string v8, "UTF-8"

    invoke-direct {v5, v3, v8, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1           #assets:Landroid/content/res/AssetManager;
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #niceUrl:Ljava/lang/String;
    .end local v6           #stream:Ljava/io/InputStream;
    .end local v7           #uri:Landroid/net/Uri;
    :goto_1
    return-object v5

    .line 78
    .restart local v4       #niceUrl:Ljava/lang/String;
    :cond_2
    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 80
    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v4, v8, v10

    goto :goto_0

    .line 94
    .restart local v3       #mimetype:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 95
    .local v2, e:Ljava/io/IOException;
    const-string v8, "generateWebResourceResponse"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #niceUrl:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getWhitelistResponse()Landroid/webkit/WebResourceResponse;
    .locals 5

    .prologue
    .line 65
    const-string v1, ""

    .line 66
    .local v1, empty:Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 67
    .local v0, data:Ljava/io/ByteArrayInputStream;
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string v3, "text/plain"

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v2
.end method

.method private static needsIceCreamSpaceInAssetUrlFix(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 102
    const-string v1, "%20"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return v0

    .line 106
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 109
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 49
    .local v0, ret:Landroid/webkit/WebResourceResponse;
    invoke-static {p2}, Lorg/apache/cordova/Config;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    :cond_0
    invoke-direct {p0}, Lorg/apache/cordova/IceCreamCordovaWebViewClient;->getWhitelistResponse()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 59
    :cond_1
    :goto_0
    return-object v0

    .line 53
    :cond_2
    if-nez v0, :cond_4

    const-string v1, "?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "#"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Lorg/apache/cordova/IceCreamCordovaWebViewClient;->needsIceCreamSpaceInAssetUrlFix(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 54
    :cond_3
    invoke-direct {p0, p2}, Lorg/apache/cordova/IceCreamCordovaWebViewClient;->generateWebResourceResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_4
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/apache/cordova/IceCreamCordovaWebViewClient;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v1, v1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lorg/apache/cordova/IceCreamCordovaWebViewClient;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v1, v1, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    invoke-virtual {v1, p2}, Lorg/apache/cordova/api/PluginManager;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method
