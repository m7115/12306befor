.class Lcn/domob/wall/core/r$b;
.super Lcn/domob/wall/core/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
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
    .line 350
    iput-object p1, p0, Lcn/domob/wall/core/r$b;->e:Lcn/domob/wall/core/r;

    .line 351
    sget-object v0, Lcn/domob/wall/core/r$n;->c:Lcn/domob/wall/core/r$n;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/domob/wall/core/r$a;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$n;)V

    .line 352
    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/r$i;)V
    .locals 3
    .parameter

    .prologue
    .line 355
    const-string v0, ""

    .line 356
    sget-object v1, Lcn/domob/wall/core/r$1;->c:[I

    invoke-virtual {p1}, Lcn/domob/wall/core/r$i;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 375
    :goto_0
    iget-object v1, p0, Lcn/domob/wall/core/r$b;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    return-void

    .line 358
    :pswitch_0
    const-string v0, "load_success"

    goto :goto_0

    .line 361
    :pswitch_1
    const-string v0, "load_failed"

    goto :goto_0

    .line 364
    :pswitch_2
    const-string v0, "load_cancel"

    goto :goto_0

    .line 367
    :pswitch_3
    const-string v0, "close_lp"

    goto :goto_0

    .line 370
    :pswitch_4
    const-string v0, "lp_url"

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
