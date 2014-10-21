.class Lcn/domob/wall/core/r$h;
.super Lcn/domob/wall/core/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
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
    .line 384
    iput-object p1, p0, Lcn/domob/wall/core/r$h;->e:Lcn/domob/wall/core/r;

    .line 385
    sget-object v0, Lcn/domob/wall/core/r$n;->g:Lcn/domob/wall/core/r$n;

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/domob/wall/core/r$a;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$n;)V

    .line 386
    return-void
.end method


# virtual methods
.method public a(Lcn/domob/wall/core/r$m;)V
    .locals 3
    .parameter

    .prologue
    .line 389
    const-string v0, ""

    .line 390
    sget-object v1, Lcn/domob/wall/core/r$1;->d:[I

    invoke-virtual {p1}, Lcn/domob/wall/core/r$m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 406
    :goto_0
    iget-object v1, p0, Lcn/domob/wall/core/r$h;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    return-void

    .line 392
    :pswitch_0
    const-string v0, "la_success"

    goto :goto_0

    .line 395
    :pswitch_1
    const-string v0, "la_failed"

    goto :goto_0

    .line 398
    :pswitch_2
    const-string v0, "la_failsafe_success"

    goto :goto_0

    .line 401
    :pswitch_3
    const-string v0, "la_failsafe_failed"

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 410
    if-eqz p1, :cond_0

    .line 411
    iget-object v0, p0, Lcn/domob/wall/core/r$h;->a:Ljava/util/HashMap;

    const-string v1, "failsafe"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_0
    return-void
.end method
