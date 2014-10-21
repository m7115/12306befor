.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser;->showAdsWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;


# direct methods
.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    .locals 1
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 486
    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    new-instance v6, Landroid/app/Dialog;

    iget-object v7, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v7, v7, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v7}, Lorg/apache/cordova/api/LegacyContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x1030006

    invoke-direct {v6, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v5, v6}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$4(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/app/Dialog;)V

    .line 487
    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const v6, 0x1030002

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 488
    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 489
    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 492
    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v5, v5, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v5}, Lorg/apache/cordova/api/LegacyContext;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 493
    .local v3, mContentLayoutInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000f

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 496
    .local v4, main:Landroid/widget/LinearLayout;
    const v5, 0x7f080047

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 517
    .local v0, adsView:Landroid/widget/RelativeLayout;
    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mDViewManager:Lcn/domob/ui/DViewManager;
    invoke-static {v5}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$20(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Lcn/domob/ui/DViewManager;

    move-result-object v5

    new-instance v6, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;

    invoke-direct {v6, p0, v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$1;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v5, v6}, Lcn/domob/ui/DViewManager;->setAddViewListener(Lcn/domob/ui/DViewManager$GetDataListener;)V

    .line 565
    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mDViewManager:Lcn/domob/ui/DViewManager;
    invoke-static {v5}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$20(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Lcn/domob/ui/DViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcn/domob/ui/DViewManager;->addView()V

    .line 588
    const v5, 0x7f080045

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 589
    .local v1, back:Landroid/widget/Button;
    new-instance v5, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$2;

    invoke-direct {v5, p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5$2;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 599
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 600
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 601
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 603
    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 604
    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 605
    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 606
    return-void
.end method
