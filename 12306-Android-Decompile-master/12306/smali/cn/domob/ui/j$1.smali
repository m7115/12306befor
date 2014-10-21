.class Lcn/domob/ui/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/j;->a(Lcn/domob/wall/core/DetailsPageInfo;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/DetailsPageInfo;

.field final synthetic b:Lcn/domob/ui/j;


# direct methods
.method constructor <init>(Lcn/domob/ui/j;Lcn/domob/wall/core/DetailsPageInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcn/domob/ui/j$1;->b:Lcn/domob/ui/j;

    iput-object p2, p0, Lcn/domob/ui/j$1;->a:Lcn/domob/wall/core/DetailsPageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 115
    invoke-static {}, Lcn/domob/ui/j;->b()Lcn/domob/ui/o;

    move-result-object v0

    const-string v1, "\u60a8\u70b9\u51fb\u4e86\u8be6\u60c5\u9875\u4e0b\u8f7d\u6309\u94ae"

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcn/domob/ui/j$1;->b:Lcn/domob/ui/j;

    invoke-static {v0}, Lcn/domob/ui/j;->a(Lcn/domob/ui/j;)Lcn/domob/wall/core/DService;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/j$1;->a:Lcn/domob/wall/core/DetailsPageInfo;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->onClickDetailsPageButton(Lcn/domob/wall/core/DetailsPageInfo;)V

    .line 118
    return-void
.end method
