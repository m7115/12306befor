.class public Lcn/domob/android/offerwall/DomobOfferWallView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/offerwall/m;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcn/domob/android/offerwall/a;

.field private d:Lcn/domob/android/offerwall/h;

.field private e:Lcn/domob/android/offerwall/DomobOfferWallListener;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/offerwall/DomobOfferWallView;->a:Lcn/domob/android/offerwall/m;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/domob/android/offerwall/DomobOfferWallView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->f:Z

    iput-boolean v2, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->g:Z

    sget-object v0, Lcn/domob/android/offerwall/DomobOfferWallView;->a:Lcn/domob/android/offerwall/m;

    const-string v1, "New instance of DomobOfferWallView."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcn/domob/android/offerwall/DomobOfferWallView;->setBackgroundColor(I)V

    iput-object p2, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->b:Ljava/lang/String;

    new-instance v0, Lcn/domob/android/offerwall/a;

    invoke-direct {v0, p1, v2}, Lcn/domob/android/offerwall/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->c:Lcn/domob/android/offerwall/a;

    invoke-direct {p0}, Lcn/domob/android/offerwall/DomobOfferWallView;->c()V

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->c:Lcn/domob/android/offerwall/a;

    const-string v1, "file:///android_asset/index.html"

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/a;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->c:Lcn/domob/android/offerwall/a;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/offerwall/DomobOfferWallView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcn/domob/android/offerwall/h;

    invoke-direct {v0, p0}, Lcn/domob/android/offerwall/h;-><init>(Lcn/domob/android/offerwall/DomobOfferWallView;)V

    iput-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->d:Lcn/domob/android/offerwall/h;

    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current SDK version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcn/domob/android/offerwall/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publisher ID is set as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application Package Name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcn/domob/android/offerwall/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/offerwall/DomobOfferWallSetting;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/domob/android/offerwall/DomobOfferWallView;)Lcn/domob/android/offerwall/h;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->d:Lcn/domob/android/offerwall/h;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/offerwall/DomobOfferWallView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/domob/android/offerwall/DomobOfferWallView;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/offerwall/DomobOfferWallView;)Lcn/domob/android/offerwall/a;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->c:Lcn/domob/android/offerwall/a;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/android/offerwall/m;
    .locals 1

    sget-object v0, Lcn/domob/android/offerwall/DomobOfferWallView;->a:Lcn/domob/android/offerwall/m;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcn/domob/android/offerwall/DomobOfferWallView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/offerwall/DomobOfferWallView$4;

    invoke-direct {v1, p0, p1}, Lcn/domob/android/offerwall/DomobOfferWallView$4;-><init>(Lcn/domob/android/offerwall/DomobOfferWallView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcn/domob/android/offerwall/DomobOfferWallView;)Lcn/domob/android/offerwall/DomobOfferWallListener;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->e:Lcn/domob/android/offerwall/DomobOfferWallListener;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->c:Lcn/domob/android/offerwall/a;

    new-instance v1, Lcn/domob/android/offerwall/DomobOfferWallView$2;

    invoke-direct {v1, p0}, Lcn/domob/android/offerwall/DomobOfferWallView$2;-><init>(Lcn/domob/android/offerwall/DomobOfferWallView;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/a;->a(Lcn/domob/android/offerwall/a$a;)V

    return-void
.end method

.method private d()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/domob/android/offerwall/DomobOfferWallView;->a:Lcn/domob/android/offerwall/m;

    const-string v3, "In tryReportShowList: mIsViewOnWindow=%s, mViewHasData=%s, is visible=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->g:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-boolean v5, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->f:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcn/domob/android/offerwall/DomobOfferWallView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/domob/android/offerwall/DomobOfferWallView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->d:Lcn/domob/android/offerwall/h;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/h;->b()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private e()V
    .locals 1

    iget-boolean v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->d:Lcn/domob/android/offerwall/h;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/h;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lcn/domob/android/offerwall/DomobOfferWallView;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcn/domob/android/offerwall/DomobOfferWallView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/offerwall/DomobOfferWallView$3;

    invoke-direct {v1, p0, p1}, Lcn/domob/android/offerwall/DomobOfferWallView$3;-><init>(Lcn/domob/android/offerwall/DomobOfferWallView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->f:Z

    invoke-direct {p0}, Lcn/domob/android/offerwall/DomobOfferWallView;->d()V

    return-void
.end method

.method public loadOfferWall()V
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcn/domob/android/offerwall/DomobOfferWallView;->a:Lcn/domob/android/offerwall/m;

    const-string v1, "Start to load Domob offer wall."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->f:Z

    const/4 v0, 0x4

    invoke-static {v0, v2}, Lcn/domob/android/offerwall/f;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->d:Lcn/domob/android/offerwall/h;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/h;->a()V

    :goto_0
    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->e:Lcn/domob/android/offerwall/DomobOfferWallListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->e:Lcn/domob/android/offerwall/DomobOfferWallListener;

    invoke-interface {v0, p0}, Lcn/domob/android/offerwall/DomobOfferWallListener;->onOfferWallLoadStart(Lcn/domob/android/offerwall/DomobOfferWallView;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/domob/android/offerwall/DomobOfferWallView$1;

    invoke-direct {v1, p0}, Lcn/domob/android/offerwall/DomobOfferWallView$1;-><init>(Lcn/domob/android/offerwall/DomobOfferWallView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    sget-object v0, Lcn/domob/android/offerwall/DomobOfferWallView;->a:Lcn/domob/android/offerwall/m;

    const-string v1, "Offer Wall View is attached to window."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/domob/android/offerwall/DomobOfferWallView;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->g:Z

    invoke-direct {p0}, Lcn/domob/android/offerwall/DomobOfferWallView;->d()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    sget-object v0, Lcn/domob/android/offerwall/DomobOfferWallView;->a:Lcn/domob/android/offerwall/m;

    const-string v1, "Offer Wall View is detached from window."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->g:Z

    invoke-direct {p0}, Lcn/domob/android/offerwall/DomobOfferWallView;->e()V

    return-void
.end method

.method public setOfferWallListener(Lcn/domob/android/offerwall/DomobOfferWallListener;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/DomobOfferWallView;->e:Lcn/domob/android/offerwall/DomobOfferWallListener;

    return-void
.end method
