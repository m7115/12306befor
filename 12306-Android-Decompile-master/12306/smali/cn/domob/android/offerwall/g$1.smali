.class Lcn/domob/android/offerwall/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/offerwall/g;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/offerwall/g;


# direct methods
.method constructor <init>(Lcn/domob/android/offerwall/g;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->a(Lcn/domob/android/offerwall/g;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d \u3002\u3002\u3002"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-interface {v0, v1}, Lcn/domob/android/offerwall/g$a;->e(Lcn/domob/android/offerwall/g;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-interface {v0, v1}, Lcn/domob/android/offerwall/g$a;->g(Lcn/domob/android/offerwall/g;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x201

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-interface {v0, v1}, Lcn/domob/android/offerwall/g$a;->h(Lcn/domob/android/offerwall/g;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-interface {v0, v1}, Lcn/domob/android/offerwall/g$a;->d(Lcn/domob/android/offerwall/g;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-interface {v0, v1}, Lcn/domob/android/offerwall/g$a;->c(Lcn/domob/android/offerwall/g;)V

    :cond_0
    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-interface {v0, v1}, Lcn/domob/android/offerwall/g$a;->i(Lcn/domob/android/offerwall/g;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-static {v0}, Lcn/domob/android/offerwall/g;->b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/offerwall/g$1;->a:Lcn/domob/android/offerwall/g;

    invoke-interface {v0, v1}, Lcn/domob/android/offerwall/g$a;->f(Lcn/domob/android/offerwall/g;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
