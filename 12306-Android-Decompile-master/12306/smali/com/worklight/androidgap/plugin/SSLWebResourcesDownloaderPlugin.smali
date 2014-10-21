.class public Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "SSLWebResourcesDownloaderPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;
    }
.end annotation


# static fields
.field private static final ACTION_SWITCH_APP:Ljava/lang/String; = "switchApp"

.field private static final ACTION_UPDATE_APP:Ljava/lang/String; = "updateApp"

.field private static isUpdating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->isUpdating:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0
    .parameter

    .prologue
    .line 73
    sput-boolean p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->isUpdating:Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 22
    .parameter "action"
    .parameter "args"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    const-string v1, "updateApp"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "switchApp"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x1

    .line 105
    :goto_0
    return v1

    .line 85
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    new-instance v2, Lcom/worklight/common/WLConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/worklight/common/WLConfig;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lcom/worklight/common/WLConfig;->getAppURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, cookies:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, instanceAuthId:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 88
    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 89
    .local v6, shouldUpdateSilently:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "wlSkinName"

    invoke-static {v1, v2}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, skinName:Ljava/lang/String;
    const-string v1, "updateApp"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Lcom/worklight/common/WLConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/worklight/common/WLConfig;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lcom/worklight/common/WLConfig;->getAppURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "updates?action=getzip&skin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, url:Ljava/lang/String;
    new-instance v1, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    check-cast v3, Lcom/worklight/androidgap/WLDroidGap;

    const-string v7, "directUpdateDownloadingMessage"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;-><init>(Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;Lcom/worklight/androidgap/WLDroidGap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    .end local v8           #url:Ljava/lang/String;
    :cond_2
    :goto_1
    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v1}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    .line 101
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 94
    :cond_3
    const-string v1, "switchApp"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 96
    .local v19, appId:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 97
    .local v20, appVersion:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Lcom/worklight/common/WLConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/worklight/common/WLConfig;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2}, Lcom/worklight/common/WLConfig;->getRootURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/dev/appdata?appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appEnv=android&skin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 98
    .restart local v8       #url:Ljava/lang/String;
    new-instance v10, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    check-cast v12, Lcom/worklight/androidgap/WLDroidGap;

    const/4 v15, 0x0

    const-string v16, "downloadingWebResourcesMessage"

    move-object/from16 v11, p0

    move-object v13, v4

    move-object v14, v5

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;-><init>(Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;Lcom/worklight/androidgap/WLDroidGap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v10, v1}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 103
    .end local v4           #cookies:Ljava/lang/String;
    .end local v5           #instanceAuthId:Ljava/lang/String;
    .end local v6           #shouldUpdateSilently:Z
    .end local v8           #url:Ljava/lang/String;
    .end local v9           #skinName:Ljava/lang/String;
    .end local v19           #appId:Ljava/lang/String;
    .end local v20           #appVersion:Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 104
    .local v21, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public isUpdating()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->isUpdating:Z

    return v0
.end method
