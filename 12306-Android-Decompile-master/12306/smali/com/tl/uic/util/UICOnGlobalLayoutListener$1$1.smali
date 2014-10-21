.class Lcom/tl/uic/util/UICOnGlobalLayoutListener$1$1;
.super Ljava/lang/Object;
.source "UICOnGlobalLayoutListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;


# direct methods
.method constructor <init>(Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1$1;->this$1:Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 54
    new-instance v0, Lcom/tl/uic/util/ScreenShotTask;

    invoke-direct {v0}, Lcom/tl/uic/util/ScreenShotTask;-><init>()V

    .line 55
    .local v0, screenShotTask:Lcom/tl/uic/util/ScreenShotTask;
    new-array v1, v4, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1$1;->this$1:Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;

    #getter for: Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;->this$0:Lcom/tl/uic/util/UICOnGlobalLayoutListener;
    invoke-static {v3}, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;->access$0(Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;)Lcom/tl/uic/util/UICOnGlobalLayoutListener;

    move-result-object v3

    #getter for: Lcom/tl/uic/util/UICOnGlobalLayoutListener;->view:Landroid/view/View;
    invoke-static {v3}, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->access$0(Lcom/tl/uic/util/UICOnGlobalLayoutListener;)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tl/uic/util/ScreenShotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    iget-object v1, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1$1;->this$1:Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;

    #getter for: Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;->this$0:Lcom/tl/uic/util/UICOnGlobalLayoutListener;
    invoke-static {v1}, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;->access$0(Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;)Lcom/tl/uic/util/UICOnGlobalLayoutListener;

    move-result-object v1

    #getter for: Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;
    invoke-static {v1}, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->access$1(Lcom/tl/uic/util/UICOnGlobalLayoutListener;)Lcom/tl/uic/app/UICActivity;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tl/uic/app/UICActivity;->setTookImage(Ljava/lang/Boolean;)V

    .line 57
    return-void
.end method
