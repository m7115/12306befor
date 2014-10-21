.class public Lcn/domob/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/l$b;,
        Lcn/domob/ui/l$a;
    }
.end annotation


# static fields
.field private static h:Lcn/domob/ui/o;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/ProgressBar;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/view/View;

.field private F:Landroid/widget/ProgressBar;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/view/View;

.field private I:Landroid/widget/ProgressBar;

.field private J:Landroid/widget/TextView;

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:I

.field private Y:Landroid/widget/LinearLayout;

.field private Z:Z

.field a:Landroid/widget/RelativeLayout;

.field private aa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ab:I

.field private ac:Ljava/util/Timer;

.field private ad:Lcn/domob/ui/l$b;

.field private ae:Z

.field private af:I

.field private ag:Z

.field private ah:J

.field b:Lcn/domob/ui/l$a;

.field c:Landroid/widget/AbsListView$OnScrollListener;

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field private i:Landroid/content/Context;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcn/domob/wall/core/ControlInfo;

.field private o:Lcn/domob/wall/core/DService;

.field private p:Lcn/domob/ui/DGallery;

.field private q:Landroid/widget/ListView;

.field private r:Landroid/widget/ListView;

.field private s:Landroid/widget/ListView;

.field private t:Landroid/widget/ListView;

.field private u:Lcn/domob/ui/n;

.field private v:Lcn/domob/ui/n;

.field private w:Lcn/domob/ui/n;

.field private x:Lcn/domob/ui/n;

.field private y:Landroid/view/View;

.field private z:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcn/domob/ui/o;

    const-class v1, Lcn/domob/ui/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/l;->h:Lcn/domob/ui/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/l;->l:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/l;->m:Ljava/util/ArrayList;

    .line 80
    iput v2, p0, Lcn/domob/ui/l;->K:I

    .line 81
    iput v2, p0, Lcn/domob/ui/l;->L:I

    .line 82
    iput v2, p0, Lcn/domob/ui/l;->M:I

    .line 83
    iput v2, p0, Lcn/domob/ui/l;->N:I

    .line 85
    const/16 v0, 0x258

    iput v0, p0, Lcn/domob/ui/l;->O:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/l;->P:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/l;->Q:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/l;->R:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/l;->S:Ljava/util/ArrayList;

    .line 94
    iput-boolean v1, p0, Lcn/domob/ui/l;->T:Z

    .line 95
    iput-boolean v1, p0, Lcn/domob/ui/l;->U:Z

    .line 96
    iput-boolean v1, p0, Lcn/domob/ui/l;->V:Z

    .line 97
    iput-boolean v1, p0, Lcn/domob/ui/l;->W:Z

    .line 100
    iput v1, p0, Lcn/domob/ui/l;->X:I

    .line 104
    iput-boolean v1, p0, Lcn/domob/ui/l;->Z:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/l;->aa:Ljava/util/ArrayList;

    .line 114
    iput-boolean v1, p0, Lcn/domob/ui/l;->ae:Z

    .line 120
    iput-boolean v2, p0, Lcn/domob/ui/l;->ag:Z

    .line 193
    iput-boolean v2, p0, Lcn/domob/ui/l;->d:Z

    .line 194
    iput-boolean v2, p0, Lcn/domob/ui/l;->e:Z

    .line 195
    iput-boolean v2, p0, Lcn/domob/ui/l;->f:Z

    .line 196
    iput-boolean v1, p0, Lcn/domob/ui/l;->g:Z

    .line 123
    return-void
.end method

.method static synthetic a(Lcn/domob/ui/l;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-wide p1, p0, Lcn/domob/ui/l;->ah:J

    return-wide p1
.end method

.method static synthetic a(Lcn/domob/ui/l;)Lcn/domob/wall/core/DService;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/l;->o:Lcn/domob/wall/core/DService;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/ui/l;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcn/domob/ui/l;->Z:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/ui/l;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/l;->t:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/ui/o;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcn/domob/ui/l;->h:Lcn/domob/ui/o;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/ui/l;)J
    .locals 2
    .parameter

    .prologue
    .line 32
    iget-wide v0, p0, Lcn/domob/ui/l;->ah:J

    return-wide v0
.end method

