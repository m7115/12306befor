.class Lcn/domob/wall/core/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcn/domob/wall/core/AdInfo;

.field c:Lcn/domob/wall/core/k;

.field final synthetic d:Lcn/domob/wall/core/r;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$n;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcn/domob/wall/core/r$a;->d:Lcn/domob/wall/core/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    .line 151
    iput-object p2, p0, Lcn/domob/wall/core/r$a;->c:Lcn/domob/wall/core/k;

    .line 152
    iput-object p3, p0, Lcn/domob/wall/core/r$a;->b:Lcn/domob/wall/core/AdInfo;

    .line 153
    iget-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    const-string v1, "sid"

    invoke-virtual {p3}, Lcn/domob/wall/core/AdInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    const-string v1, "id"

    invoke-virtual {p3}, Lcn/domob/wall/core/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcn/domob/wall/core/AdInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/domob/wall/core/r$a;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcn/domob/wall/core/k;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcn/domob/wall/core/r$a;->a(Landroid/content/Context;Lcn/domob/wall/core/r$n;)V

    .line 157
    return-void
.end method

.method constructor <init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/r$n;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcn/domob/wall/core/r$a;->d:Lcn/domob/wall/core/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    .line 137
    iput-object p2, p0, Lcn/domob/wall/core/r$a;->c:Lcn/domob/wall/core/k;

    .line 138
    invoke-static {}, Lcn/domob/wall/core/k;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcn/domob/wall/core/r$a;->a(Landroid/content/Context;Lcn/domob/wall/core/r$n;)V

    .line 139
    return-void
.end method

.method private a(Landroid/content/Context;Lcn/domob/wall/core/r$n;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 164
    :try_start_0
    iget-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    const-string v1, "sdk"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    const-string v1, "rt"

    invoke-virtual {p2}, Lcn/domob/wall/core/r$n;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    const-string v1, "v"

    const-string v2, "%s-%s-%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "20131031"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "android"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "20130801"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    const-string v1, "sv"

    const-string v2, "010100"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    const-string v1, "idv"

    invoke-static {p1}, Lcn/domob/wall/core/s;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    const-string v1, "ua"

    invoke-static {p1}, Lcn/domob/wall/core/s;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    const-string v1, "ipb"

    iget-object v2, p0, Lcn/domob/wall/core/r$a;->c:Lcn/domob/wall/core/k;

    invoke-virtual {v2}, Lcn/domob/wall/core/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    const-string v1, "ppid"

    iget-object v2, p0, Lcn/domob/wall/core/r$a;->c:Lcn/domob/wall/core/k;

    invoke-virtual {v2}, Lcn/domob/wall/core/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {p1}, Lcn/domob/wall/core/s;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    const-string v2, "dma"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/domob/wall/core/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-static {}, Lcn/domob/wall/core/r;->b()Lcn/domob/wall/core/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 219
    new-instance v0, Lcn/domob/wall/core/r$k;

    iget-object v1, p0, Lcn/domob/wall/core/r$a;->d:Lcn/domob/wall/core/r;

    invoke-direct {v0, v1}, Lcn/domob/wall/core/r$k;-><init>(Lcn/domob/wall/core/r;)V

    .line 220
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    const-string v2, "online"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-static {}, Lcn/domob/wall/core/k;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    sget-object v3, Lcn/domob/wall/core/g;->j:Ljava/lang/String;

    invoke-static {v3}, Lcn/domob/wall/core/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/r$k;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {}, Lcn/domob/wall/core/k;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/r$a;->a:Ljava/util/HashMap;

    sget-object v3, Lcn/domob/wall/core/g;->n:Ljava/lang/String;

    invoke-static {v3}, Lcn/domob/wall/core/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/r$k;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcn/domob/wall/core/r$a;->c:Lcn/domob/wall/core/k;

    invoke-virtual {v0}, Lcn/domob/wall/core/k;->c()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {}, Lcn/domob/wall/core/k;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/domob/wall/core/s;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v0, v1, p2}, Lcn/domob/wall/core/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/wall/core/o$a;

    move-result-object v2

    .line 207
    const-string v3, "tr"

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v3, "ts"

    invoke-virtual {v2}, Lcn/domob/wall/core/o$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v3, "rnd"

    invoke-virtual {v2}, Lcn/domob/wall/core/o$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v3, "vcode"

    invoke-virtual {v2}, Lcn/domob/wall/core/o$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v2, "ipb"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "ua"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method
