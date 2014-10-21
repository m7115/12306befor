.class Lcn/domob/wall/core/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/a/b;->a()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/a/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcn/domob/wall/core/a/b$1;->a:Lcn/domob/wall/core/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 209
    iget-object v0, p0, Lcn/domob/wall/core/a/b$1;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->b(Lcn/domob/wall/core/a/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a/b$1;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v1}, Lcn/domob/wall/core/a/b;->a(Lcn/domob/wall/core/a/b;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcn/domob/wall/core/a/b$1;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcn/domob/wall/core/a/b$1;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a/b$1;->a:Lcn/domob/wall/core/a/b;

    iget-object v1, v1, Lcn/domob/wall/core/a/b;->a:Lcn/domob/wall/core/AdInfo;

    invoke-interface {v0, v1}, Lcn/domob/wall/core/a/b$a;->h(Lcn/domob/wall/core/AdInfo;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcn/domob/wall/core/a/b$1;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->d(Lcn/domob/wall/core/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcn/domob/wall/core/a/b$1;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcn/domob/wall/core/a/b$1;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a/b$1;->a:Lcn/domob/wall/core/a/b;

    iget-object v1, v1, Lcn/domob/wall/core/a/b;->a:Lcn/domob/wall/core/AdInfo;

    invoke-interface {v0, v1}, Lcn/domob/wall/core/a/b$a;->g(Lcn/domob/wall/core/AdInfo;)V

    .line 221
    :cond_1
    return-void
.end method
