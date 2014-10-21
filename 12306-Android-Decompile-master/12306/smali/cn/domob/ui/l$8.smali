.class Lcn/domob/ui/l$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/l;->a(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/l;


# direct methods
.method constructor <init>(Lcn/domob/ui/l;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcn/domob/ui/l$8;->a:Lcn/domob/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/domob/ui/l$8;->a:Lcn/domob/ui/l;

    invoke-static {v2}, Lcn/domob/ui/l;->c(Lcn/domob/ui/l;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcn/domob/ui/l$8;->a:Lcn/domob/ui/l;

    invoke-static {v2}, Lcn/domob/ui/l;->d(Lcn/domob/ui/l;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcn/domob/ui/l$8;->a:Lcn/domob/ui/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/domob/ui/l;->a(Lcn/domob/ui/l;J)J

    .line 359
    iget-object v0, p0, Lcn/domob/ui/l$8;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->e(Lcn/domob/ui/l;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/l$8;->a:Lcn/domob/ui/l;

    invoke-static {v1}, Lcn/domob/ui/l;->e(Lcn/domob/ui/l;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    iget-object v1, p0, Lcn/domob/ui/l$8;->a:Lcn/domob/ui/l;

    invoke-static {v1}, Lcn/domob/ui/l;->e(Lcn/domob/ui/l;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/AdInfo;->setAdActualPosition(I)V

    .line 363
    iget-object v0, p0, Lcn/domob/ui/l$8;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->a(Lcn/domob/ui/l;)Lcn/domob/wall/core/DService;

    move-result-object v1

    iget-object v0, p0, Lcn/domob/ui/l$8;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->e(Lcn/domob/ui/l;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/ui/l$8;->a:Lcn/domob/ui/l;

    invoke-static {v2}, Lcn/domob/ui/l;->e(Lcn/domob/ui/l;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v2, p3, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/DService;->onClickWallItem(Lcn/domob/wall/core/AdInfo;)V

    goto :goto_0
.end method
