.class public Lcn/domob/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/ui/o;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcn/domob/wall/core/DService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcn/domob/ui/o;

    const-class v1, Lcn/domob/ui/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/j;->a:Lcn/domob/ui/o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/DService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcn/domob/ui/j;->c:Lcn/domob/wall/core/DService;

    .line 37
    return-void
.end method

.method static synthetic a(Lcn/domob/ui/j;)Lcn/domob/wall/core/DService;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcn/domob/ui/j;->c:Lcn/domob/wall/core/DService;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/ui/o;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcn/domob/ui/j;->a:Lcn/domob/ui/o;

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 129
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 131
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 133
    return v0
.end method

.method public a(Lcn/domob/wall/core/DetailsPageInfo;)Landroid/view/View;
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    const/high16 v6, 0x4480

    .line 43
    iget-object v0, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    const-string v2, "l_details"

    invoke-static {v1, v2}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 48
    iget-object v1, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    const-string v2, "scroll"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 52
    iget-object v2, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/ui/h;->g(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/ui/h;->f(Landroid/content/Context;)I

    move-result v3

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/ui/h;->g(Landroid/content/Context;)I

    move-result v2

    .line 53
    :goto_0
    int-to-float v2, v2

    iget-object v3, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/ui/h;->b(Landroid/content/Context;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 55
    const/16 v3, 0x1f4

    if-gt v2, v3, :cond_0

    .line 56
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 57
    const/high16 v3, 0x439b

    iget-object v4, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    invoke-static {v4}, Lcn/domob/ui/h;->b(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    :cond_0
    iget-object v1, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    const-string v2, "details_gallery_screenshot"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    .line 64
    new-instance v2, Lcn/domob/ui/i;

    invoke-virtual {p1}, Lcn/domob/wall/core/DetailsPageInfo;->getScreenshot()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    iget-object v5, p0, Lcn/domob/ui/j;->c:Lcn/domob/wall/core/DService;

    invoke-direct {v2, v3, v4, v5}, Lcn/domob/ui/i;-><init>(Ljava/util/List;Landroid/content/Context;Lcn/domob/wall/core/DService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 70
    iget-object v1, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    const-string v2, "details_logo"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 72
    iget-object v2, p0, Lcn/domob/ui/j;->c:Lcn/domob/wall/core/DService;

    iget-object v3, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/domob/wall/core/DetailsPageInfo;->getLogo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcn/domob/wall/core/DService;->requestImageAsyn(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 75
    iget-object v1, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    const-string v2, "details_name"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    invoke-virtual {p1}, Lcn/domob/wall/core/DetailsPageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    const-string v2, "details_versionName"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7248\u672c:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/domob/wall/core/DetailsPageInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    const-string v2, "details_apkSize"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    invoke-virtual {p1}, Lcn/domob/wall/core/DetailsPageInfo;->getSize()I

    move-result v2

    .line 87
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 88
    int-to-float v2, v2

    div-float/2addr v2, v6

    div-float/2addr v2, v6

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5927\u5c0f:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    const-string v2, "details_details"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    new-instance v2, Landroid/text/SpannableString;

    const-string v3, "\u7b80\u4ecb\uff1a"

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    const-string v6, "details_text_color"

    invoke-static {v5, v6}, Lcn/domob/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v7, v4, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 104
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcn/domob/ui/j;->a()F

    move-result v4

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v7, v4, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 106
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p1}, Lcn/domob/wall/core/DetailsPageInfo;->getDesctiption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    const-string v2, "dl01"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 111
    new-instance v2, Lcn/domob/ui/j$1;

    invoke-direct {v2, p0, p1}, Lcn/domob/ui/j$1;-><init>(Lcn/domob/ui/j;Lcn/domob/wall/core/DetailsPageInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-object v0

    .line 52
    :cond_1
    iget-object v2, p0, Lcn/domob/ui/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/ui/h;->f(Landroid/content/Context;)I

    move-result v2

    goto/16 :goto_0
.end method
