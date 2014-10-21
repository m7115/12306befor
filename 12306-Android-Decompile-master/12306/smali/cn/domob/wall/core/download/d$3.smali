.class Lcn/domob/wall/core/download/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/download/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/download/d;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/download/d;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/download/d;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->c(Lcn/domob/wall/core/download/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d \u3002\u3002\u3002"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v1}, Lcn/domob/wall/core/download/d;->b(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/d$a;->k(Lcn/domob/wall/core/AdInfo;)V

    .line 187
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    const/16 v0, 0x200

    if-ne p1, v0, :cond_1

    .line 204
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v1}, Lcn/domob/wall/core/download/d;->b(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/d$a;->m(Lcn/domob/wall/core/AdInfo;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const/16 v0, 0x201

    if-ne p1, v0, :cond_2

    .line 207
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v1}, Lcn/domob/wall/core/download/d;->b(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/d$a;->n(Lcn/domob/wall/core/AdInfo;)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v1}, Lcn/domob/wall/core/download/d;->b(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/d$a;->j(Lcn/domob/wall/core/AdInfo;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v1}, Lcn/domob/wall/core/download/d;->b(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/d$a;->i(Lcn/domob/wall/core/AdInfo;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v1}, Lcn/domob/wall/core/download/d;->b(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/d$a;->o(Lcn/domob/wall/core/AdInfo;)V

    .line 198
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v0}, Lcn/domob/wall/core/download/d;->a(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/download/d$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/download/d$3;->a:Lcn/domob/wall/core/download/d;

    invoke-static {v1}, Lcn/domob/wall/core/download/d;->b(Lcn/domob/wall/core/download/d;)Lcn/domob/wall/core/AdInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/d$a;->l(Lcn/domob/wall/core/AdInfo;)V

    .line 221
    :cond_0
    return-void
.end method
