.class Lcom/tl/uic/TLFCache$1;
.super Ljava/util/TimerTask;
.source "TLFCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/TLFCache;->setupPostTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/TLFCache$1;->val$handler:Landroid/os/Handler;

    .line 341
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/tl/uic/TLFCache$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/tl/uic/TLFCache$1$1;

    invoke-direct {v1, p0}, Lcom/tl/uic/TLFCache$1$1;-><init>(Lcom/tl/uic/TLFCache$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    return-void
.end method
