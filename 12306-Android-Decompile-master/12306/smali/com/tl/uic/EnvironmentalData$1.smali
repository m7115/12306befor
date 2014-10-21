.class Lcom/tl/uic/EnvironmentalData$1;
.super Ljava/util/TimerTask;
.source "EnvironmentalData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/EnvironmentalData;->setupClientStateTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tl/uic/EnvironmentalData;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tl/uic/EnvironmentalData;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/EnvironmentalData$1;->this$0:Lcom/tl/uic/EnvironmentalData;

    iput-object p2, p0, Lcom/tl/uic/EnvironmentalData$1;->val$handler:Landroid/os/Handler;

    .line 625
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/tl/uic/EnvironmentalData$1$1;

    invoke-direct {v1, p0}, Lcom/tl/uic/EnvironmentalData$1$1;-><init>(Lcom/tl/uic/EnvironmentalData$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    return-void
.end method
