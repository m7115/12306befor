.class public Lcn/domob/ui/m;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/m$a;
    }
.end annotation


# static fields
.field private static e:Lcn/domob/ui/o;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcn/domob/wall/core/DService;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcn/domob/ui/o;

    const-class v1, Lcn/domob/ui/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/m;->e:Lcn/domob/ui/o;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/List;Landroid/content/Context;Lcn/domob/wall/core/DService;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcn/domob/wall/core/DService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/domob/ui/m;->d:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcn/domob/ui/m;->a:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lcn/domob/ui/m;->b:Landroid/content/Context;

    .line 34
    iput-object p4, p0, Lcn/domob/ui/m;->c:Lcn/domob/wall/core/DService;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    const v0, 0x7fffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 42
    iget-object v0, p0, Lcn/domob/ui/m;->a:Ljava/util/List;

    iget-object v1, p0, Lcn/domob/ui/m;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 51
    if-nez p2, :cond_0

    .line 52
    iget-object v0, p0, Lcn/domob/ui/m;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/m;->b:Landroid/content/Context;

    const-string v2, "l_home_gallery"

    invoke-static {v1, v2}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v1, Lcn/domob/ui/m$a;

    invoke-direct {v1, p0}, Lcn/domob/ui/m$a;-><init>(Lcn/domob/ui/m;)V

    .line 62
    iget-object v0, p0, Lcn/domob/ui/m;->b:Landroid/content/Context;

    const-string v2, "gallery_image"

    invoke-static {v0, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/domob/ui/m$a;->a:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_0
    sget-object v2, Lcn/domob/ui/m;->e:Lcn/domob/ui/o;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56fe\u7247\u4e0b\u8f7d\u5730\u5740\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcn/domob/ui/m;->a:Ljava/util/List;

    iget-object v4, p0, Lcn/domob/ui/m;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int v4, p1, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcn/domob/ui/m;->c:Lcn/domob/wall/core/DService;

    iget-object v3, p0, Lcn/domob/ui/m;->b:Landroid/content/Context;

    iget-object v0, p0, Lcn/domob/ui/m;->a:Ljava/util/List;

    iget-object v4, p0, Lcn/domob/ui/m;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int v4, p1, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, v1, Lcn/domob/ui/m$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0, v4}, Lcn/domob/wall/core/DService;->requestImageAsyn(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 75
    iget-object v0, v1, Lcn/domob/ui/m$a;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    return-object p2

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/m$a;

    move-object v1, v0

    goto :goto_0
.end method
