.class Lcn/domob/ui/DViewManager$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 477
    iput-object p1, p0, Lcn/domob/ui/DViewManager$8$1;->a:Lcn/domob/ui/DViewManager$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 481
    invoke-static {}, Lcn/domob/ui/DViewManager;->a()Lcn/domob/ui/o;

    move-result-object v0

    const-string v1, "\u5173\u95ed\u5e94\u7528\u5899\u9996\u9875"

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcn/domob/ui/DViewManager$8$1;->a:Lcn/domob/ui/DViewManager$8;

    iget-object v0, v0, Lcn/domob/ui/DViewManager$8;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->l(Lcn/domob/ui/DViewManager;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 483
    return-void
.end method
