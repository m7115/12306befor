.class Lcn/domob/ui/DViewManager$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/DViewManager;->a(Lcn/domob/wall/core/DetailsPageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/DetailsPageInfo;

.field final synthetic b:Lcn/domob/ui/DViewManager;


# direct methods
.method constructor <init>(Lcn/domob/ui/DViewManager;Lcn/domob/wall/core/DetailsPageInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    iput-object p2, p0, Lcn/domob/ui/DViewManager$9;->a:Lcn/domob/wall/core/DetailsPageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 518
    iget-object v0, p0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    new-instance v1, Lcn/domob/ui/j;

    iget-object v2, p0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v2}, Lcn/domob/ui/DViewManager;->f(Lcn/domob/ui/DViewManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v3}, Lcn/domob/ui/DViewManager;->e(Lcn/domob/ui/DViewManager;)Lcn/domob/wall/core/DService;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/domob/ui/j;-><init>(Landroid/content/Context;Lcn/domob/wall/core/DService;)V

    iget-object v2, p0, Lcn/domob/ui/DViewManager$9;->a:Lcn/domob/wall/core/DetailsPageInfo;

    invoke-virtual {v1, v2}, Lcn/domob/ui/j;->a(Lcn/domob/wall/core/DetailsPageInfo;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/ui/DViewManager;->c(Lcn/domob/ui/DViewManager;Landroid/view/View;)Landroid/view/View;

    .line 521
    iget-object v0, p0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->o(Lcn/domob/ui/DViewManager;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v1}, Lcn/domob/ui/DViewManager;->f(Lcn/domob/ui/DViewManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "details_close"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/domob/ui/DViewManager$9$1;

    invoke-direct {v1, p0}, Lcn/domob/ui/DViewManager$9$1;-><init>(Lcn/domob/ui/DViewManager$9;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iget-object v0, p0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v2}, Lcn/domob/ui/DViewManager;->f(Lcn/domob/ui/DViewManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/domob/ui/DViewManager;->a(Lcn/domob/ui/DViewManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 533
    iget-object v0, p0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->p(Lcn/domob/ui/DViewManager;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 534
    iget-object v0, p0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->p(Lcn/domob/ui/DViewManager;)Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v1}, Lcn/domob/ui/DViewManager;->o(Lcn/domob/ui/DViewManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 535
    iget-object v0, p0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->p(Lcn/domob/ui/DViewManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 536
    return-void
.end method