.method static synthetic d(Lcn/domob/ui/l;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcn/domob/ui/l;->O:I

    return v0
.end method

.method static synthetic e(Lcn/domob/ui/l;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/ui/l;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/l;->s:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/ui/l;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/l;->r:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcn/domob/ui/l;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/l;->q:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic i(Lcn/domob/ui/l;)Lcn/domob/wall/core/ControlInfo;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    return-object v0
.end method

.method static synthetic j(Lcn/domob/ui/l;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/l;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcn/domob/ui/l;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/l;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lcn/domob/ui/l;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcn/domob/ui/l;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lcn/domob/ui/l;)Lcn/domob/ui/DGallery;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/l;->p:Lcn/domob/ui/DGallery;

    return-object v0
.end method

.method static synthetic o(Lcn/domob/ui/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcn/domob/ui/l;->ae:Z

    return v0
.end method

.method static synthetic p(Lcn/domob/ui/l;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcn/domob/ui/l;->af:I

    return v0
.end method

.method static synthetic q(Lcn/domob/ui/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcn/domob/ui/l;->Z:Z

    return v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 243
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    const v1, 0x1020012

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 246
    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v2, "onlylistRelativeS"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 251
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v2, "home_progress"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 258
    iget-object v1, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "home_progress_tv"

    invoke-static {v2, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 262
    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcn/domob/ui/l$7;

    invoke-direct {v3, p0, v0, v1}, Lcn/domob/ui/l$7;-><init>(Lcn/domob/ui/l;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    .line 273
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 9
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v8, 0x5

    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "l_home_banner"

    invoke-static {v2, v3}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 322
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v2, "gallery1"

    invoke-static {v0, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/DGallery;

    iput-object v0, p0, Lcn/domob/ui/l;->p:Lcn/domob/ui/DGallery;

    .line 325
    iget-object v0, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->isHasBanner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    move-object v6, v1

    .line 423
    :goto_0
    return-object v6

    .line 330
    :cond_0
    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 331
    :cond_1
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    move-object v6, v1

    .line 332
    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcn/domob/ui/l;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 337
    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    .line 338
    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdBannerImageURL()Ljava/lang/String;

    move-result-object v0

    .line 339
    iget-object v3, p0, Lcn/domob/ui/l;->aa:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 344
    :cond_3
    iget-object v0, p0, Lcn/domob/ui/l;->p:Lcn/domob/ui/DGallery;

    new-instance v2, Lcn/domob/ui/m;

    iget-object v3, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/domob/ui/l;->aa:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    iget-object v7, p0, Lcn/domob/ui/l;->o:Lcn/domob/wall/core/DService;

    invoke-direct {v2, v3, v4, v5, v7}, Lcn/domob/ui/m;-><init>(Ljava/util/ArrayList;Ljava/util/List;Landroid/content/Context;Lcn/domob/wall/core/DService;)V

    invoke-virtual {v0, v2}, Lcn/domob/ui/DGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 346
    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcn/domob/ui/l;->a(Ljava/util/ArrayList;)V

    .line 347
    iget-object v0, p0, Lcn/domob/ui/l;->p:Lcn/domob/ui/DGallery;

    new-instance v2, Lcn/domob/ui/l$8;

    invoke-direct {v2, p0}, Lcn/domob/ui/l$8;-><init>(Lcn/domob/ui/l;)V

    invoke-virtual {v0, v2}, Lcn/domob/ui/DGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 369
    iget-object v0, p0, Lcn/domob/ui/l;->p:Lcn/domob/ui/DGallery;

    new-instance v2, Lcn/domob/ui/l$9;

    invoke-direct {v2, p0}, Lcn/domob/ui/l$9;-><init>(Lcn/domob/ui/l;)V

    invoke-virtual {v0, v2}, Lcn/domob/ui/DGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 383
    iget-object v0, p0, Lcn/domob/ui/l;->p:Lcn/domob/ui/DGallery;

    new-instance v2, Lcn/domob/ui/l$10;

    invoke-direct {v2, p0}, Lcn/domob/ui/l$10;-><init>(Lcn/domob/ui/l;)V

    invoke-virtual {v0, v2}, Lcn/domob/ui/DGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 400
    sget-object v0, Lcn/domob/ui/l;->h:Lcn/domob/ui/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "banner\u5e7f\u544a\u8f6e\u64ad\u65f6\u95f4\u95f4\u9694:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v3}, Lcn/domob/wall/core/ControlInfo;->getBannerIntervalTime()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v2}, Lcn/domob/wall/core/ControlInfo;->getBannerIntervalTime()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_5

    .line 405
    :cond_4
    iput v8, p0, Lcn/domob/ui/l;->af:I

    .line 408
    :cond_5
    iget-object v0, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->getBannerIntervalTime()I

    move-result v0

    iput v0, p0, Lcn/domob/ui/l;->af:I

    .line 409
    iget v0, p0, Lcn/domob/ui/l;->af:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    iget v0, p0, Lcn/domob/ui/l;->af:I

    if-eqz v0, :cond_6

    .line 410
    iput v8, p0, Lcn/domob/ui/l;->af:I

    .line 413
    :cond_6
    iget v0, p0, Lcn/domob/ui/l;->af:I

    if-nez v0, :cond_7

    .line 422
    :goto_2
    invoke-virtual {p0, v6}, Lcn/domob/ui/l;->b(Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0

    .line 417
    :cond_7
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/l;->ac:Ljava/util/Timer;

    .line 418
    new-instance v0, Lcn/domob/ui/l$b;

    invoke-direct {v0, p0, v1}, Lcn/domob/ui/l$b;-><init>(Lcn/domob/ui/l;Lcn/domob/ui/l$1;)V

    iput-object v0, p0, Lcn/domob/ui/l;->ad:Lcn/domob/ui/l$b;

    .line 419
    iget-object v0, p0, Lcn/domob/ui/l;->ac:Ljava/util/Timer;

    iget-object v1, p0, Lcn/domob/ui/l;->ad:Lcn/domob/ui/l$b;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcn/domob/ui/l;->af:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_2
.end method

.method public a(ZLandroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcn/domob/wall/core/ControlInfo;Lcn/domob/wall/core/DService;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;",
            "Lcn/domob/wall/core/ControlInfo;",
            "Lcn/domob/wall/core/DService;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 132
    iput-object p2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    .line 133
    iput-object p3, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    .line 134
    iput-object p4, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    .line 135
    iput-object p5, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    .line 136
    iput-object p6, p0, Lcn/domob/ui/l;->o:Lcn/domob/wall/core/DService;

    .line 137
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v2, "l_home"

    invoke-static {v1, v2}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    .line 142
    new-instance v0, Lcn/domob/ui/l$1;

    invoke-direct {v0, p0}, Lcn/domob/ui/l$1;-><init>(Lcn/domob/ui/l;)V

    iput-object v0, p0, Lcn/domob/ui/l;->c:Landroid/widget/AbsListView$OnScrollListener;

    .line 167
    if-eqz p1, :cond_3

    .line 168
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p1}, Lcn/domob/ui/l;->a(Landroid/view/View;Z)V

    .line 170
    iget-object v0, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->isClassify()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-boolean v0, p0, Lcn/domob/ui/l;->f:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcn/domob/ui/l;->c(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcn/domob/ui/l;->e(Landroid/view/View;)Landroid/view/View;

    .line 184
    :goto_0
    iget-boolean v0, p0, Lcn/domob/ui/l;->d:Z

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v2, "title"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 188
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    return-object v0

    .line 175
    :cond_1
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcn/domob/ui/l;->d(Landroid/view/View;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcn/domob/ui/l;->d(Landroid/view/View;)V

    goto :goto_0

    .line 181
    :cond_3
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, p1}, Lcn/domob/ui/l;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 1105
    iget-object v0, p0, Lcn/domob/ui/l;->Y:Landroid/widget/LinearLayout;

    iget v1, p0, Lcn/domob/ui/l;->X:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1106
    iget-object v1, p0, Lcn/domob/ui/l;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1107
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1108
    check-cast v0, Landroid/widget/ImageView;

    .line 1109
    check-cast v1, Landroid/widget/ImageView;

    .line 1110
    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "u_point_default"

    invoke-static {v2, v3}, Lcn/domob/ui/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1112
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v2, "u_point_select"

    invoke-static {v0, v2}, Lcn/domob/ui/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1114
    iput p1, p0, Lcn/domob/ui/l;->X:I

    .line 1116
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v0, 0x1020012

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 278
    if-eqz p2, :cond_0

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 281
    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v1, "onlylistRelativeS"

    invoke-static {v0, v1}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 286
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v1, "home_progress_rl"

    invoke-static {v0, v1}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 291
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 314
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 295
    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v1, "onlylistRelativeS"

    invoke-static {v0, v1}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 300
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v1, "home_progress_rl"

    invoke-static {v0, v1}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 305
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcn/domob/ui/l;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v2, "home_progress_tv"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 311
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 431
    if-eqz p1, :cond_1

    .line 432
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 433
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/AdInfo;->setAdActualPosition(I)V

    .line 432
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 435
    :cond_0
    iget-boolean v0, p0, Lcn/domob/ui/l;->g:Z

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcn/domob/ui/l;->o:Lcn/domob/wall/core/DService;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/DService;->doImpReports(Ljava/util/ArrayList;)V

    .line 439
    :cond_1
    return-void
.end method

.method public a(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 718
    iget-boolean v0, p0, Lcn/domob/ui/l;->T:Z

    if-nez v0, :cond_3

    .line 719
    iget v0, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 720
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v1, p2

    if-ge v0, v1, :cond_2

    .line 721
    iget-object v1, p0, Lcn/domob/ui/l;->P:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    :cond_0
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v0, v1

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 726
    iget-object v1, p0, Lcn/domob/ui/l;->P:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 728
    :cond_1
    iput-boolean v3, p0, Lcn/domob/ui/l;->T:Z

    .line 730
    :cond_2
    if-le p2, v3, :cond_3

    .line 731
    iget-object v0, p0, Lcn/domob/ui/l;->o:Lcn/domob/wall/core/DService;

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->PGDN:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 735
    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-boolean p1, p0, Lcn/domob/ui/l;->g:Z

    .line 215
    return-void
.end method

.method public a(ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    iput-boolean p1, p0, Lcn/domob/ui/l;->d:Z

    .line 205
    iput-boolean p2, p0, Lcn/domob/ui/l;->e:Z

    .line 206
    iput-boolean p3, p0, Lcn/domob/ui/l;->f:Z

    .line 207
    return-void
.end method

.method public b(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    .line 444
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v1, "gallery_point_linear"

    invoke-static {v0, v1}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/domob/ui/l;->Y:Landroid/widget/LinearLayout;

    .line 447
    sget-object v0, Lcn/domob/ui/l;->h:Lcn/domob/ui/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5c4f\u5e55\u5bc6\u5ea6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/ui/h;->a(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/ui/h;->a(Landroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x9

    .line 449
    iget-object v1, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/ui/h;->a(Landroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x9

    .line 450
    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/ui/h;->a(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x9

    .line 451
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 453
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 454
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 458
    sget-object v0, Lcn/domob/ui/l;->h:Lcn/domob/ui/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBannerPicUrls.size()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/l;->aa:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcn/domob/ui/l;->aa:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 460
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 461
    if-nez v0, :cond_0

    .line 462
    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v4, "u_point_select"

    invoke-static {v2, v4}, Lcn/domob/ui/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 468
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget-object v2, p0, Lcn/domob/ui/l;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_0
    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v4, "u_point_default"

    invoke-static {v2, v4}, Lcn/domob/ui/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 471
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 739
    iget-boolean v0, p0, Lcn/domob/ui/l;->U:Z

    if-nez v0, :cond_3

    .line 740
    iget v0, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 741
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v1, p2

    if-ge v0, v1, :cond_2

    .line 742
    iget-object v1, p0, Lcn/domob/ui/l;->Q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_0
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v0, v1

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 747
    iget-object v1, p0, Lcn/domob/ui/l;->Q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 749
    :cond_1
    iput-boolean v3, p0, Lcn/domob/ui/l;->U:Z

    .line 751
    :cond_2
    if-le p2, v3, :cond_3

    .line 752
    iget-object v0, p0, Lcn/domob/ui/l;->o:Lcn/domob/wall/core/DService;

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->PGDN:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 755
    :cond_3
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v5, 0xa

    .line 477
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v1, "onlylistRelativeS"

    invoke-static {v0, v1}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 480
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcn/domob/ui/l;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 484
    iget-object v0, p0, Lcn/domob/ui/l;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 485
    :goto_0
    iget-object v0, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 486
    iget-object v0, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdType()Lcn/domob/wall/core/AdInfo$AdType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo$AdType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GAME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcn/domob/ui/l;->l:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 488
    :cond_1
    iget-object v0, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdType()Lcn/domob/wall/core/AdInfo$AdType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo$AdType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v3, "APPLICATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcn/domob/ui/l;->m:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 494
    :cond_2
    iget-object v0, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->getShowAdNum()I

    move-result v0

    iput v0, p0, Lcn/domob/ui/l;->ab:I

    .line 495
    sget-object v0, Lcn/domob/ui/l;->h:Lcn/domob/ui/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6bcf\u6b21\u5c55\u73b0\u7684\u5e7f\u544a\u6570\u91cf"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn/domob/ui/l;->ab:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 496
    iget v0, p0, Lcn/domob/ui/l;->ab:I

    if-gtz v0, :cond_3

    .line 497
    const/16 v0, 0xf

    iput v0, p0, Lcn/domob/ui/l;->ab:I

    .line 499
    :cond_3
    const/16 v0, 0x3e8

    iput v0, p0, Lcn/domob/ui/l;->ab:I

    .line 500
    iget-boolean v0, p0, Lcn/domob/ui/l;->ag:Z

    if-eqz v0, :cond_4

    .line 501
    iget-object v0, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    iget v1, p0, Lcn/domob/ui/l;->K:I

    invoke-virtual {p0, v0, v1}, Lcn/domob/ui/l;->a(Ljava/util/ArrayList;I)V

    .line 502
    iget-object v0, p0, Lcn/domob/ui/l;->l:Ljava/util/ArrayList;

    iget v1, p0, Lcn/domob/ui/l;->M:I

    invoke-virtual {p0, v0, v1}, Lcn/domob/ui/l;->c(Ljava/util/ArrayList;I)V

    .line 503
    iget-object v0, p0, Lcn/domob/ui/l;->m:Ljava/util/ArrayList;

    iget v1, p0, Lcn/domob/ui/l;->L:I

    invoke-virtual {p0, v0, v1}, Lcn/domob/ui/l;->b(Ljava/util/ArrayList;I)V

    .line 505
    iput-boolean v2, p0, Lcn/domob/ui/l;->ag:Z

    .line 509
    :cond_4
    new-instance v0, Lcn/domob/ui/n;

    iget-object v1, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/l;->P:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    iget-object v4, p0, Lcn/domob/ui/l;->o:Lcn/domob/wall/core/DService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/domob/ui/n;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/domob/wall/core/ControlInfo;Lcn/domob/wall/core/DService;)V

    iput-object v0, p0, Lcn/domob/ui/l;->u:Lcn/domob/ui/n;

    .line 511
    new-instance v0, Lcn/domob/ui/n;

    iget-object v1, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/l;->R:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    iget-object v4, p0, Lcn/domob/ui/l;->o:Lcn/domob/wall/core/DService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/domob/ui/n;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/domob/wall/core/ControlInfo;Lcn/domob/wall/core/DService;)V

    iput-object v0, p0, Lcn/domob/ui/l;->v:Lcn/domob/ui/n;

    .line 513
    new-instance v0, Lcn/domob/ui/n;

    iget-object v1, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/l;->Q:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    iget-object v4, p0, Lcn/domob/ui/l;->o:Lcn/domob/wall/core/DService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/domob/ui/n;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/domob/wall/core/ControlInfo;Lcn/domob/wall/core/DService;)V

    iput-object v0, p0, Lcn/domob/ui/l;->w:Lcn/domob/ui/n;

    .line 517
    iget-object v0, p0, Lcn/domob/ui/l;->P:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcn/domob/ui/l;->a(Ljava/util/ArrayList;)V

    .line 519
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v1, "list_app"

    invoke-static {v0, v1}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/domob/ui/l;->q:Landroid/widget/ListView;

    .line 521
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v1, "list_game"

    invoke-static {v0, v1}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/domob/ui/l;->r:Landroid/widget/ListView;

    .line 523
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v1, "list_all"

    invoke-static {v0, v1}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/domob/ui/l;->s:Landroid/widget/ListView;

    .line 527
    invoke-virtual {p0, p1}, Lcn/domob/ui/l;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 528
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "l_home_list_footer"

    invoke-static {v2, v3}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 532
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "list_footer"

    invoke-static {v0, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/domob/ui/l;->B:Landroid/view/View;

    .line 534
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "more_progressbar"

    invoke-static {v0, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/domob/ui/l;->C:Landroid/widget/ProgressBar;

    .line 536
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "more_textview"

    invoke-static {v0, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/domob/ui/l;->D:Landroid/widget/TextView;

    .line 538
    iget-object v0, p0, Lcn/domob/ui/l;->D:Landroid/widget/TextView;

    const-string v3, "\u70b9\u51fb\u56de\u5230\u9876\u90e8"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->isHasBanner()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 540
    iget-boolean v0, p0, Lcn/domob/ui/l;->e:Z

    if-eqz v0, :cond_5

    .line 541
    iget-object v0, p0, Lcn/domob/ui/l;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 544
    :cond_5
    new-instance v0, Lcn/domob/ui/l$11;

    invoke-direct {v0, p0}, Lcn/domob/ui/l$11;-><init>(Lcn/domob/ui/l;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    iget-object v0, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 554
    iget-object v0, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_6

    .line 555
    iget-object v0, p0, Lcn/domob/ui/l;->s:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 560
    :cond_6
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "l_home_list_footer"

    invoke-static {v2, v3}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 564
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "list_footer"

    invoke-static {v0, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/domob/ui/l;->E:Landroid/view/View;

    .line 566
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "more_progressbar"

    invoke-static {v0, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/domob/ui/l;->F:Landroid/widget/ProgressBar;

    .line 568
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "more_textview"

    invoke-static {v0, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/domob/ui/l;->G:Landroid/widget/TextView;

    .line 570
    iget-object v0, p0, Lcn/domob/ui/l;->G:Landroid/widget/TextView;

    const-string v3, "\u70b9\u51fb\u56de\u5230\u9876\u90e8"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->isHasBanner()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 572
    iget-boolean v0, p0, Lcn/domob/ui/l;->e:Z

    if-eqz v0, :cond_7

    .line 573
    iget-object v0, p0, Lcn/domob/ui/l;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 577
    :cond_7
    new-instance v0, Lcn/domob/ui/l$12;

    invoke-direct {v0, p0}, Lcn/domob/ui/l$12;-><init>(Lcn/domob/ui/l;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v0, p0, Lcn/domob/ui/l;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/domob/ui/l;->l:Ljava/util/ArrayList;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 586
    iget-object v0, p0, Lcn/domob/ui/l;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_8

    .line 587
    iget-object v0, p0, Lcn/domob/ui/l;->r:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 592
    :cond_8
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "l_home_list_footer"

    invoke-static {v2, v3}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 596
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "list_footer"

    invoke-static {v0, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/domob/ui/l;->H:Landroid/view/View;

    .line 598
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "more_progressbar"

    invoke-static {v0, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/domob/ui/l;->I:Landroid/widget/ProgressBar;

    .line 600
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "more_textview"

    invoke-static {v0, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/domob/ui/l;->J:Landroid/widget/TextView;

    .line 602
    iget-object v0, p0, Lcn/domob/ui/l;->J:Landroid/widget/TextView;

    const-string v3, "\u70b9\u51fb\u56de\u5230\u9876\u90e8"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v0, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->isHasBanner()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 604
    iget-boolean v0, p0, Lcn/domob/ui/l;->e:Z

    if-eqz v0, :cond_9

    .line 605
    iget-object v0, p0, Lcn/domob/ui/l;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 608
    :cond_9
    new-instance v0, Lcn/domob/ui/l$13;

    invoke-direct {v0, p0}, Lcn/domob/ui/l$13;-><init>(Lcn/domob/ui/l;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    iget-object v0, p0, Lcn/domob/ui/l;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/domob/ui/l;->m:Ljava/util/ArrayList;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 617
    iget-object v0, p0, Lcn/domob/ui/l;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_a

    .line 618
    iget-object v0, p0, Lcn/domob/ui/l;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 623
    :cond_a
    iget-object v0, p0, Lcn/domob/ui/l;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/domob/ui/l;->w:Lcn/domob/ui/n;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 624
    iget-object v0, p0, Lcn/domob/ui/l;->r:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/domob/ui/l;->v:Lcn/domob/ui/n;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 625
    iget-object v0, p0, Lcn/domob/ui/l;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/domob/ui/l;->u:Lcn/domob/ui/n;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 628
    iget-object v0, p0, Lcn/domob/ui/l;->q:Landroid/widget/ListView;

    new-instance v1, Lcn/domob/ui/l$14;

    invoke-direct {v1, p0}, Lcn/domob/ui/l$14;-><init>(Lcn/domob/ui/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 653
    iget-object v0, p0, Lcn/domob/ui/l;->r:Landroid/widget/ListView;

    new-instance v1, Lcn/domob/ui/l$2;

    invoke-direct {v1, p0}, Lcn/domob/ui/l$2;-><init>(Lcn/domob/ui/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 681
    iget-object v0, p0, Lcn/domob/ui/l;->s:Landroid/widget/ListView;

    new-instance v1, Lcn/domob/ui/l$3;

    invoke-direct {v1, p0}, Lcn/domob/ui/l$3;-><init>(Lcn/domob/ui/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 709
    iget-object v0, p0, Lcn/domob/ui/l;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/domob/ui/l;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 710
    iget-object v0, p0, Lcn/domob/ui/l;->r:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/domob/ui/l;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 711
    iget-object v0, p0, Lcn/domob/ui/l;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/domob/ui/l;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 712
    return-void
.end method

.method public c(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 760
    iget-boolean v0, p0, Lcn/domob/ui/l;->V:Z

    if-nez v0, :cond_3

    .line 761
    iget v0, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 762
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v1, p2

    if-ge v0, v1, :cond_2

    .line 763
    iget-object v1, p0, Lcn/domob/ui/l;->R:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    :cond_0
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v0, v1

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 768
    iget-object v1, p0, Lcn/domob/ui/l;->R:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 770
    :cond_1
    iput-boolean v3, p0, Lcn/domob/ui/l;->V:Z

    .line 772
    :cond_2
    if-le p2, v3, :cond_3

    .line 773
    iget-object v0, p0, Lcn/domob/ui/l;->o:Lcn/domob/wall/core/DService;

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->PGDN:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 776
    :cond_3
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 801
    const v0, 0x1020012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    .line 802
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v1, "onlylistRelativeS"

    invoke-static {v0, v1}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 807
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->getShowAdNum()I

    move-result v0

    iput v0, p0, Lcn/domob/ui/l;->ab:I

    .line 810
    sget-object v0, Lcn/domob/ui/l;->h:Lcn/domob/ui/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6bcf\u6b21\u5c55\u73b0\u7684\u5e7f\u544a\u6570\u91cf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/ui/l;->ab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 811
    iget v0, p0, Lcn/domob/ui/l;->ab:I

    if-gtz v0, :cond_0

    .line 812
    const/16 v0, 0xf

    iput v0, p0, Lcn/domob/ui/l;->ab:I

    .line 814
    :cond_0
    const/16 v0, 0x3c

    iput v0, p0, Lcn/domob/ui/l;->ab:I

    .line 816
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v1, "list_only"

    invoke-static {v0, v1}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/domob/ui/l;->t:Landroid/widget/ListView;

    .line 818
    iget-object v0, p0, Lcn/domob/ui/l;->t:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 820
    invoke-virtual {p0, p1}, Lcn/domob/ui/l;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 821
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "l_home_list_footer"

    invoke-static {v2, v3}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 825
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "list_footer"

    invoke-static {v0, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/domob/ui/l;->y:Landroid/view/View;

    .line 827
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "more_progressbar"

    invoke-static {v0, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/domob/ui/l;->z:Landroid/widget/ProgressBar;

    .line 829
    iget-object v0, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "more_textview"

    invoke-static {v0, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/domob/ui/l;->A:Landroid/widget/TextView;

    .line 831
    iget-object v0, p0, Lcn/domob/ui/l;->A:Landroid/widget/TextView;

    const-string v3, "\u70b9\u51fb\u56de\u5230\u9876\u90e8"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v0, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->isHasBanner()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/ui/l;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    iget-boolean v0, p0, Lcn/domob/ui/l;->e:Z

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcn/domob/ui/l;->t:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 839
    :cond_1
    new-instance v0, Lcn/domob/ui/l$4;

    invoke-direct {v0, p0}, Lcn/domob/ui/l$4;-><init>(Lcn/domob/ui/l;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    iget-object v0, p0, Lcn/domob/ui/l;->t:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 848
    iget-boolean v0, p0, Lcn/domob/ui/l;->ag:Z

    if-eqz v0, :cond_2

    .line 849
    iget-object v0, p0, Lcn/domob/ui/l;->j:Ljava/util/ArrayList;

    iget v1, p0, Lcn/domob/ui/l;->N:I

    invoke-virtual {p0, v0, v1}, Lcn/domob/ui/l;->d(Ljava/util/ArrayList;I)V

    .line 850
    iput-boolean v4, p0, Lcn/domob/ui/l;->ag:Z

    .line 852
    :cond_2
    new-instance v0, Lcn/domob/ui/n;

    iget-object v1, p0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/ui/l;->S:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/domob/ui/l;->n:Lcn/domob/wall/core/ControlInfo;

    iget-object v4, p0, Lcn/domob/ui/l;->o:Lcn/domob/wall/core/DService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/domob/ui/n;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/domob/wall/core/ControlInfo;Lcn/domob/wall/core/DService;)V

    iput-object v0, p0, Lcn/domob/ui/l;->x:Lcn/domob/ui/n;

    .line 856
    iget-object v0, p0, Lcn/domob/ui/l;->S:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcn/domob/ui/l;->a(Ljava/util/ArrayList;)V

    .line 857
    iget-object v0, p0, Lcn/domob/ui/l;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/domob/ui/l;->x:Lcn/domob/ui/n;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 858
    iget-object v0, p0, Lcn/domob/ui/l;->t:Landroid/widget/ListView;

    new-instance v1, Lcn/domob/ui/l$5;

    invoke-direct {v1, p0}, Lcn/domob/ui/l$5;-><init>(Lcn/domob/ui/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 889
    iget-object v0, p0, Lcn/domob/ui/l;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/domob/ui/l;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 891
    return-void
.end method

.method public d(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 780
    iget-boolean v0, p0, Lcn/domob/ui/l;->W:Z

    if-nez v0, :cond_3

    .line 781
    iget v0, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 782
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v1, p2

    if-ge v0, v1, :cond_2

    .line 783
    iget-object v1, p0, Lcn/domob/ui/l;->S:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 786
    :cond_0
    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcn/domob/ui/l;->ab:I

    mul-int/2addr v0, v1

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 788
    iget-object v1, p0, Lcn/domob/ui/l;->S:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 790
    :cond_1
    iput-boolean v3, p0, Lcn/domob/ui/l;->W:Z

    .line 792
    :cond_2
    if-le p2, v3, :cond_3

    .line 793
    iget-object v0, p0, Lcn/domob/ui/l;->o:Lcn/domob/wall/core/DService;

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->PGDN:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 796
    :cond_3
    return-void
.end method

.method public e(Landroid/view/View;)Landroid/view/View;
    .locals 19
    .parameter

    .prologue
    .line 896
    const v1, 0x1020012

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TabHost;

    .line 898
    invoke-virtual {v14}, Landroid/widget/TabHost;->setup()V

    .line 900
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "tab_app"

    invoke-static {v2, v3}, Lcn/domob/ui/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 902
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v4, "tab_game"

    invoke-static {v3, v4}, Lcn/domob/ui/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 904
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v4, "tab_all"

    invoke-static {v3, v4}, Lcn/domob/ui/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 907
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v4, "tab_app_english"

    invoke-static {v3, v4}, Lcn/domob/ui/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 909
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v5, "tab_game_english"

    invoke-static {v3, v5}, Lcn/domob/ui/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 911
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v5, "tab_all_english"

    invoke-static {v3, v5}, Lcn/domob/ui/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 914
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v6, "l_home_tab_element"

    invoke-static {v5, v6}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 919
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v5, "tab_bg_select"

    invoke-static {v1, v5}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v6, "tab_image"

    invoke-static {v1, v6}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v8, "u_home_tab_all"

    invoke-static {v6, v8}, Lcn/domob/ui/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 925
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v6, "tab_name"

    invoke-static {v1, v6}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 927
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v6, "tab_name_english"

    invoke-static {v1, v6}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 931
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "tab_name"

    invoke-static {v1, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 935
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v6, "l_home_tab_element"

    invoke-static {v3, v6}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 939
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v3, "tab_bg_select"

    invoke-static {v1, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v6, "tab_image"

    invoke-static {v1, v6}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v8, "u_home_tab_app"

    invoke-static {v6, v8}, Lcn/domob/ui/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 944
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v6, "tab_name"

    invoke-static {v1, v6}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 946
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v8, "tab_name_english"

    invoke-static {v1, v8}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 950
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v4, "tab_name"

    invoke-static {v1, v4}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 954
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v12, "l_home_tab_element"

    invoke-static {v4, v12}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v12, 0x0

    invoke-virtual {v1, v4, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 958
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v4, "tab_bg_select"

    invoke-static {v1, v4}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 960
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v12, "tab_image"

    invoke-static {v1, v12}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v13, "u_home_tab_game"

    invoke-static {v12, v13}, Lcn/domob/ui/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 963
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v12, "tab_name"

    invoke-static {v1, v12}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 965
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v13, "tab_name_english"

    invoke-static {v1, v13}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 969
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v15, "tab_name"

    invoke-static {v1, v15}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 973
    invoke-virtual {v14, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v15, "list_all"

    invoke-static {v10, v15}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 975
    invoke-virtual {v14, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v10, "list_game"

    invoke-static {v7, v10}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 978
    invoke-virtual {v14, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v7, "list_app"

    invoke-static {v2, v7}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 981
    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 982
    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 983
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 985
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v7, "tab_default"

    invoke-static {v2, v7}, Lcn/domob/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 987
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/domob/ui/l;->i:Landroid/content/Context;

    const-string v7, "tab_select"

    invoke-static {v2, v7}, Lcn/domob/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 992
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 993
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 994
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 995
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 996
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 997
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 999
    new-instance v1, Lcn/domob/ui/l$6;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v13}, Lcn/domob/ui/l$6;-><init>(Lcn/domob/ui/l;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;ILandroid/widget/TextView;Landroid/widget/TextView;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v14, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1054
    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1055
    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1056
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1057
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 1059
    const/4 v1, 0x0

    return-object v1
.end method
