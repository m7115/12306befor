.class Lcn/domob/ui/DViewManager$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/DViewManager$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/DViewManager$9;


# direct methods
.method constructor <init>(Lcn/domob/ui/DViewManager$9;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcn/domob/ui/DViewManager$9$1;->a:Lcn/domob/ui/DViewManager$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 527
    iget-object v0, p0, Lcn/domob/ui/DViewManager$9$1;->a:Lcn/domob/ui/DViewManager$9;

    iget-object v0, v0, Lcn/domob/ui/DViewManager$9;->b:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->n(Lcn/domob/ui/DViewManager;)V

    .line 528
    return-void
.end method
