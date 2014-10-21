.class Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor$1;
.super Ljava/lang/Object;
.source "DispatchingPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;

.field final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor$1;->this$0:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor$1;->this$0:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;

    #calls: Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->scheduleNextRunnable()V
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->access$300(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;)V

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor$1;->this$0:Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;

    #calls: Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->scheduleNextRunnable()V
    invoke-static {v1}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->access$300(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;)V

    throw v0
.end method
