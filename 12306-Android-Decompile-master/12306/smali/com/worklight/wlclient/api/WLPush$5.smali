.class Lcom/worklight/wlclient/api/WLPush$5;
.super Landroid/content/BroadcastReceiver;
.source "WLPush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/api/WLPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/api/WLPush;


# direct methods
.method constructor <init>(Lcom/worklight/wlclient/api/WLPush;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$5;->this$0:Lcom/worklight/wlclient/api/WLPush;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 425
    const-string v1, "Successfully received message for dispatching"

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush$5;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->pending:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/worklight/wlclient/api/WLPush;->access$800(Lcom/worklight/wlclient/api/WLPush;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush$5;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #getter for: Lcom/worklight/wlclient/api/WLPush;->pending:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/worklight/wlclient/api/WLPush;->access$800(Lcom/worklight/wlclient/api/WLPush;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v1, "message"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    iget-object v1, p0, Lcom/worklight/wlclient/api/WLPush$5;->this$0:Lcom/worklight/wlclient/api/WLPush;

    #calls: Lcom/worklight/wlclient/api/WLPush;->dispatchPending()V
    invoke-static {v1}, Lcom/worklight/wlclient/api/WLPush;->access$900(Lcom/worklight/wlclient/api/WLPush;)V

    .line 430
    const-string v1, "notificationBar"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 431
    .local v0, isFromNotificationBar:Z
    if-nez v0, :cond_0

    .line 432
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/worklight/wlclient/api/WLPush$5;->setResultCode(I)V

    .line 434
    :cond_0
    return-void

    .line 428
    .end local v0           #isFromNotificationBar:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
