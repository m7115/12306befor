.class Lcn/domob/wall/core/r$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/r;

.field private b:Landroid/content/Context;

.field private c:Lcn/domob/wall/core/f;


# direct methods
.method protected constructor <init>(Lcn/domob/wall/core/r;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcn/domob/wall/core/r$g;->a:Lcn/domob/wall/core/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p2, p0, Lcn/domob/wall/core/r$g;->b:Landroid/content/Context;

    .line 523
    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/f;)V
    .locals 4
    .parameter

    .prologue
    .line 537
    invoke-virtual {p1}, Lcn/domob/wall/core/f;->f()I

    move-result v0

    .line 538
    invoke-static {}, Lcn/domob/wall/core/r;->b()Lcn/domob/wall/core/p;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001\u5c55\u73b0\u62a5\u544a\u8fd4\u56de: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 539
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 540
    invoke-static {}, Lcn/domob/wall/core/r;->b()Lcn/domob/wall/core/p;

    move-result-object v0

    const-string v1, "Imp report finish."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_0
    invoke-static {}, Lcn/domob/wall/core/r;->b()Lcn/domob/wall/core/p;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionFinished:respCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {p1}, Lcn/domob/wall/core/v;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v6

    .line 528
    invoke-static {}, Lcn/domob/wall/core/r;->b()Lcn/domob/wall/core/p;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u9001\u5c55\u73b0\u62a5\u544a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 529
    new-instance v0, Lcn/domob/wall/core/f;

    iget-object v1, p0, Lcn/domob/wall/core/r$g;->b:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v2, p3

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/f$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/r$g;->c:Lcn/domob/wall/core/f;

    .line 532
    iget-object v0, p0, Lcn/domob/wall/core/r$g;->c:Lcn/domob/wall/core/f;

    invoke-virtual {v0}, Lcn/domob/wall/core/f;->run()V

    .line 533
    return-void
.end method
