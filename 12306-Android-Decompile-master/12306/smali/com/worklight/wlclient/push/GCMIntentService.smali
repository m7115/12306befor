.class public Lcom/worklight/wlclient/push/GCMIntentService;
.super Lcom/worklight/androidgap/push/WLGCMIntentService;
.source "GCMIntentService.java"


# static fields
.field private static isAppForeground:Z


# instance fields
.field private resultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/worklight/wlclient/push/GCMIntentService;->isAppForeground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/worklight/androidgap/push/WLGCMIntentService;-><init>()V

    .line 44
    new-instance v0, Lcom/worklight/wlclient/push/GCMIntentService$1;

    invoke-direct {v0, p0}, Lcom/worklight/wlclient/push/GCMIntentService$1;-><init>(Lcom/worklight/wlclient/push/GCMIntentService;)V

    iput-object v0, p0, Lcom/worklight/wlclient/push/GCMIntentService;->resultReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    iget-object v0, p0, Lcom/worklight/wlclient/push/GCMIntentService;->resultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/push/GCMIntentService;->setBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/worklight/wlclient/push/GCMIntentService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/worklight/wlclient/push/GCMIntentService;->onUnhandled(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static isAppForeground()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/worklight/wlclient/push/GCMIntentService;->isAppForeground:Z

    return v0
.end method

.method public static setAppForeground(Z)V
    .locals 0
    .parameter "isAppForeground"

    .prologue
    .line 41
    sput-boolean p0, Lcom/worklight/wlclient/push/GCMIntentService;->isAppForeground:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected getNotificationTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 67
    const/4 v2, -0x1

    .line 69
    .local v2, notificationTitle:I
    :try_start_0
    invoke-virtual {p0}, Lcom/worklight/wlclient/push/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "string"

    const-string v6, "push_notification_title"

    invoke-static {v4, v5, v6}, Lcom/worklight/common/WLUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 70
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 87
    :goto_0
    return-object v4

    .line 71
    :catch_0
    move-exception v4

    .line 75
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 79
    .local v3, packManager:Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 83
    :goto_1
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 80
    :catch_1
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification will not have a title because application name is not available. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/worklight/common/WLUtils;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #packManager:Landroid/content/pm/PackageManager;
    :cond_0
    const-string v4, ""

    goto :goto_0
.end method

.method protected getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 92
    new-instance v0, Lcom/worklight/common/WLConfig;

    invoke-direct {v0, p1}, Lcom/worklight/common/WLConfig;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, config:Lcom/worklight/common/WLConfig;
    invoke-virtual {v0}, Lcom/worklight/common/WLConfig;->getGCMSender()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, senderId:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 96
    const/4 v2, 0x0

    .line 98
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    goto :goto_0
.end method

.method protected setResources()V
    .locals 4

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/worklight/wlclient/push/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "push"

    invoke-static {v1, v2, v3}, Lcom/worklight/common/WLUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/worklight/wlclient/push/GCMIntentService;->setNotificationIcon(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Failed to find the icon resource. Add the icon file under the /res/drawable folder."

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
