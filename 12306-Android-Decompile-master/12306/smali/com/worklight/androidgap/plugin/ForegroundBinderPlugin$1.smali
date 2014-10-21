.class Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;
.super Ljava/lang/Object;
.source "ForegroundBinderPlugin.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->bindService(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;

.field final synthetic val$activityClass:Ljava/lang/Class;

.field final synthetic val$explainText:Ljava/lang/String;

.field final synthetic val$iconId:I

.field final synthetic val$notificationId:I

.field final synthetic val$popupText:Ljava/lang/String;

.field final synthetic val$titleText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->this$0:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;

    iput p2, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$iconId:I

    iput-object p3, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$popupText:Ljava/lang/String;

    iput-object p4, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$activityClass:Ljava/lang/Class;

    iput-object p5, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$titleText:Ljava/lang/String;

    iput-object p6, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$explainText:Ljava/lang/String;

    iput p7, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$notificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v7, 0x0

    .line 152
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->this$0:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;

    #setter for: Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->serviceConnection:Landroid/content/ServiceConnection;
    invoke-static {v3, p0}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->access$102(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 154
    new-instance v2, Landroid/app/Notification;

    iget v3, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$iconId:I

    iget-object v4, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$popupText:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 156
    .local v2, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->this$0:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;

    #getter for: Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->ctx:Landroid/content/Context;
    invoke-static {v3}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->access$200(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->this$0:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;

    #getter for: Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->ctx:Landroid/content/Context;
    invoke-static {v5}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->access$200(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$activityClass:Ljava/lang/Class;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v3, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 158
    .local v1, contentIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->this$0:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;

    #getter for: Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->ctx:Landroid/content/Context;
    invoke-static {v3}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->access$200(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$titleText:Ljava/lang/String;

    iget-object v5, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$explainText:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 160
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    move-object v0, p2

    .line 163
    check-cast v0, Lcom/worklight/androidgap/WLForegroundService$ForegroundBinder;

    .line 164
    .local v0, binder:Lcom/worklight/androidgap/WLForegroundService$ForegroundBinder;
    iget v3, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->val$notificationId:I

    invoke-virtual {v0, v3, v2}, Lcom/worklight/androidgap/WLForegroundService$ForegroundBinder;->makeForeground(ILandroid/app/Notification;)V

    .line 166
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 144
    const-string v0, "WLForegroundBinder"

    const-string v1, "service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;->this$0:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;

    #calls: Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->cancelNotification()V
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->access$000(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;)V

    .line 146
    return-void
.end method
