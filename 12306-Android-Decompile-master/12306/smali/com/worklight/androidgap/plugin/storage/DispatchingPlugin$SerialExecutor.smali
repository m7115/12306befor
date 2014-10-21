.class Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;
.super Ljava/lang/Object;
.source "DispatchingPlugin.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialExecutor"
.end annotation


# instance fields
.field private currentRunnable:Ljava/lang/Runnable;

.field private dispatcherRunnables:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->dispatcherRunnables:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 138
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->scheduleNextRunnable()V

    return-void
.end method

.method private declared-synchronized scheduleNextRunnable()V
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->dispatcherRunnables:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->currentRunnable:Ljava/lang/Runnable;

    .line 164
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->currentRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->currentRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->dispatcherRunnables:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor$1;-><init>(Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->currentRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin$SerialExecutor;->scheduleNextRunnable()V

    .line 159
    :cond_0
    return-void
.end method
