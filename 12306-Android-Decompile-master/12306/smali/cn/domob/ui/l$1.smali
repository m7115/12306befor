.class Lcn/domob/ui/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/l;->a(ZLandroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/domob/wall/core/ControlInfo;Lcn/domob/wall/core/DService;)Landroid/view/View;
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
    .line 142
    iput-object p1, p0, Lcn/domob/ui/l$1;->a:Lcn/domob/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 163
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 145
    packed-switch p2, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcn/domob/ui/l$1;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->a(Lcn/domob/ui/l;)Lcn/domob/wall/core/DService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/DService;->setloadImgLock()V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v0, p0, Lcn/domob/ui/l$1;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->a(Lcn/domob/ui/l;)Lcn/domob/wall/core/DService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/DService;->setloadImgUnLock()V

    goto :goto_0

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcn/domob/ui/l$1;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->a(Lcn/domob/ui/l;)Lcn/domob/wall/core/DService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/DService;->setloadImgLock()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
