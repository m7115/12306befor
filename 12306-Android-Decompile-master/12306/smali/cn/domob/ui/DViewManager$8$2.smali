.class Lcn/domob/ui/DViewManager$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/DViewManager$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/DViewManager$8;


# direct methods
.method constructor <init>(Lcn/domob/ui/DViewManager$8;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcn/domob/ui/DViewManager$8$2;->a:Lcn/domob/ui/DViewManager$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 496
    invoke-static {}, Lcn/domob/ui/DViewManager;->a()Lcn/domob/ui/o;

    move-result-object v0

    const-string v1, "\u5e94\u7528\u5899\u5173\u95ed"

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcn/domob/ui/DViewManager$8$2;->a:Lcn/domob/ui/DViewManager$8;

    iget-object v0, v0, Lcn/domob/ui/DViewManager$8;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->e(Lcn/domob/ui/DViewManager;)Lcn/domob/wall/core/DService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/DService;->wallTurnHide()V

    .line 500
    iget-object v0, p0, Lcn/domob/ui/DViewManager$8$2;->a:Lcn/domob/ui/DViewManager$8;

    iget-object v0, v0, Lcn/domob/ui/DViewManager$8;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->e(Lcn/domob/ui/DViewManager;)Lcn/domob/wall/core/DService;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->EXIT:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 502
    iget-object v0, p0, Lcn/domob/ui/DViewManager$8$2;->a:Lcn/domob/ui/DViewManager$8;

    iget-object v0, v0, Lcn/domob/ui/DViewManager$8;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->f(Lcn/domob/ui/DViewManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 503
    return-void
.end method
