.class Lcn/domob/ui/DViewManager$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/DViewManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/DViewManager$5;


# direct methods
.method constructor <init>(Lcn/domob/ui/DViewManager$5;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcn/domob/ui/DViewManager$5$1;->a:Lcn/domob/ui/DViewManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 400
    invoke-static {}, Lcn/domob/ui/DViewManager;->a()Lcn/domob/ui/o;

    move-result-object v0

    const-string v1, "\u6253\u5f00\u5e94\u7528\u5899\u9996\u9875"

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcn/domob/ui/DViewManager$5$1;->a:Lcn/domob/ui/DViewManager$5;

    iget-object v0, v0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->e(Lcn/domob/ui/DViewManager;)Lcn/domob/wall/core/DService;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->ENTRY:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 403
    iget-object v0, p0, Lcn/domob/ui/DViewManager$5$1;->a:Lcn/domob/ui/DViewManager$5;

    iget-object v0, v0, Lcn/domob/ui/DViewManager$5;->a:Lcn/domob/ui/DViewManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/ui/DViewManager;->b(Lcn/domob/ui/DViewManager;Z)V

    .line 404
    return-void
.end method
