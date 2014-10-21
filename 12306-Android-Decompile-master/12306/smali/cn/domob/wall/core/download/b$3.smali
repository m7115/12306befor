.class Lcn/domob/wall/core/download/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/download/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/download/b;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/download/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/download/b;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcn/domob/wall/core/download/b$3;->a:Lcn/domob/wall/core/download/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 500
    iget-object v0, p0, Lcn/domob/wall/core/download/b$3;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->n(Lcn/domob/wall/core/download/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 501
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 506
    invoke-static {}, Lcn/domob/wall/core/download/b;->e()Lcn/domob/wall/core/p;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/download/b$3;->a:Lcn/domob/wall/core/download/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/wall/core/download/b$3;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v3}, Lcn/domob/wall/core/download/b;->b(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d\u7ebf\u7a0b\u51fa\u9519\uff0c\u9519\u8bef\u539f\u56e0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcn/domob/wall/core/download/b$3;->a:Lcn/domob/wall/core/download/b;

    invoke-virtual {v0}, Lcn/domob/wall/core/download/b;->b()V

    .line 508
    invoke-static {}, Lcn/domob/wall/core/download/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcn/domob/wall/core/download/b$3;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0, p1}, Lcn/domob/wall/core/download/b;->b(Lcn/domob/wall/core/download/b;Ljava/lang/String;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcn/domob/wall/core/download/b$3;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->k(Lcn/domob/wall/core/download/b;)Lcn/domob/wall/core/download/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcn/domob/wall/core/download/b$3;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->k(Lcn/domob/wall/core/download/b;)Lcn/domob/wall/core/download/c;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p1}, Lcn/domob/wall/core/download/c;->a(ILjava/lang/String;)V

    .line 514
    :cond_1
    return-void
.end method
