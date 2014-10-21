.class public Lcn/domob/wall/core/DService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/DService$ReportUserActionType;,
        Lcn/domob/wall/core/DService$ErrorCode;,
        Lcn/domob/wall/core/DService$ShowDetailsPageListener;,
        Lcn/domob/wall/core/DService$ReceiveDataListener;,
        Lcn/domob/wall/core/DService$OnImageDownload;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/wall/core/p;

.field private static e:Ljava/lang/String;


# instance fields
.field private b:Lcn/domob/wall/core/k;

.field private c:Lcn/domob/wall/core/b;

.field private d:Lcn/domob/wall/core/download/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/DService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/p;

    .line 257
    const-string v0, "online"

    sput-object v0, Lcn/domob/wall/core/DService;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "publisherID"
    .parameter "placementID"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcn/domob/wall/core/k;

    invoke-direct {v0, p1, p2, p3}, Lcn/domob/wall/core/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/k;

    .line 21
    new-instance v0, Lcn/domob/wall/core/b;

    iget-object v1, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/k;

    invoke-direct {v0, p1, v1}, Lcn/domob/wall/core/b;-><init>(Landroid/content/Context;Lcn/domob/wall/core/k;)V

    iput-object v0, p0, Lcn/domob/wall/core/DService;->c:Lcn/domob/wall/core/b;

    .line 22
    invoke-static {p1}, Lcn/domob/wall/core/download/k;->a(Landroid/content/Context;)Lcn/domob/wall/core/download/k;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/DService;->d:Lcn/domob/wall/core/download/k;

    .line 23
    return-void
.end method

.method public static getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcn/domob/wall/core/DService;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 259
    sput-object p0, Lcn/domob/wall/core/DService;->e:Ljava/lang/String;

    .line 260
    return-void
.end method


# virtual methods
.method public doImpReport(Lcn/domob/wall/core/AdInfo;)V
    .locals 2
    .parameter "adInfo"

    .prologue
    .line 237
    invoke-static {}, Lcn/domob/wall/core/q;->a()Lcn/domob/wall/core/q;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/k;

    invoke-virtual {v0, v1, p1}, Lcn/domob/wall/core/q;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)V

    .line 238
    return-void
.end method

.method public doImpReports(Ljava/util/ArrayList;)V
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
    .line 245
    .local p1, adInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/domob/wall/core/AdInfo;>;"
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/k;

    invoke-virtual {v0, v1, p1}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Ljava/util/ArrayList;)V

    .line 246
    return-void
.end method

.method public doUserActionReport(Lcn/domob/wall/core/DService$ReportUserActionType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 219
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/k;

    invoke-virtual {v0, v1, p1}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 220
    return-void
.end method

.method public onClickDetailsPageButton(Lcn/domob/wall/core/DetailsPageInfo;)V
    .locals 2
    .parameter "detailsPage"

    .prologue
    .line 209
    iget-object v0, p0, Lcn/domob/wall/core/DService;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/DetailsPageInfo;)V

    .line 210
    sget-object v0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/p;

    const-string v1, "\u76d1\u542c\u5230\u8be6\u60c5\u9875\u9762\u4e0a\u7684\u6309\u94ae\u88ab\u70b9\u51fb"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public onClickWallItem(Lcn/domob/wall/core/AdInfo;)V
    .locals 2
    .parameter "itemInfo"

    .prologue
    .line 187
    iget-object v0, p0, Lcn/domob/wall/core/DService;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/b;->b(Lcn/domob/wall/core/AdInfo;)V

    .line 188
    sget-object v0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/p;

    const-string v1, "\u76d1\u542c\u5230\u5e7f\u544a\u88ab\u70b9\u51fb"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public onClickWallItemButton(Lcn/domob/wall/core/AdInfo;)V
    .locals 2
    .parameter "itemInfo"

    .prologue
    .line 198
    iget-object v0, p0, Lcn/domob/wall/core/DService;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/AdInfo;)V

    .line 199
    sget-object v0, Lcn/domob/wall/core/DService;->a:Lcn/domob/wall/core/p;

    const-string v1, "\u76d1\u542c\u5230\u5e7f\u544a\u5217\u8868\u4e0a\u7684\u6309\u94ae\u88ab\u70b9\u51fb"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public requestDataAsyn()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/k;

    invoke-virtual {v0}, Lcn/domob/wall/core/k;->a()V

    .line 135
    return-void
.end method

.method public requestImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "imageURL"

    .prologue
    .line 176
    invoke-static {}, Lcn/domob/wall/core/u;->a()Lcn/domob/wall/core/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/domob/wall/core/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public requestImage(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V
    .locals 1
    .parameter "url"
    .parameter "img"
    .parameter "pOnImageDownload"

    .prologue
    .line 54
    iget-object v0, p0, Lcn/domob/wall/core/DService;->d:Lcn/domob/wall/core/download/k;

    invoke-virtual {v0, p1, p2, p3}, Lcn/domob/wall/core/download/k;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V

    .line 55
    return-void
.end method

.method public requestImageAsyn(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .parameter "context"
    .parameter "imageURL"
    .parameter "imageView"

    .prologue
    .line 165
    invoke-static {}, Lcn/domob/wall/core/u;->a()Lcn/domob/wall/core/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/domob/wall/core/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 167
    return-void
.end method

.method public requestImageAsyn(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 1
    .parameter "context"
    .parameter "imageURL"
    .parameter "imageView"
    .parameter "resId"

    .prologue
    .line 153
    invoke-static {}, Lcn/domob/wall/core/u;->a()Lcn/domob/wall/core/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/domob/wall/core/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 155
    return-void
.end method

.method public setReceiveDataListener(Lcn/domob/wall/core/DService$ReceiveDataListener;)V
    .locals 1
    .parameter "receiveDataListener"

    .prologue
    .line 32
    iget-object v0, p0, Lcn/domob/wall/core/DService;->b:Lcn/domob/wall/core/k;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/k;->a(Lcn/domob/wall/core/DService$ReceiveDataListener;)V

    .line 33
    return-void
.end method

.method public setShowDetailsPageListener(Lcn/domob/wall/core/DService$ShowDetailsPageListener;)V
    .locals 1
    .parameter "showDetailsPageListener"

    .prologue
    .line 109
    iget-object v0, p0, Lcn/domob/wall/core/DService;->c:Lcn/domob/wall/core/b;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/DService$ShowDetailsPageListener;)V

    .line 110
    return-void
.end method

.method public setloadImgLock()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/domob/wall/core/DService;->d:Lcn/domob/wall/core/download/k;

    invoke-virtual {v0}, Lcn/domob/wall/core/download/k;->b()V

    .line 62
    return-void
.end method

.method public setloadImgUnLock()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/domob/wall/core/DService;->d:Lcn/domob/wall/core/download/k;

    invoke-virtual {v0}, Lcn/domob/wall/core/download/k;->c()V

    .line 69
    return-void
.end method

.method public wallTurnHide()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method
