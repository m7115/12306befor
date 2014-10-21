.class public Lcom/worklight/androidgap/push/WLGCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "WLGCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
    }
.end annotation


# static fields
.field public static final GCM_ERROR:Ljava/lang/String; = ".C2DM_ERROR"

.field public static final GCM_EXTRA_ALERT:Ljava/lang/String; = "alert"

.field public static final GCM_EXTRA_BADGE:Ljava/lang/String; = "badge"

.field public static final GCM_EXTRA_ERROR_ID:Ljava/lang/String; = "errorId"

.field public static final GCM_EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final GCM_EXTRA_PAYLOAD:Ljava/lang/String; = "payload"

.field public static final GCM_EXTRA_REGISTRATION_ID:Ljava/lang/String; = "registrationId"

.field public static final GCM_EXTRA_SOUND:Ljava/lang/String; = "sound"

.field public static final GCM_MESSAGE:Ljava/lang/String; = ".C2DM_MESSAGE"

.field public static final GCM_NOTIFICATION:Ljava/lang/String; = ".NOTIFICATION"

.field public static final GCM_REGISTERED:Ljava/lang/String; = ".C2DM_REGISTERED"

.field public static final GCM_UNREGISTERED:Ljava/lang/String; = ".C2DM_UNREGISTERED"

.field private static RES_PUSH_NOTIFICATION_ICON:I

.field private static RES_PUSH_NOTIFICATION_TITLE:I


# instance fields
.field private resultReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 41
    sput v0, Lcom/worklight/androidgap/push/WLGCMIntentService;->RES_PUSH_NOTIFICATION_ICON:I

    .line 42
    sput v0, Lcom/worklight/androidgap/push/WLGCMIntentService;->RES_PUSH_NOTIFICATION_TITLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>()V

    .line 126
    new-instance v0, Lcom/worklight/androidgap/push/WLGCMIntentService$1;

    invoke-direct {v0, p0}, Lcom/worklight/androidgap/push/WLGCMIntentService$1;-><init>(Lcom/worklight/androidgap/push/WLGCMIntentService;)V

    iput-object v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService;->resultReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "sender"

    .prologue
    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/worklight/androidgap/push/WLGCMIntentService$1;

    invoke-direct {v0, p0}, Lcom/worklight/androidgap/push/WLGCMIntentService$1;-><init>(Lcom/worklight/androidgap/push/WLGCMIntentService;)V

    iput-object v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService;->resultReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    return-void
.end method

