.class public Lcn/domob/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/ui/o;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcn/domob/wall/core/DService;

.field private d:Lcn/domob/wall/core/ControlInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcn/domob/ui/o;

    const-class v1, Lcn/domob/ui/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/k;->a:Lcn/domob/ui/o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/DService;Lcn/domob/wall/core/ControlInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/domob/ui/k;->b:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcn/domob/ui/k;->c:Lcn/domob/wall/core/DService;

    .line 24
    iput-object p3, p0, Lcn/domob/ui/k;->d:Lcn/domob/wall/core/ControlInfo;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x4

    .line 29
    iget-object v0, p0, Lcn/domob/ui/k;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/k;->b:Landroid/content/Context;

    const-string v2, "l_handle"

    invoke-static {v1, v2}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 34
    iget-object v1, p0, Lcn/domob/ui/k;->b:Landroid/content/Context;

    const-string v2, "handle_background"

    invoke-static {v1, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 37
    iget-object v2, p0, Lcn/domob/ui/k;->b:Landroid/content/Context;

    const-string v3, "handle_num_background"

    invoke-static {v2, v3}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 41
    iget-object v3, p0, Lcn/domob/ui/k;->b:Landroid/content/Context;

    const-string v4, "handle_num"

    invoke-static {v3, v4}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    iget-object v4, p0, Lcn/domob/ui/k;->b:Landroid/content/Context;

    const-string v5, "handleRelativeLayout"

    invoke-static {v4, v5}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 47
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 50
    sget-object v4, Lcn/domob/ui/k;->a:Lcn/domob/ui/o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u662f\u5426\u66f4\u6539\u5165\u53e3\u56fe\u7247\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/ui/k;->d:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v6}, Lcn/domob/wall/core/ControlInfo;->isChangeEnterPic()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcn/domob/ui/k;->d:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v4}, Lcn/domob/wall/core/ControlInfo;->isChangeEnterPic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    sget-object v4, Lcn/domob/ui/k;->a:Lcn/domob/ui/o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5165\u53e3\u56fe\u7247URL\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/ui/k;->d:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v6}, Lcn/domob/wall/core/ControlInfo;->getEnterPicURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 55
    iget-object v4, p0, Lcn/domob/ui/k;->d:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v4}, Lcn/domob/wall/core/ControlInfo;->getEnterPicURL()Ljava/lang/String;

    move-result-object v4

    .line 66
    iget-object v5, p0, Lcn/domob/ui/k;->c:Lcn/domob/wall/core/DService;

    iget-object v6, p0, Lcn/domob/ui/k;->b:Landroid/content/Context;

    iget-object v7, p0, Lcn/domob/ui/k;->b:Landroid/content/Context;

    const-string v8, "u_handle_background"

    invoke-static {v7, v8}, Lcn/domob/ui/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v4, v1, v7}, Lcn/domob/wall/core/DService;->requestImageAsyn(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 76
    :goto_0
    sget-object v1, Lcn/domob/ui/k;->a:Lcn/domob/ui/o;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u65b0\u589e\u5e94\u7528\u63d0\u9192\u662f\u5426\u5f00\u542f\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/ui/k;->d:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v5}, Lcn/domob/wall/core/ControlInfo;->isShowNewReminder()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcn/domob/ui/k;->d:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v1}, Lcn/domob/wall/core/ControlInfo;->getNumberOfNewAd()I

    move-result v1

    .line 80
    sget-object v4, Lcn/domob/ui/k;->a:Lcn/domob/ui/o;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u65b0\u589e\u5e94\u7528\u6570\u91cf\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    return-object v0

    .line 71
    :cond_0
    iget-object v4, p0, Lcn/domob/ui/k;->b:Landroid/content/Context;

    const-string v5, "u_handle_background"

    invoke-static {v4, v5}, Lcn/domob/ui/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
