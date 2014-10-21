.class Lcn/domob/ui/l$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/l;->a(Landroid/view/View;)Landroid/view/View;
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
    .line 369
    iput-object p1, p0, Lcn/domob/ui/l$9;->a:Lcn/domob/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 373
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 374
    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcn/domob/ui/l$9;->a:Lcn/domob/ui/l;

    invoke-static {v0, v2}, Lcn/domob/ui/l;->a(Lcn/domob/ui/l;Z)Z

    .line 379
    :cond_0
    :goto_0
    return v1

    .line 376
    :cond_1
    if-ne v0, v2, :cond_0

    .line 377
    iget-object v0, p0, Lcn/domob/ui/l$9;->a:Lcn/domob/ui/l;

    invoke-static {v0, v1}, Lcn/domob/ui/l;->a(Lcn/domob/ui/l;Z)Z

    goto :goto_0
.end method
