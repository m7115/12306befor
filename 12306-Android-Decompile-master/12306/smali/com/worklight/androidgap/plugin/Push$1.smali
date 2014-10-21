.class Lcom/worklight/androidgap/plugin/Push$1;
.super Landroid/content/BroadcastReceiver;
.source "Push.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/Push;->initialize(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/Push;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/plugin/Push;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/Push$1;->this$0:Lcom/worklight/androidgap/plugin/Push;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    const-string v1, "Queuing message for dispatch to javascript"

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push$1;->this$0:Lcom/worklight/androidgap/plugin/Push;

    #getter for: Lcom/worklight/androidgap/plugin/Push;->pending:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/worklight/androidgap/plugin/Push;->access$000(Lcom/worklight/androidgap/plugin/Push;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push$1;->this$0:Lcom/worklight/androidgap/plugin/Push;

    #getter for: Lcom/worklight/androidgap/plugin/Push;->pending:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/worklight/androidgap/plugin/Push;->access$000(Lcom/worklight/androidgap/plugin/Push;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v1, "message"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/worklight/androidgap/push/WLGCMIntentService$Message;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Push$1;->this$0:Lcom/worklight/androidgap/plugin/Push;

    #calls: Lcom/worklight/androidgap/plugin/Push;->dispatchPending()V
    invoke-static {v1}, Lcom/worklight/androidgap/plugin/Push;->access$100(Lcom/worklight/androidgap/plugin/Push;)V

    .line 85
    const-string v1, "notificationBar"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    .local v0, isFromNotificationBar:Z
    if-nez v0, :cond_0

    .line 87
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/worklight/androidgap/plugin/Push$1;->setResultCode(I)V

    .line 89
    :cond_0
    return-void

    .line 83
    .end local v0           #isFromNotificationBar:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
