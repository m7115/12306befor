.class Lcn/domob/ui/DViewManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/DViewManager;->a(Ljava/lang/String;Lcn/domob/wall/core/DService$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/DService$ErrorCode;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/domob/ui/DViewManager;


# direct methods
.method constructor <init>(Lcn/domob/ui/DViewManager;Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcn/domob/ui/DViewManager$6;->c:Lcn/domob/ui/DViewManager;

    iput-object p2, p0, Lcn/domob/ui/DViewManager$6;->a:Lcn/domob/wall/core/DService$ErrorCode;

    iput-object p3, p0, Lcn/domob/ui/DViewManager$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcn/domob/ui/DViewManager$6;->c:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->a(Lcn/domob/ui/DViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 419
    invoke-static {}, Lcn/domob/ui/DViewManager;->a()Lcn/domob/ui/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9519\u8bef\u7801\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/DViewManager$6;->a:Lcn/domob/wall/core/DService$ErrorCode;

    invoke-virtual {v2}, Lcn/domob/wall/core/DService$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9519\u8bef\u63cf\u8ff0\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/DViewManager$6;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->e(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcn/domob/ui/DViewManager$6;->c:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->i(Lcn/domob/ui/DViewManager;)Lcn/domob/ui/l;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/ui/l;->a()Landroid/view/View;

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcn/domob/ui/DViewManager$6;->c:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->f(Lcn/domob/ui/DViewManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u94fe\u63a5\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
