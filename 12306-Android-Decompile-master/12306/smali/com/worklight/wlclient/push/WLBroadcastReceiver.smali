.class public Lcom/worklight/wlclient/push/WLBroadcastReceiver;
.super Lcom/google/android/gcm/GCMBroadcastReceiver;
.source "WLBroadcastReceiver.java"


# static fields
.field private static final INTENT_SERVICE:Ljava/lang/String; = "com.worklight.wlclient.push.GCMIntentService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const-string v0, "com.worklight.wlclient.push.GCMIntentService"

    return-object v0
.end method
