.class public Lcn/domob/ui/l$a;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/l;


# direct methods
.method public constructor <init>(Lcn/domob/ui/l;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcn/domob/ui/l$a;->a:Lcn/domob/ui/l;

    .line 220
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 221
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-virtual {p0}, Lcn/domob/ui/l$a;->removeAllViews()V

    .line 226
    invoke-virtual {p0, p2}, Lcn/domob/ui/l$a;->addView(Landroid/view/View;)V

    .line 227
    return-object p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 234
    iget-object v0, p0, Lcn/domob/ui/l$a;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->b(Lcn/domob/ui/l;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    .line 235
    iget-object v0, p0, Lcn/domob/ui/l$a;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->b(Lcn/domob/ui/l;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    .line 236
    iget-object v0, p0, Lcn/domob/ui/l$a;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->b(Lcn/domob/ui/l;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    .line 237
    return-void
.end method
