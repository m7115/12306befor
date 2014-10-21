.class Lcn/domob/ui/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/n;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/domob/ui/n;


# direct methods
.method constructor <init>(Lcn/domob/ui/n;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcn/domob/ui/n$2;->b:Lcn/domob/ui/n;

    iput p2, p0, Lcn/domob/ui/n$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 185
    iget-object v0, p0, Lcn/domob/ui/n$2;->b:Lcn/domob/ui/n;

    invoke-static {v0}, Lcn/domob/ui/n;->a(Lcn/domob/ui/n;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcn/domob/ui/n$2;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    iget v1, p0, Lcn/domob/ui/n$2;->a:I

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/AdInfo;->setAdActualPosition(I)V

    .line 187
    iget-object v0, p0, Lcn/domob/ui/n$2;->b:Lcn/domob/ui/n;

    invoke-static {v0}, Lcn/domob/ui/n;->b(Lcn/domob/ui/n;)Lcn/domob/wall/core/DService;

    move-result-object v1

    iget-object v0, p0, Lcn/domob/ui/n$2;->b:Lcn/domob/ui/n;

    invoke-static {v0}, Lcn/domob/ui/n;->a(Lcn/domob/ui/n;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcn/domob/ui/n$2;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/DService;->onClickWallItemButton(Lcn/domob/wall/core/AdInfo;)V

    .line 189
    return-void
.end method
