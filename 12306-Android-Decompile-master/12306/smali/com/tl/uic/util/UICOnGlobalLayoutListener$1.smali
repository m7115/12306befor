.class Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;
.super Ljava/lang/Thread;
.source "UICOnGlobalLayoutListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/util/UICOnGlobalLayoutListener;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tl/uic/util/UICOnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcom/tl/uic/util/UICOnGlobalLayoutListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;->this$0:Lcom/tl/uic/util/UICOnGlobalLayoutListener;

    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;)Lcom/tl/uic/util/UICOnGlobalLayoutListener;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;->this$0:Lcom/tl/uic/util/UICOnGlobalLayoutListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;->this$0:Lcom/tl/uic/util/UICOnGlobalLayoutListener;

    #getter for: Lcom/tl/uic/util/UICOnGlobalLayoutListener;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->access$0(Lcom/tl/uic/util/UICOnGlobalLayoutListener;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1$1;

    invoke-direct {v1, p0}, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1$1;-><init>(Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;)V

    .line 58
    iget-object v2, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;->this$0:Lcom/tl/uic/util/UICOnGlobalLayoutListener;

    #getter for: Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;
    invoke-static {v2}, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->access$1(Lcom/tl/uic/util/UICOnGlobalLayoutListener;)Lcom/tl/uic/app/UICActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tl/uic/app/UICActivity;->getMillisecondSnapshotDelay()J

    move-result-wide v2

    .line 52
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method
