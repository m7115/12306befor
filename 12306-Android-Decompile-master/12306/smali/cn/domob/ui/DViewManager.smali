.class public Lcn/domob/ui/DViewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/DViewManager$GetDataListener;
    }
.end annotation


# static fields
.field private static d:Lcn/domob/ui/o; = null

.field private static final g:I = 0x0

.field private static final h:I = 0x1


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field private e:Landroid/content/Context;

.field private f:Lcn/domob/wall/core/DService;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/app/Dialog;

.field private n:Landroid/view/View;

.field private o:Landroid/app/Dialog;

.field private p:Lcn/domob/ui/l;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcn/domob/wall/core/ControlInfo;

.field private t:Z

.field private u:Lcn/domob/ui/DViewManager$GetDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcn/domob/ui/o;

    const-class v1, Lcn/domob/ui/DViewManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/DViewManager;->d:Lcn/domob/ui/o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/DService;)V
    .locals 2
    .parameter "paramContext"
    .parameter "paramDService"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    .line 45
    iput-object v0, p0, Lcn/domob/ui/DViewManager;->i:Landroid/view/ViewGroup;

    .line 48
    iput-object v0, p0, Lcn/domob/ui/DViewManager;->j:Landroid/view/ViewGroup;

    .line 63
    iput-boolean v1, p0, Lcn/domob/ui/DViewManager;->a:Z

    .line 65
    iput-boolean v1, p0, Lcn/domob/ui/DViewManager;->b:Z

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/DViewManager;->q:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/DViewManager;->r:Ljava/util/ArrayList;

    .line 73
    iput-boolean v1, p0, Lcn/domob/ui/DViewManager;->t:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/ui/DViewManager;->c:Z

    .line 85
    iput-object p1, p0, Lcn/domob/ui/DViewManager;->e:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    .line 87
    return-void
.end method

