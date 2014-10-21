.class Lcn/domob/wall/core/r$c;
.super Lcn/domob/wall/core/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic e:Lcn/domob/wall/core/r;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcn/domob/wall/core/r$c;->e:Lcn/domob/wall/core/r;

    .line 423
    sget-object v0, Lcn/domob/wall/core/r$n;->d:Lcn/domob/wall/core/r$n;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/domob/wall/core/r$a;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$n;)V

    .line 424
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 462
    new-instance v1, Lcn/domob/wall/core/r$k;

    iget-object v0, p0, Lcn/domob/wall/core/r$c;->e:Lcn/domob/wall/core/r;

    invoke-direct {v1, v0}, Lcn/domob/wall/core/r$k;-><init>(Lcn/domob/wall/core/r;)V

    .line 463
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v2, "online"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    invoke-static {}, Lcn/domob/wall/core/k;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/wall/core/r$c;->a:Ljava/util/HashMap;

    sget-object v3, Lcn/domob/wall/core/g;->k:Ljava/lang/String;

    invoke-static {v3}, Lcn/domob/wall/core/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcn/domob/wall/core/r$k;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 470
    :goto_0
    iget-object v0, p0, Lcn/domob/wall/core/r$c;->b:Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcn/domob/wall/core/r$c;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "details_down"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-static {}, Lcn/domob/wall/core/k;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/wall/core/r$c;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcn/domob/wall/core/r$c;->b:Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v3}, Lcn/domob/wall/core/AdInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcn/domob/wall/core/r$k;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 476
    :cond_0
    return-void

    .line 467
    :cond_1
    invoke-static {}, Lcn/domob/wall/core/k;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/wall/core/r$c;->a:Ljava/util/HashMap;

    sget-object v3, Lcn/domob/wall/core/g;->o:Ljava/lang/String;

    invoke-static {v3}, Lcn/domob/wall/core/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcn/domob/wall/core/r$k;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcn/domob/wall/core/r$c;->a:Ljava/util/HashMap;

    const-string v1, "order"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-void
.end method

.method public a(Lcn/domob/wall/core/r$j;)V
    .locals 3
    .parameter

    .prologue
    .line 427
    const-string v0, ""

    .line 428
    sget-object v1, Lcn/domob/wall/core/r$1;->e:[I

    invoke-virtual {p1}, Lcn/domob/wall/core/r$j;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 444
    :goto_0
    iget-object v1, p0, Lcn/domob/wall/core/r$c;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    return-void

    .line 430
    :pswitch_0
    const-string v0, "banner_ad"

    goto :goto_0

    .line 433
    :pswitch_1
    const-string v0, "list_ad"

    goto :goto_0

    .line 436
    :pswitch_2
    const-string v0, "listad_down"

    goto :goto_0

    .line 439
    :pswitch_3
    const-string v0, "details_down"

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcn/domob/wall/core/r$c;->a:Ljava/util/HashMap;

    const-string v1, "posit"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    return-void
.end method
