.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1$1;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->onSuccessReceiveData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;

.field private final synthetic val$adsView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1$1;->this$2:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;

    iput-object p2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1$1;->val$adsView:Landroid/widget/RelativeLayout;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 539
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1$1;->this$2:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;
    invoke-static {v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;)Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;

    move-result-object v1

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    invoke-static {v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-result-object v1

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mDViewManager:Lcn/domob/ui/DViewManager;
    invoke-static {v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$20(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Lcn/domob/ui/DViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/ui/DViewManager;->doEntranceClickReport()V

    .line 547
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1$1;->this$2:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;
    invoke-static {v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;)Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;

    move-result-object v1

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    invoke-static {v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-result-object v1

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mWallView:Landroid/view/View;
    invoke-static {v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$22(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 548
    const-string v1, "\u66f4\u65b0\u5e7f\u544a\u6570\u91cf"

    const-string v2, "VIEW \u4e0d\u4e3a\u7a7a!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1$1;->val$adsView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1$1;->this$2:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;
    invoke-static {v2}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;)Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;

    move-result-object v2

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    invoke-static {v2}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-result-object v2

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mWallView:Landroid/view/View;
    invoke-static {v2}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$22(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 554
    :goto_1
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 552
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "\u66f4\u65b0\u5e7f\u544a\u6570\u91cf"

    const-string v2, "VIEW \u4e3a\u7a7a???"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
