.class public Lcn/domob/ui/n;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/ui/n$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/ui/o;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcn/domob/wall/core/ControlInfo;

.field private e:Lcn/domob/wall/core/DService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcn/domob/ui/o;

    const-class v1, Lcn/domob/ui/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/ui/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/ui/n;->a:Lcn/domob/ui/o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcn/domob/wall/core/ControlInfo;Lcn/domob/wall/core/DService;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;",
            "Lcn/domob/wall/core/ControlInfo;",
            "Lcn/domob/wall/core/DService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    .line 37
    iput-object p2, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcn/domob/ui/n;->d:Lcn/domob/wall/core/ControlInfo;

    .line 40
    iput-object p4, p0, Lcn/domob/ui/n;->e:Lcn/domob/wall/core/DService;

    .line 41
    return-void
.end method

.method static synthetic a(Lcn/domob/ui/n;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/ui/n;)Lcn/domob/wall/core/DService;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcn/domob/ui/n;->e:Lcn/domob/wall/core/DService;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 50
    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4480

    const/4 v5, 0x4

    .line 61
    if-nez p2, :cond_0

    .line 62
    iget-object v0, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    const-string v2, "l_home_list_element"

    invoke-static {v1, v2}, Lcn/domob/ui/e;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 66
    .restart local p2
    new-instance v1, Lcn/domob/ui/n$a;

    invoke-direct {v1, p0}, Lcn/domob/ui/n$a;-><init>(Lcn/domob/ui/n;)V

    .line 67
    iget-object v0, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    const-string v2, "lsit_logo"

    invoke-static {v0, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/domob/ui/n$a;->a:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    const-string v2, "lsit_logo_new"

    invoke-static {v0, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcn/domob/ui/n$a;->b:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    const-string v2, "list_name"

    invoke-static {v0, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/n$a;->c:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    const-string v2, "list_describe"

    invoke-static {v0, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/n$a;->d:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/ui/h;->c(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/ui/h;->b(Landroid/content/Context;)F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 78
    add-int/lit16 v0, v0, -0x87

    int-to-float v0, v0

    iget-object v2, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/ui/h;->b(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 79
    iget-object v2, v1, Lcn/domob/ui/n$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 81
    iget-object v0, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    const-string v2, "list_actiontype_bg"

    invoke-static {v0, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcn/domob/ui/n$a;->e:Landroid/widget/RelativeLayout;

    .line 84
    iget-object v0, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    const-string v2, "list_actiontype"

    invoke-static {v0, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/n$a;->f:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    const-string v2, "list_action_des"

    invoke-static {v0, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/n$a;->g:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    const-string v2, "list_apksize"

    invoke-static {v0, v2}, Lcn/domob/ui/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/domob/ui/n$a;->h:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    :goto_0
    iget-object v0, v1, Lcn/domob/ui/n$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/ui/n;->c:Landroid/content/Context;

    const-string v3, "u_list_logo"

    invoke-static {v2, v3}, Lcn/domob/ui/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v2, v1, Lcn/domob/ui/n$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdLogoURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lcn/domob/ui/n;->e:Lcn/domob/wall/core/DService;

    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdLogoURL()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcn/domob/ui/n$a;->a:Landroid/widget/ImageView;

    new-instance v4, Lcn/domob/ui/n$1;

    invoke-direct {v4, p0}, Lcn/domob/ui/n$1;-><init>(Lcn/domob/ui/n;)V

    invoke-virtual {v2, v0, v3, v4}, Lcn/domob/wall/core/DService;->requestImage(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V

    .line 116
    iget-object v0, p0, Lcn/domob/ui/n;->d:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->isShowNewReminder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->isNew()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, v1, Lcn/domob/ui/n$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :goto_1
    iget-object v0, p0, Lcn/domob/ui/n;->d:Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->isButtonShow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    iget-object v0, v1, Lcn/domob/ui/n$a;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    iget-object v0, v1, Lcn/domob/ui/n$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    :goto_2
    iget-object v0, v1, Lcn/domob/ui/n$a;->e:Landroid/widget/RelativeLayout;

    new-instance v2, Lcn/domob/ui/n$2;

    invoke-direct {v2, p0, p1}, Lcn/domob/ui/n$2;-><init>(Lcn/domob/ui/n;I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v2, v1, Lcn/domob/ui/n$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, v1, Lcn/domob/ui/n$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdBriefText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-object p2

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/ui/n$a;

    move-object v1, v0

    goto/16 :goto_0

    .line 120
    :cond_1
    iget-object v0, v1, Lcn/domob/ui/n$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 123
    :cond_2
    iget-object v0, v1, Lcn/domob/ui/n$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 133
    :cond_3
    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdActionType()Lcn/domob/wall/core/AdInfo$ClickActionType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo$ClickActionType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DOWNLOAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    iget-object v0, v1, Lcn/domob/ui/n$a;->f:Landroid/widget/TextView;

    const-string v2, "\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, v1, Lcn/domob/ui/n$a;->g:Landroid/widget/TextView;

    const-string v2, "\u514d\u8d39\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, v1, Lcn/domob/ui/n$a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v0, "0.00"

    invoke-direct {v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdSize()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    div-float/2addr v0, v6

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v2, v1, Lcn/domob/ui/n$a;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "M"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :goto_3
    iget-object v0, v1, Lcn/domob/ui/n$a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, v1, Lcn/domob/ui/n$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 147
    :cond_4
    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdActionType()Lcn/domob/wall/core/AdInfo$ClickActionType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo$ClickActionType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "INTERNAL_BROWSER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    iget-object v0, v1, Lcn/domob/ui/n$a;->f:Landroid/widget/TextView;

    const-string v2, "\u8be6\u60c5"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, v1, Lcn/domob/ui/n$a;->g:Landroid/widget/TextView;

    const-string v2, "\u67e5\u770b\u8be6\u60c5"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, v1, Lcn/domob/ui/n$a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 156
    :cond_5
    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdActionType()Lcn/domob/wall/core/AdInfo$ClickActionType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo$ClickActionType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXTERNAL_BROWSER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    iget-object v0, v1, Lcn/domob/ui/n$a;->f:Landroid/widget/TextView;

    const-string v2, "\u8be6\u60c5"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, v1, Lcn/domob/ui/n$a;->g:Landroid/widget/TextView;

    const-string v2, "\u67e5\u770b\u8be6\u60c5"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, v1, Lcn/domob/ui/n$a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 165
    :cond_6
    iget-object v0, p0, Lcn/domob/ui/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdActionType()Lcn/domob/wall/core/AdInfo$ClickActionType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo$ClickActionType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LAUNCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    iget-object v0, v1, Lcn/domob/ui/n$a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 169
    :cond_7
    iget-object v0, v1, Lcn/domob/ui/n$a;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    iget-object v0, v1, Lcn/domob/ui/n$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, v1, Lcn/domob/ui/n$a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method