.method private generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "ticker"
    .parameter "title"
    .parameter "msg"
    .parameter "badge"
    .parameter "sound"
    .parameter "intent"

    .prologue
    .line 169
    sget v0, Lcom/worklight/androidgap/push/WLGCMIntentService;->RES_PUSH_NOTIFICATION_ICON:I

    .line 170
    .local v0, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 172
    .local v3, when:J
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1, v0, p2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 173
    .local v1, notification:Landroid/app/Notification;
    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p1, v5, p7, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, p1, p3, p4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 174
    iput p5, v1, Landroid/app/Notification;->number:I

    .line 175
    iget v5, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v1, Landroid/app/Notification;->flags:I

    .line 177
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 178
    .local v2, notificationManager:Landroid/app/NotificationManager;
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 180
    if-eqz p6, :cond_0

    const-string v5, ""

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 181
    invoke-direct {p0, p1, p6}, Lcom/worklight/androidgap/push/WLGCMIntentService;->playNotificationSound(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method private playNotificationSound(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "sound"

    .prologue
    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, uri:Landroid/net/Uri;
    move-object v2, p2

    .line 189
    .local v2, soundResourceString:Ljava/lang/String;
    :try_start_0
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    const/4 v4, 0x0

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 192
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/worklight/androidgap/push/WLGCMIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "raw"

    invoke-static {p1, v5, v2}, Lcom/worklight/common/WLUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 197
    :goto_0
    if-nez v3, :cond_1

    .line 198
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 201
    :cond_1
    if-eqz v3, :cond_2

    .line 202
    invoke-static {p1, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 203
    .local v1, ringtone:Landroid/media/Ringtone;
    if-eqz v1, :cond_2

    .line 204
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 205
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 208
    .end local v1           #ringtone:Landroid/media/Ringtone;
    :cond_2
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Push notification sound will not be used because sound file name \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" was not found. Add \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" to native/res/raw folder."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getNotificationTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 155
    sget v0, Lcom/worklight/androidgap/push/WLGCMIntentService;->RES_PUSH_NOTIFICATION_TITLE:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "tickerText"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/push/WLGCMIntentService;->getNotificationTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "1"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/worklight/androidgap/push/WLGCMIntentService;->generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public notify(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "alert"
    .parameter "badge"
    .parameter "sound"
    .parameter "intent"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/push/WLGCMIntentService;->getNotificationTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/worklight/androidgap/push/WLGCMIntentService;->generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Push notification will not work, because register/unregister to GCM service returned error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->warning(Ljava/lang/String;)V

    .line 115
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".C2DM_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "errorId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 95
    const-string v0, "Received a message from the GCM server"

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 96
    new-instance v10, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    invoke-direct {v10}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;-><init>()V

    .line 97
    .local v10, message:Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 98
    .local v9, info:Landroid/os/Bundle;
    const-string v0, "alert"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->alert:Ljava/lang/String;
    invoke-static {v10, v0}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->access$002(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    :try_start_0
    const-string v0, "badge"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    #setter for: Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->badge:I
    invoke-static {v10, v0}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->access$102(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    const-string v0, "sound"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->sound:Ljava/lang/String;
    invoke-static {v10, v0}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->access$202(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    const-string v0, "payload"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->payload:Ljava/lang/String;
    invoke-static {v10, v0}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->access$302(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    new-instance p2, Landroid/content/Intent;

    .end local p2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".C2DM_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local p2
    const-string v0, "message"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    iget-object v3, p0, Lcom/worklight/androidgap/push/WLGCMIntentService;->resultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 110
    return-void

    .line 101
    :catch_0
    move-exception v8

    .line 102
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to update badge while received push notification, becasue failed to parse badge number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "badge"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", badge must be an integer number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push notification will not work, because register/unregister to GCM service returned error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->warning(Ljava/lang/String;)V

    .line 123
    invoke-super {p0, p1, p2}, Lcom/google/android/gcm/GCMBaseIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "registrationId"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/worklight/androidgap/push/WLGCMIntentService;->setResources()V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered at the GCM server with registration id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".C2DM_REGISTERED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "registrationId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method protected onUnhandled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/worklight/androidgap/push/WLGCMIntentService;->setResources()V

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, action:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".C2DM_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    .line 143
    .local v7, message:Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing notification for unhandled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 144
    new-instance p2, Landroid/content/Intent;

    .end local p2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .restart local p2
    const-string v0, "message"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    #getter for: Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->alert:Ljava/lang/String;
    invoke-static {v7}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->access$000(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;)Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->badge:I
    invoke-static {v7}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->access$100(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;)I

    move-result v3

    #getter for: Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->sound:Ljava/lang/String;
    invoke-static {v7}, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;->access$200(Lcom/worklight/androidgap/push/WLGCMIntentService$Message;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/worklight/androidgap/push/WLGCMIntentService;->notify(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;)V

    .line 148
    .end local v7           #message:Lcom/worklight/androidgap/push/WLGCMIntentService$Message;
    :cond_0
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "registrationId"

    .prologue
    .line 89
    const-string v0, "Unregistered at the GCM server"

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/worklight/common/WLUtils;->getFullAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".C2DM_UNREGISTERED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    return-void
.end method

.method protected setBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .parameter "resultReceiver"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/worklight/androidgap/push/WLGCMIntentService;->resultReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    return-void
.end method

.method protected setNotificationIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 151
    sput p1, Lcom/worklight/androidgap/push/WLGCMIntentService;->RES_PUSH_NOTIFICATION_ICON:I

    .line 152
    return-void
.end method

.method protected setResources()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 77
    sget v1, Lcom/worklight/androidgap/push/WLGCMIntentService;->RES_PUSH_NOTIFICATION_ICON:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/worklight/androidgap/push/WLGCMIntentService;->RES_PUSH_NOTIFICATION_TITLE:I

    if-ne v1, v2, :cond_1

    .line 79
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/worklight/androidgap/push/WLGCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "push"

    invoke-static {v1, v2, v3}, Lcom/worklight/common/WLUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/worklight/androidgap/push/WLGCMIntentService;->RES_PUSH_NOTIFICATION_ICON:I

    .line 80
    invoke-virtual {p0}, Lcom/worklight/androidgap/push/WLGCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "push_notification_title"

    invoke-static {v1, v2, v3}, Lcom/worklight/common/WLUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/worklight/androidgap/push/WLGCMIntentService;->RES_PUSH_NOTIFICATION_TITLE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Push notification icon or title may not be displayed properly, because resource was not found. Add icon to native/res/drawable, or add <string =\"push_notification_title\">title</string> in native/res/values/strings.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
