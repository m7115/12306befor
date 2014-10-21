.class Lcn/domob/wall/core/r$f;
.super Lcn/domob/wall/core/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic e:Lcn/domob/wall/core/r;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcn/domob/wall/core/r$f;->e:Lcn/domob/wall/core/r;

    .line 238
    sget-object v0, Lcn/domob/wall/core/r$n;->e:Lcn/domob/wall/core/r$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/domob/wall/core/r$a;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/r$n;)V

    .line 239
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 243
    new-instance v0, Lcn/domob/wall/core/r$g;

    iget-object v1, p0, Lcn/domob/wall/core/r$f;->e:Lcn/domob/wall/core/r;

    invoke-static {}, Lcn/domob/wall/core/k;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/r$g;-><init>(Lcn/domob/wall/core/r;Landroid/content/Context;)V

    .line 245
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    const-string v2, "online"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcn/domob/wall/core/r$f;->a:Ljava/util/HashMap;

    sget-object v2, Lcn/domob/wall/core/r$n;->e:Lcn/domob/wall/core/r$n;

    invoke-virtual {v2}, Lcn/domob/wall/core/r$n;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/domob/wall/core/g;->l:Ljava/lang/String;

    invoke-static {v3}, Lcn/domob/wall/core/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/r$g;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcn/domob/wall/core/r$f;->a:Ljava/util/HashMap;

    sget-object v2, Lcn/domob/wall/core/r$n;->e:Lcn/domob/wall/core/r$n;

    invoke-virtual {v2}, Lcn/domob/wall/core/r$n;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/domob/wall/core/g;->p:Ljava/lang/String;

    invoke-static {v3}, Lcn/domob/wall/core/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/r$g;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcn/domob/wall/core/r$f;->a:Ljava/util/HashMap;

    const-string v1, "tr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcn/domob/wall/core/r$f;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p1}, Lcn/domob/wall/core/r$f;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcn/domob/wall/core/r$f;->a:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-void
.end method
