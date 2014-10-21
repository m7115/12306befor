.class public Lcn/domob/wall/core/DetailsPageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/domob/wall/core/AdInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method constructor <init>(Lcn/domob/wall/core/AdInfo;)V
    .locals 0
    .parameter "itemInfo"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/domob/wall/core/DetailsPageInfo;->a:Lcn/domob/wall/core/AdInfo;

    .line 22
    return-void
.end method


# virtual methods
.method a()Lcn/domob/wall/core/AdInfo;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/domob/wall/core/DetailsPageInfo;->a:Lcn/domob/wall/core/AdInfo;

    return-object v0
.end method

.method public getAdProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/domob/wall/core/DetailsPageInfo;->a:Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdType()Lcn/domob/wall/core/AdInfo$AdType;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/domob/wall/core/DetailsPageInfo;->a:Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdType()Lcn/domob/wall/core/AdInfo$AdType;

    move-result-object v0

    return-object v0
.end method

.method public getDesctiption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcn/domob/wall/core/DetailsPageInfo;->a:Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdDetailDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/domob/wall/core/DetailsPageInfo;->a:Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdLogoURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/domob/wall/core/DetailsPageInfo;->a:Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenshot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/wall/core/DetailsPageInfo;->a:Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getScreenshot()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/domob/wall/core/DetailsPageInfo;->a:Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdSize()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/domob/wall/core/DetailsPageInfo;->a:Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/domob/wall/core/DetailsPageInfo;->a:Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->isNew()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetailsPageInfo [adItemInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/DetailsPageInfo;->a:Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
