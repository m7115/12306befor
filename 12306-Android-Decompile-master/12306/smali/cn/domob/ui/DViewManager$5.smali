.class Lcn/domob/ui/DViewManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/DViewManager;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/DViewManager;


# direct methods
.method constructor <init>(Lcn/domob/ui/DViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 386
    iget-object v0, p0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    new-instance v1, Lcn/domob/ui/k;

    iget-object v2, p0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v2}, Lcn/domob/ui/DViewManager;->f(Lcn/domob/ui/DViewManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v3}, Lcn/domob/ui/DViewManager;->e(Lcn/domob/ui/DViewManager;)Lcn/domob/wall/core/DService;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v4}, Lcn/domob/ui/DViewManager;->d(Lcn/domob/ui/DViewManager;)Lcn/domob/wall/core/ControlInfo;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/domob/ui/k;-><init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Lcn/domob/wall/core/ControlInfo;)V

    invoke-virtual {v1}, Lcn/domob/ui/k;->a()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/ui/DViewManager;->a(Lcn/domob/ui/DViewManager;Landroid/view/View;)Landroid/view/View;

    .line 389
    iget-object v0, p0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->g(Lcn/domob/ui/DViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->a(Lcn/domob/ui/DViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v1}, Lcn/domob/ui/DViewManager;->h(Lcn/domob/ui/DViewManager;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/domob/ui/DViewManager;->a(Lcn/domob/ui/DViewManager;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    :goto_0
    iget-object v0, p0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->h(Lcn/domob/ui/DViewManager;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/domob/ui/DViewManager$5$1;

    invoke-direct {v1, p0}, Lcn/domob/ui/DViewManager$5$1;-><init>(Lcn/domob/ui/DViewManager$5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->g(Lcn/domob/ui/DViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v1}, Lcn/domob/ui/DViewManager;->h(Lcn/domob/ui/DViewManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
