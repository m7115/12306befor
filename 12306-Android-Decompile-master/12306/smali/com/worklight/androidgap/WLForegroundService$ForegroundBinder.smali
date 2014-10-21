.class public Lcom/worklight/androidgap/WLForegroundService$ForegroundBinder;
.super Landroid/os/Binder;
.source "WLForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/WLForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForegroundBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/WLForegroundService;


# direct methods
.method public constructor <init>(Lcom/worklight/androidgap/WLForegroundService;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/worklight/androidgap/WLForegroundService$ForegroundBinder;->this$0:Lcom/worklight/androidgap/WLForegroundService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public makeForeground(ILandroid/app/Notification;)V
    .locals 1
    .parameter "notificationId"
    .parameter "notification"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/worklight/androidgap/WLForegroundService$ForegroundBinder;->this$0:Lcom/worklight/androidgap/WLForegroundService;

    invoke-virtual {v0, p1, p2}, Lcom/worklight/androidgap/WLForegroundService;->startForeground(ILandroid/app/Notification;)V

    .line 29
    return-void
.end method
