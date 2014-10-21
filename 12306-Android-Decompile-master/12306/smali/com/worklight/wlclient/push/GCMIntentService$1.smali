.class Lcom/worklight/wlclient/push/GCMIntentService$1;
.super Landroid/content/BroadcastReceiver;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/push/GCMIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/push/GCMIntentService;


# direct methods
.method constructor <init>(Lcom/worklight/wlclient/push/GCMIntentService;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/worklight/wlclient/push/GCMIntentService$1;->this$0:Lcom/worklight/wlclient/push/GCMIntentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/worklight/wlclient/push/GCMIntentService$1;->getResultCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/worklight/wlclient/push/GCMIntentService;->isAppForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/worklight/wlclient/push/GCMIntentService$1;->this$0:Lcom/worklight/wlclient/push/GCMIntentService;

    #calls: Lcom/worklight/wlclient/push/GCMIntentService;->onUnhandled(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/worklight/wlclient/push/GCMIntentService;->access$000(Lcom/worklight/wlclient/push/GCMIntentService;Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    :cond_1
    return-void
.end method
