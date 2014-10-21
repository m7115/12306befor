.class public Lcom/worklight/common/WLConfig;
.super Ljava/lang/Object;
.source "WLConfig.java"


# static fields
.field public static final ENABLE_SETTINGS:Ljava/lang/String; = "enableSettings"

.field private static final IGNORED_FILE_EXTENSIONS:Ljava/lang/String; = "ignoredFileExtensions"

.field public static final WL_APP_ID:Ljava/lang/String; = "wlAppId"

.field public static final WL_APP_VERSION:Ljava/lang/String; = "wlAppVersion"

.field public static final WL_CLIENT_PROPS_NAME:Ljava/lang/String; = "wlclient.properties"

.field private static final WL_ENVIRONMENT:Ljava/lang/String; = "wlEnvironment"

.field public static final WL_GCM_SENDER:Ljava/lang/String; = "GcmSenderId"

.field public static final WL_MAIN_FILE_PATH:Ljava/lang/String; = "wlMainFilePath"

.field public static final WL_PLATFORM_VERSION:Ljava/lang/String; = "wlPlatformVersion"

.field private static final WL_PREFS:Ljava/lang/String; = "WLPrefs"

.field public static final WL_SERVER_CONTEXT:Ljava/lang/String; = "wlServerContext"

.field public static final WL_SERVER_HOST:Ljava/lang/String; = "wlServerHost"

.field public static final WL_SERVER_PORT:Ljava/lang/String; = "wlServerPort"

.field public static final WL_SERVER_PROTOCOL:Ljava/lang/String; = "wlServerProtocol"

.field private static final WL_TEST_WEB_RESOURCES_CHECKSUM:Ljava/lang/String; = "testWebResourcesChecksum"

.field public static final WL_WEB_RESOURCES_UNPACKD_SIZE:Ljava/lang/String; = "webResourcesSize"

.field public static final WL_X_VERSION_HEADER:Ljava/lang/String; = "x-wl-app-version"


# instance fields
.field private prefs:Landroid/content/SharedPreferences;

.field private wlProperties:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/worklight/common/WLConfig;-><init>(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/worklight/common/WLConfig;->prefs:Landroid/content/SharedPreferences;

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "wlclient.properties"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 54
    const-string v1, "WLPrefs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/common/WLConfig;->prefs:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "WLConfig(): Can\'t load wlclient.properties file"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPropertyOrPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "propertyKey"
    .parameter "prefKey"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/worklight/common/WLConfig;->prefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 158
    .restart local v0       #result:Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    const-string v0, "wlAppId"

    const-string v1, "appIdPref"

    invoke-direct {p0, v0, v1}, Lcom/worklight/common/WLConfig;->getPropertyOrPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppURL()Ljava/net/URL;
    .locals 4

    .prologue
    .line 66
    :try_start_0
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getRootURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/apps/services/api/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getWLEnvironment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse URL; check assets/wlclient.properties. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    const-string v0, "wlAppVersion"

    const-string v1, "appVersionPref"

    invoke-direct {p0, v0, v1}, Lcom/worklight/common/WLConfig;->getPropertyOrPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    const-string v1, "wlServerContext"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultRootUrl()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 90
    const-string v6, "https"

    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "443"

    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getPort()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 91
    .local v1, isDefaultHttpsPort:Z
    :goto_0
    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getPort()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/worklight/common/WLUtils;->isStringEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    const-string v2, ""

    .line 92
    .local v2, port:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getContext()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/worklight/common/WLUtils;->isStringEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getContext()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    const-string v0, ""

    .line 93
    .local v0, context:Ljava/lang/String;
    :goto_2
    const-string v6, "%s://%s%s%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getProtocol()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getHost()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x2

    aput-object v2, v7, v4

    const/4 v4, 0x3

    aput-object v0, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, url:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 97
    :cond_2
    return-object v3

    .end local v0           #context:Ljava/lang/String;
    .end local v1           #isDefaultHttpsPort:Z
    .end local v2           #port:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :cond_3
    move v1, v5

    .line 90
    goto :goto_0

    .line 91
    .restart local v1       #isDefaultHttpsPort:Z
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getPort()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 92
    .restart local v2       #port:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getContext()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public getGCMSender()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    const-string v2, "GcmSenderId"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, wlGCMSender:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 122
    .end local v0           #wlGCMSender:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    const-string v1, "wlServerHost"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMainFileFromDescriptor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    const-string v1, "wlMainFilePath"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMainFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaExtensions()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    iget-object v2, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    const-string v3, "ignoredFileExtensions"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, mediaExtentionStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 111
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    const-string v1, "wlPlatformVersion"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    const-string v1, "wlServerPort"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    const-string v1, "wlServerProtocol"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRootURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    iget-object v1, p0, Lcom/worklight/common/WLConfig;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "WLServerURL"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/worklight/common/WLConfig;->getDefaultRootUrl()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_0
    return-object v0
.end method

.method public getSettingsFlag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    const-string v1, "enableSettings"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTestWebResourcesChecksumFlag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    const-string v1, "testWebResourcesChecksum"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWLEnvironment()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    iget-object v1, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    const-string v2, "wlEnvironment"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 80
    const-string v0, "android"

    .line 82
    :cond_0
    return-object v0
.end method

.method public getWebResourcesUnpackedSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/worklight/common/WLConfig;->wlProperties:Ljava/util/Properties;

    const-string v1, "webResourcesSize"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
