.class Lcn/domob/ui/DViewManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/DService$ShowDetailsPageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/DViewManager;->addViewAndShow()V
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
    .line 320
    iput-object p1, p0, Lcn/domob/ui/DViewManager$3;->a:Lcn/domob/ui/DViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDetailsPage(Lcn/domob/wall/core/DetailsPageInfo;)V
    .locals 2
    .parameter "detailsPage"

    .prologue
    .line 325
    invoke-static {}, Lcn/domob/ui/DViewManager;->a()Lcn/domob/ui/o;

    move-result-object v0

    const-string v1, "\u6253\u5f00\u5e7f\u544a\u8be6\u60c5\u9875\u9762"

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 326
    if-eqz p1, :cond_0

    .line 327
    iget-object v0, p0, Lcn/domob/ui/DViewManager$3;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0, p1}, Lcn/domob/ui/DViewManager;->a(Lcn/domob/ui/DViewManager;Lcn/domob/wall/core/DetailsPageInfo;)V

    .line 329
    :cond_0
    return-void
.end method
