.class Lcn/domob/android/offerwall/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/offerwall/d$a;
.implements Lcn/domob/android/offerwall/g$a;


# static fields
.field private static a:Lcn/domob/android/offerwall/m;


# instance fields
.field private b:Lcn/domob/android/offerwall/DomobOfferWallView;

.field private c:Lcn/domob/android/offerwall/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/offerwall/h;->a:Lcn/domob/android/offerwall/m;

    return-void
.end method

.method constructor <init>(Lcn/domob/android/offerwall/DomobOfferWallView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/domob/android/offerwall/h;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    iget-object v0, p0, Lcn/domob/android/offerwall/h;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/DomobOfferWallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/domob/android/offerwall/d;->a(Landroid/content/Context;Lcn/domob/android/offerwall/d$a;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/offerwall/h;)Lcn/domob/android/offerwall/DomobOfferWallView;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/h;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/offerwall/h;Lcn/domob/android/offerwall/k;)Lcn/domob/android/offerwall/k;
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/h;->c:Lcn/domob/android/offerwall/k;

    return-object p1
.end method

.method static synthetic d()Lcn/domob/android/offerwall/m;
    .locals 1

    sget-object v0, Lcn/domob/android/offerwall/h;->a:Lcn/domob/android/offerwall/m;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    new-instance v0, Lcn/domob/android/offerwall/j;

    iget-object v1, p0, Lcn/domob/android/offerwall/h;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-virtual {v1}, Lcn/domob/android/offerwall/DomobOfferWallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/j;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcn/domob/android/offerwall/h$1;

    invoke-direct {v1, p0}, Lcn/domob/android/offerwall/h$1;-><init>(Lcn/domob/android/offerwall/h;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/j;->a(Lcn/domob/android/offerwall/j$a;)V

    return-void
.end method

.method protected a(I)V
    .locals 3

    iget-object v0, p0, Lcn/domob/android/offerwall/h;->c:Lcn/domob/android/offerwall/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/offerwall/h;->c:Lcn/domob/android/offerwall/k;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/k;->e()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/offerwall/h;->c:Lcn/domob/android/offerwall/k;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/k;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/offerwall/h;->c:Lcn/domob/android/offerwall/k;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/k;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/offerwall/k$a;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/k$a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcn/domob/android/offerwall/g;

    iget-object v2, p0, Lcn/domob/android/offerwall/h;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-virtual {v2}, Lcn/domob/android/offerwall/DomobOfferWallView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lcn/domob/android/offerwall/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/offerwall/g$a;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/h;->c:Lcn/domob/android/offerwall/k;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/k;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/offerwall/k$a;

    invoke-virtual {v1, p1}, Lcn/domob/android/offerwall/g;->a(I)V

    invoke-virtual {v0}, Lcn/domob/android/offerwall/k$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/offerwall/g;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/domob/android/offerwall/k$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/g;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcn/domob/android/offerwall/g;->e()V

    :cond_1
    return-void
.end method

.method public a(Lcn/domob/android/offerwall/g;)V
    .locals 3

    new-instance v0, Lcn/domob/android/offerwall/i$a;

    invoke-direct {v0}, Lcn/domob/android/offerwall/i$a;-><init>()V

    const-string v1, "installed"

    iput-object v1, v0, Lcn/domob/android/offerwall/i$a;->a:Ljava/lang/String;

    iget-object v1, v0, Lcn/domob/android/offerwall/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/domob/android/offerwall/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://duomeng.cn/api/12306/rp"

    iput-object v1, v0, Lcn/domob/android/offerwall/i$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/domob/android/offerwall/h;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-virtual {v1}, Lcn/domob/android/offerwall/DomobOfferWallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/domob/android/offerwall/i;->a(Landroid/content/Context;Lcn/domob/android/offerwall/i$a;)V

    return-void
.end method

.method protected b()V
    .locals 4

    new-instance v1, Lcn/domob/android/offerwall/i$a;

    invoke-direct {v1}, Lcn/domob/android/offerwall/i$a;-><init>()V

    const-string v0, "show_list"

    iput-object v0, v1, Lcn/domob/android/offerwall/i$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcn/domob/android/offerwall/h;->c:Lcn/domob/android/offerwall/k;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/k;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v1, Lcn/domob/android/offerwall/i$a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "http://duomeng.cn/api/12306/rp"

    iput-object v0, v1, Lcn/domob/android/offerwall/i$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcn/domob/android/offerwall/h;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/DomobOfferWallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/domob/android/offerwall/i;->a(Landroid/content/Context;Lcn/domob/android/offerwall/i$a;)V

    return-void
.end method

.method protected b(I)V
    .locals 3

    new-instance v0, Lcn/domob/android/offerwall/i$a;

    invoke-direct {v0}, Lcn/domob/android/offerwall/i$a;-><init>()V

    const-string v1, "show_detail"

    iput-object v1, v0, Lcn/domob/android/offerwall/i$a;->a:Ljava/lang/String;

    iget-object v1, v0, Lcn/domob/android/offerwall/i$a;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://duomeng.cn/api/12306/rp"

    iput-object v1, v0, Lcn/domob/android/offerwall/i$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/domob/android/offerwall/h;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-virtual {v1}, Lcn/domob/android/offerwall/DomobOfferWallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/domob/android/offerwall/i;->a(Landroid/content/Context;Lcn/domob/android/offerwall/i$a;)V

    return-void
.end method

.method public b(Lcn/domob/android/offerwall/g;)V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 2

    new-instance v0, Lcn/domob/android/offerwall/i$a;

    invoke-direct {v0}, Lcn/domob/android/offerwall/i$a;-><init>()V

    const-string v1, "close_list"

    iput-object v1, v0, Lcn/domob/android/offerwall/i$a;->a:Ljava/lang/String;

    const-string v1, "http://duomeng.cn/api/12306/rp"

    iput-object v1, v0, Lcn/domob/android/offerwall/i$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/domob/android/offerwall/h;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-virtual {v1}, Lcn/domob/android/offerwall/DomobOfferWallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/domob/android/offerwall/i;->a(Landroid/content/Context;Lcn/domob/android/offerwall/i$a;)V

    return-void
.end method

.method public c(Lcn/domob/android/offerwall/g;)V
    .locals 3

    new-instance v0, Lcn/domob/android/offerwall/i$a;

    invoke-direct {v0}, Lcn/domob/android/offerwall/i$a;-><init>()V

    const-string v1, "download_finish"

    iput-object v1, v0, Lcn/domob/android/offerwall/i$a;->a:Ljava/lang/String;

    iget-object v1, v0, Lcn/domob/android/offerwall/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcn/domob/android/offerwall/g;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "http://duomeng.cn/api/12306/rp"

    iput-object v1, v0, Lcn/domob/android/offerwall/i$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/domob/android/offerwall/h;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-virtual {v1}, Lcn/domob/android/offerwall/DomobOfferWallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/domob/android/offerwall/i;->a(Landroid/content/Context;Lcn/domob/android/offerwall/i$a;)V

    return-void
.end method

.method public d(Lcn/domob/android/offerwall/g;)V
    .locals 0

    return-void
.end method

.method public e(Lcn/domob/android/offerwall/g;)V
    .locals 4

    invoke-virtual {p1}, Lcn/domob/android/offerwall/g;->a()I

    move-result v1

    iget-object v0, p0, Lcn/domob/android/offerwall/h;->c:Lcn/domob/android/offerwall/k;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/k;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/offerwall/k$a;

    new-instance v2, Lcn/domob/android/offerwall/i$a;

    invoke-direct {v2}, Lcn/domob/android/offerwall/i$a;-><init>()V

    const-string v3, "download"

    iput-object v3, v2, Lcn/domob/android/offerwall/i$a;->a:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcn/domob/android/offerwall/i$a;->b:Ljava/util/ArrayList;

    iget-object v3, v2, Lcn/domob/android/offerwall/i$a;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcn/domob/android/offerwall/k$a;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "http://duomeng.cn/api/12306/rp"

    :goto_0
    iput-object v0, v2, Lcn/domob/android/offerwall/i$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcn/domob/android/offerwall/h;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/DomobOfferWallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcn/domob/android/offerwall/i;->a(Landroid/content/Context;Lcn/domob/android/offerwall/i$a;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcn/domob/android/offerwall/k$a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f(Lcn/domob/android/offerwall/g;)V
    .locals 0

    return-void
.end method

.method public g(Lcn/domob/android/offerwall/g;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/domob/android/offerwall/h;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/DomobOfferWallView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "App\u4e0b\u8f7d\u4e2d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/h;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public h(Lcn/domob/android/offerwall/g;)V
    .locals 0

    return-void
.end method

.method public i(Lcn/domob/android/offerwall/g;)V
    .locals 1

    invoke-static {}, Lcn/domob/android/offerwall/d;->a()Lcn/domob/android/offerwall/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/android/offerwall/d;->a(Lcn/domob/android/offerwall/g;)V

    return-void
.end method
