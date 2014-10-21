.class Lcn/domob/ui/DViewManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/DViewManager;->getView()Landroid/view/View;
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
    .line 432
    iput-object p1, p0, Lcn/domob/ui/DViewManager$7;->a:Lcn/domob/ui/DViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 436
    iget-object v7, p0, Lcn/domob/ui/DViewManager$7;->a:Lcn/domob/ui/DViewManager;

    iget-object v0, p0, Lcn/domob/ui/DViewManager$7;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->i(Lcn/domob/ui/DViewManager;)Lcn/domob/ui/l;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/domob/ui/DViewManager$7;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v2}, Lcn/domob/ui/DViewManager;->f(Lcn/domob/ui/DViewManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/DViewManager$7;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v3}, Lcn/domob/ui/DViewManager;->j(Lcn/domob/ui/DViewManager;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/ui/DViewManager$7;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v4}, Lcn/domob/ui/DViewManager;->k(Lcn/domob/ui/DViewManager;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/ui/DViewManager$7;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v5}, Lcn/domob/ui/DViewManager;->d(Lcn/domob/ui/DViewManager;)Lcn/domob/wall/core/ControlInfo;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/ui/DViewManager$7;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v6}, Lcn/domob/ui/DViewManager;->e(Lcn/domob/ui/DViewManager;)Lcn/domob/wall/core/DService;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcn/domob/ui/l;->a(ZLandroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/domob/wall/core/ControlInfo;Lcn/domob/wall/core/DService;)Landroid/view/View;

    move-result-object v0

    invoke-static {v7, v0}, Lcn/domob/ui/DViewManager;->b(Lcn/domob/ui/DViewManager;Landroid/view/View;)Landroid/view/View;

    .line 441
    iget-object v0, p0, Lcn/domob/ui/DViewManager$7;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->m(Lcn/domob/ui/DViewManager;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/DViewManager$7;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v1}, Lcn/domob/ui/DViewManager;->f(Lcn/domob/ui/DViewManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "bar_button"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/domob/ui/DViewManager$7$1;

    invoke-direct {v1, p0}, Lcn/domob/ui/DViewManager$7$1;-><init>(Lcn/domob/ui/DViewManager$7;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    return-void
.end method
