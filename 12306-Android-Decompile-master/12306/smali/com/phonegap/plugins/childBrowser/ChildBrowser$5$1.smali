.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Lcn/domob/ui/DViewManager$GetDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;

.field private final synthetic val$adsView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;

    iput-object p2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->val$adsView:Landroid/widget/RelativeLayout;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;)Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;
    .locals 1
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;

    return-object v0
.end method


# virtual methods
.method public onFailReceiveData()V
    .locals 2

    .prologue
    .line 561
    const-string v0, "\u66f4\u65b0\u5e7f\u544a\u6570\u91cf"

    const-string v1, "error....."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method

.method public onSuccessReceiveData(I)V
    .locals 3
    .parameter "mNewAdNum"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    invoke-static {v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-result-object v0

    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    invoke-static {v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-result-object v1

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mDViewManager:Lcn/domob/ui/DViewManager;
    invoke-static {v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$20(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Lcn/domob/ui/DViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/ui/DViewManager;->getView()Landroid/view/View;

    move-result-object v1

    #setter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mWallView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$21(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/view/View;)V

    .line 525
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    invoke-static {v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-result-object v0

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mWallView:Landroid/view/View;
    invoke-static {v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$22(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    const-string v0, "\u66f4\u65b0\u5e7f\u544a\u6570\u91cf"

    const-string v1, "VIEW \u4e0d\u4e3a\u7a7a!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->val$adsView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    invoke-static {v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-result-object v1

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mWallView:Landroid/view/View;
    invoke-static {v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$22(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 534
    :goto_0
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    invoke-static {v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-result-object v0

    iget-object v0, v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v0}, Lorg/apache/cordova/api/LegacyContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1$1;

    iget-object v2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;->val$adsView:Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0, v2}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1$1;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 557
    return-void

    .line 530
    :cond_0
    const-string v0, "\u66f4\u65b0\u5e7f\u544a\u6570\u91cf"

    const-string v1, "VIEW \u4e3a\u7a7a???"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