.method static synthetic a(Lcn/domob/ui/DViewManager;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcn/domob/ui/DViewManager;->m:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/ui/DViewManager;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcn/domob/ui/DViewManager;->k:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/ui/DViewManager;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->i:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private a(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xf

    const/4 v1, -0x2

    const/4 v2, -0x1

    .line 550
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 553
    packed-switch p1, :pswitch_data_0

    .line 571
    :goto_0
    return-object v0

    .line 556
    :pswitch_0
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 558
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 563
    :pswitch_1
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 565
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcn/domob/ui/DViewManager;I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcn/domob/ui/DViewManager;->a(I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Lcn/domob/ui/o;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcn/domob/ui/DViewManager;->d:Lcn/domob/ui/o;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/ui/DViewManager;Lcn/domob/wall/core/ControlInfo;)Lcn/domob/wall/core/ControlInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcn/domob/ui/DViewManager;->s:Lcn/domob/wall/core/ControlInfo;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/ui/DViewManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcn/domob/ui/DViewManager;->q:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/ui/DViewManager;Lcn/domob/wall/core/DetailsPageInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcn/domob/ui/DViewManager;->a(Lcn/domob/wall/core/DetailsPageInfo;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/ui/DViewManager;Ljava/lang/String;Lcn/domob/wall/core/DService$ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcn/domob/ui/DViewManager;->a(Ljava/lang/String;Lcn/domob/wall/core/DService$ErrorCode;)V

    return-void
.end method

.method private a(Lcn/domob/wall/core/DetailsPageInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/ui/DViewManager$9;

    invoke-direct {v1, p0, p1}, Lcn/domob/ui/DViewManager$9;-><init>(Lcn/domob/ui/DViewManager;Lcn/domob/wall/core/DetailsPageInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 539
    return-void
.end method

.method private a(Ljava/lang/String;Lcn/domob/wall/core/DService$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/ui/DViewManager$6;

    invoke-direct {v1, p0, p2, p1}, Lcn/domob/ui/DViewManager$6;-><init>(Lcn/domob/ui/DViewManager;Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 465
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/ui/DViewManager$8;

    invoke-direct {v1, p0, p1}, Lcn/domob/ui/DViewManager$8;-><init>(Lcn/domob/ui/DViewManager;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 509
    return-void
.end method

.method static synthetic a(Lcn/domob/ui/DViewManager;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcn/domob/ui/DViewManager;->t:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/ui/DViewManager;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcn/domob/ui/DViewManager;->n:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcn/domob/ui/DViewManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcn/domob/ui/DViewManager;->r:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/ui/DViewManager$5;

    invoke-direct {v1, p0}, Lcn/domob/ui/DViewManager$5;-><init>(Lcn/domob/ui/DViewManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 409
    return-void
.end method

.method static synthetic b(Lcn/domob/ui/DViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/domob/ui/DViewManager;->b()V

    return-void
.end method

.method static synthetic b(Lcn/domob/ui/DViewManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcn/domob/ui/DViewManager;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcn/domob/ui/DViewManager;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcn/domob/ui/DViewManager;->l:Landroid/view/View;

    return-object p1
.end method

.method static synthetic c(Lcn/domob/ui/DViewManager;)Lcn/domob/ui/DViewManager$GetDataListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->u:Lcn/domob/ui/DViewManager$GetDataListener;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 543
    sget-object v0, Lcn/domob/ui/DViewManager;->d:Lcn/domob/ui/o;

    const-string v1, "\u5173\u95ed\u5e94\u7528\u5899\u8be6\u60c5\u754c\u9762"

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->m:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 545
    return-void
.end method

.method static synthetic d(Lcn/domob/ui/DViewManager;)Lcn/domob/wall/core/ControlInfo;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->s:Lcn/domob/wall/core/ControlInfo;

    return-object v0
.end method

.method static synthetic e(Lcn/domob/ui/DViewManager;)Lcn/domob/wall/core/DService;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/ui/DViewManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/ui/DViewManager;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->j:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic h(Lcn/domob/ui/DViewManager;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcn/domob/ui/DViewManager;)Lcn/domob/ui/l;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->p:Lcn/domob/ui/l;

    return-object v0
.end method

.method static synthetic j(Lcn/domob/ui/DViewManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcn/domob/ui/DViewManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lcn/domob/ui/DViewManager;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->o:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic m(Lcn/domob/ui/DViewManager;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcn/domob/ui/DViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/domob/ui/DViewManager;->c()V

    return-void
.end method

.method static synthetic o(Lcn/domob/ui/DViewManager;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcn/domob/ui/DViewManager;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->m:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public addView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0, v0}, Lcn/domob/ui/DViewManager;->addView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 97
    return-void
.end method

.method public addView(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "paramViewGroup"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/domob/ui/DViewManager;->addView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 110
    return-void
.end method

.method public addView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "paramViewGroup"
    .parameter "paramHandleView"

    .prologue
    const/4 v2, -0x1

    .line 128
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->e:Landroid/content/Context;

    const-string v1, "l_handle"

    invoke-static {v0, v1}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcn/domob/ui/DViewManager;->e:Landroid/content/Context;

    const-string v1, "l_home"

    invoke-static {v0, v1}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 129
    :cond_0
    const-string v0, "\u5c0a\u656c\u7684\u5f00\u53d1\u8005\uff1a"

    const-string v1, "\u8bf7\u53c2\u7167\u6587\u6863\u6dfb\u52a0res\u4e0b\u8d44\u6e90"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->e:Landroid/content/Context;

    const-string v1, "\u4eb2\uff0c\u8bf7\u53c2\u7167\u6587\u6863\u6dfb\u52a0res\u4e0b\u8d44\u6e90"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 208
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-boolean v0, p0, Lcn/domob/ui/DViewManager;->c:Z

    if-eqz v0, :cond_1

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/ui/DViewManager;->c:Z

    .line 139
    new-instance v0, Lcn/domob/ui/l;

    invoke-direct {v0}, Lcn/domob/ui/l;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/DViewManager;->p:Lcn/domob/ui/l;

    .line 140
    invoke-virtual {p0}, Lcn/domob/ui/DViewManager;->devModelInit()V

    .line 141
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/ui/DViewManager;->e:Landroid/content/Context;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/ui/DViewManager;->o:Landroid/app/Dialog;

    .line 147
    iput-object p1, p0, Lcn/domob/ui/DViewManager;->i:Landroid/view/ViewGroup;

    .line 148
    if-eqz p2, :cond_3

    .line 149
    iput-object p2, p0, Lcn/domob/ui/DViewManager;->j:Landroid/view/ViewGroup;

    .line 152
    :cond_3
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    new-instance v1, Lcn/domob/ui/DViewManager$1;

    invoke-direct {v1, p0}, Lcn/domob/ui/DViewManager$1;-><init>(Lcn/domob/ui/DViewManager;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->setShowDetailsPageListener(Lcn/domob/wall/core/DService$ShowDetailsPageListener;)V

    .line 165
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    new-instance v1, Lcn/domob/ui/DViewManager$2;

    invoke-direct {v1, p0}, Lcn/domob/ui/DViewManager$2;-><init>(Lcn/domob/ui/DViewManager;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->setReceiveDataListener(Lcn/domob/wall/core/DService$ReceiveDataListener;)V

    .line 207
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    invoke-virtual {v0}, Lcn/domob/wall/core/DService;->requestDataAsyn()V

    goto :goto_0
.end method

.method public addViewAndShow()V
    .locals 3

    .prologue
    .line 311
    iget-boolean v0, p0, Lcn/domob/ui/DViewManager;->c:Z

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/ui/DViewManager;->c:Z

    .line 315
    new-instance v0, Lcn/domob/ui/l;

    invoke-direct {v0}, Lcn/domob/ui/l;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/DViewManager;->p:Lcn/domob/ui/l;

    .line 316
    invoke-virtual {p0}, Lcn/domob/ui/DViewManager;->devModelInit()V

    .line 317
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/ui/DViewManager;->e:Landroid/content/Context;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/ui/DViewManager;->o:Landroid/app/Dialog;

    .line 319
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    new-instance v1, Lcn/domob/ui/DViewManager$3;

    invoke-direct {v1, p0}, Lcn/domob/ui/DViewManager$3;-><init>(Lcn/domob/ui/DViewManager;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->setShowDetailsPageListener(Lcn/domob/wall/core/DService$ShowDetailsPageListener;)V

    .line 332
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    new-instance v1, Lcn/domob/ui/DViewManager$4;

    invoke-direct {v1, p0}, Lcn/domob/ui/DViewManager$4;-><init>(Lcn/domob/ui/DViewManager;)V

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->setReceiveDataListener(Lcn/domob/wall/core/DService$ReceiveDataListener;)V

    .line 370
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    invoke-virtual {v0}, Lcn/domob/wall/core/DService;->requestDataAsyn()V

    goto :goto_0
.end method

.method public devModelInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/ui/DViewManager;->a:Z

    .line 243
    iput-boolean v2, p0, Lcn/domob/ui/DViewManager;->b:Z

    .line 244
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->p:Lcn/domob/ui/l;

    iget-boolean v1, p0, Lcn/domob/ui/DViewManager;->b:Z

    invoke-virtual {v0, v2, v1, v2}, Lcn/domob/ui/l;->a(ZZZ)V

    .line 245
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->p:Lcn/domob/ui/l;

    iget-boolean v1, p0, Lcn/domob/ui/DViewManager;->a:Z

    invoke-virtual {v0, v1}, Lcn/domob/ui/l;->a(Z)V

    .line 247
    return-void
.end method

.method public doEntranceClickReport()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->ENTRY:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 217
    iget-boolean v0, p0, Lcn/domob/ui/DViewManager;->a:Z

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v1, v2

    .line 219
    :goto_0
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/AdInfo;->setAdActualPosition(I)V

    .line 219
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    iget-object v1, p0, Lcn/domob/ui/DViewManager;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doImpReports(Ljava/util/ArrayList;)V

    .line 225
    :cond_1
    iget-boolean v0, p0, Lcn/domob/ui/DViewManager;->b:Z

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 227
    :goto_1
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 228
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/AdInfo;->setAdActualPosition(I)V

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :cond_2
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    iget-object v1, p0, Lcn/domob/ui/DViewManager;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doImpReports(Ljava/util/ArrayList;)V

    .line 235
    :cond_3
    return-void
.end method

.method public getNewAdTotals()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->s:Lcn/domob/wall/core/ControlInfo;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->s:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->getNumberOfNewAd()I

    move-result v0

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/ui/DViewManager$7;

    invoke-direct {v1, p0}, Lcn/domob/ui/DViewManager$7;-><init>(Lcn/domob/ui/DViewManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 457
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->n:Landroid/view/View;

    return-object v0
.end method

.method public isAdDataReady()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcn/domob/ui/DViewManager;->t:Z

    return v0
.end method

.method public setAddViewListener(Lcn/domob/ui/DViewManager$GetDataListener;)V
    .locals 0
    .parameter "pGetDataListener"

    .prologue
    .line 279
    iput-object p1, p0, Lcn/domob/ui/DViewManager;->u:Lcn/domob/ui/DViewManager$GetDataListener;

    .line 280
    return-void
.end method

.method public showWall()V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcn/domob/ui/DViewManager;->isAdDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    sget-object v0, Lcn/domob/ui/DViewManager;->d:Lcn/domob/ui/o;

    const-string v1, "\u6253\u5f00\u5e94\u7528\u5899\u9996\u9875\u9875\u9762"

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/domob/ui/DViewManager;->a(Z)V

    .line 300
    iget-object v0, p0, Lcn/domob/ui/DViewManager;->f:Lcn/domob/wall/core/DService;

    sget-object v1, Lcn/domob/wall/core/DService$ReportUserActionType;->ENTRY:Lcn/domob/wall/core/DService$ReportUserActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/DService;->doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-boolean v0, p0, Lcn/domob/ui/DViewManager;->c:Z

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcn/domob/ui/DViewManager;->addViewAndShow()V

    goto :goto_0
.end method
