.class Lcom/worklight/androidgap/push/WLGCMIntentService$1;
.super Landroid/content/BroadcastReceiver;
.source "WLGCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/push/WLGCMIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/push/WLGCMIntentService;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/push/WLGCMIntentService;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$1;->this$0:Lcom/worklight/androidgap/push/WLGCMIntentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/worklight/androidgap/push/WLGCMIntentService$1;->getResultCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/worklight/androidgap/WLDroidGap;->isForeGround()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/worklight/androidgap/push/WLGCMIntentService$1;->this$0:Lcom/worklight/androidgap/push/WLGCMIntentService;

    invoke-virtual {v0, p1, p2}, Lcom/worklight/androidgap/push/WLGCMIntentService;->onUnhandled(Landroid/content/Context;Landroid/content/Intent;)V

    .line 132
    :cond_1
    return-void
.end method
