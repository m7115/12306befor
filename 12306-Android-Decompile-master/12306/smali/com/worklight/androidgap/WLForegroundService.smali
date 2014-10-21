.class public Lcom/worklight/androidgap/WLForegroundService;
.super Landroid/app/Service;
.source "WLForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/WLForegroundService$ForegroundBinder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 34
    new-instance v0, Lcom/worklight/androidgap/WLForegroundService$ForegroundBinder;

    invoke-direct {v0, p0}, Lcom/worklight/androidgap/WLForegroundService$ForegroundBinder;-><init>(Lcom/worklight/androidgap/WLForegroundService;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 40
    const-string v0, "WLKeepAlive"

    const-string v1, "WLKeepAliveService destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 46
    const-string v0, "WLKeepAlive"

    const-string v1, "WLKeepAliveService started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x1

    return v0
.end method
