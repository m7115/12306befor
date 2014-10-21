.class Lcn/domob/wall/core/r$o;
.super Lcn/domob/wall/core/r$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "o"
.end annotation


# instance fields
.field final synthetic e:Lcn/domob/wall/core/r;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcn/domob/wall/core/r$o;->e:Lcn/domob/wall/core/r;

    .line 274
    sget-object v0, Lcn/domob/wall/core/r$n;->f:Lcn/domob/wall/core/r$n;

    invoke-direct {p0, p1, p2, v0}, Lcn/domob/wall/core/r$a;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/r$n;)V

    .line 275
    iget-object v0, p0, Lcn/domob/wall/core/r$o;->a:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p2}, Lcn/domob/wall/core/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcn/domob/wall/core/r$o;->a:Ljava/util/HashMap;

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcn/domob/wall/core/r$o;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 277
    return-void
.end method


# virtual methods
.method a(Lcn/domob/wall/core/DService$ReportUserActionType;)V
    .locals 3
    .parameter

    .prologue
    .line 280
    const-string v0, ""

    .line 281
    sget-object v1, Lcn/domob/wall/core/r$1;->a:[I

    invoke-virtual {p1}, Lcn/domob/wall/core/DService$ReportUserActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 294
    :goto_0
    iget-object v1, p0, Lcn/domob/wall/core/r$o;->a:Ljava/util/HashMap;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void

    .line 283
    :pswitch_0
    const-string v0, "entry"

    goto :goto_0

    .line 286
    :pswitch_1
    const-string v0, "exit"

    goto :goto_0

    .line 289
    :pswitch_2
    const-string v0, "pgdn"

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
