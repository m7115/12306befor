.class Lcn/domob/wall/core/r$d;
.super Lcn/domob/wall/core/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic e:Lcn/domob/wall/core/r;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcn/domob/wall/core/r$d;->e:Lcn/domob/wall/core/r;

    .line 305
    sget-object v0, Lcn/domob/wall/core/r$n;->b:Lcn/domob/wall/core/r$n;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/domob/wall/core/r$a;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$n;)V

    .line 306
    iget-object v0, p0, Lcn/domob/wall/core/r$d;->a:Ljava/util/HashMap;

    const-string v1, "vc"

    invoke-virtual {p3}, Lcn/domob/wall/core/AdInfo;->getAdVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lcn/domob/wall/core/r$d;->a:Ljava/util/HashMap;

    const-string v1, "vn"

    invoke-virtual {p3}, Lcn/domob/wall/core/AdInfo;->getAdVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcn/domob/wall/core/r$d;->a:Ljava/util/HashMap;

    const-string v1, "pkg"

    invoke-virtual {p3}, Lcn/domob/wall/core/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcn/domob/wall/core/r$d;->a:Ljava/util/HashMap;

    const-string v1, "id"

    invoke-virtual {p3}, Lcn/domob/wall/core/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method


# virtual methods
.method a(Lcn/domob/wall/core/r$l;)V
    .locals 3
    .parameter

    .prologue
    .line 315
    const-string v0, ""

    .line 316
    sget-object v1, Lcn/domob/wall/core/r$1;->b:[I

    invoke-virtual {p1}, Lcn/domob/wall/core/r$l;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 341
    :goto_0
    iget-object v1, p0, Lcn/domob/wall/core/r$d;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    return-void

    .line 318
    :pswitch_0
    const-string v0, "download_start"

    goto :goto_0

    .line 321
    :pswitch_1
    const-string v0, "download_repeat"

    goto :goto_0

    .line 324
    :pswitch_2
    const-string v0, "download_finish"

    goto :goto_0

    .line 327
    :pswitch_3
    const-string v0, "download_failed"

    goto :goto_0

    .line 330
    :pswitch_4
    const-string v0, "download_cancel"

    goto :goto_0

    .line 333
    :pswitch_5
    const-string v0, "install_success"

    goto :goto_0

    .line 336
    :pswitch_6
    const-string v0, "run"

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
