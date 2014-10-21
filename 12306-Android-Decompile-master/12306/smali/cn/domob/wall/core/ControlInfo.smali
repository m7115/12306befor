.class public Lcn/domob/wall/core/ControlInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/ControlInfo$a;
    }
.end annotation


# instance fields
.field a:Lcn/domob/wall/core/p;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->a:Lcn/domob/wall/core/p;

    .line 27
    const v0, 0xa4cb800

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->c:I

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->d:I

    .line 29
    const/16 v0, 0xf

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->e:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->f:I

    .line 31
    const v0, 0x493e0

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->g:I

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->h:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->i:I

    .line 35
    const-string v0, "false"

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->j:Ljava/lang/String;

    .line 36
    const-string v0, "true"

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->k:Ljava/lang/String;

    .line 37
    const-string v0, "true"

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->l:Ljava/lang/String;

    .line 38
    const-string v0, "false"

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->m:Ljava/lang/String;

    .line 40
    const-string v0, "true"

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->n:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "controlJsonObject"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/ControlInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->a:Lcn/domob/wall/core/p;

    .line 27
    const v0, 0xa4cb800

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->c:I

    .line 28
    const/4 v0, 0x5

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->d:I

    .line 29
    const/16 v0, 0xf

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->e:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->f:I

    .line 31
    const v0, 0x493e0

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->g:I

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->h:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->i:I

    .line 35
    const-string v0, "false"

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->j:Ljava/lang/String;

    .line 36
    const-string v0, "true"

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->k:Ljava/lang/String;

    .line 37
    const-string v0, "true"

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->l:Ljava/lang/String;

    .line 38
    const-string v0, "false"

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->m:Ljava/lang/String;

    .line 40
    const-string v0, "true"

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->n:Ljava/lang/String;

    .line 48
    if-eqz p1, :cond_1

    .line 49
    :try_start_0
    const-string v0, "cache_duration"

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->c:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->c:I

    .line 51
    const-string v0, "ent_pic"

    iget-object v1, p0, Lcn/domob/wall/core/ControlInfo;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->j:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcn/domob/wall/core/ControlInfo;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "pic_url"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->b:Ljava/lang/String;

    .line 56
    :cond_0
    const-string v0, "new_rem"

    iget-object v1, p0, Lcn/domob/wall/core/ControlInfo;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->k:Ljava/lang/String;

    .line 58
    const-string v0, "top_tim"

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->d:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->d:I

    .line 60
    const-string v0, "dbut_show"

    iget-object v1, p0, Lcn/domob/wall/core/ControlInfo;->l:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->l:Ljava/lang/String;

    .line 62
    const-string v0, "show_num"

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->e:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->e:I

    .line 63
    const-string v0, "ad_order"

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->f:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->f:I

    .line 64
    const-string v0, "app_classify"

    iget-object v1, p0, Lcn/domob/wall/core/ControlInfo;->m:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->m:Ljava/lang/String;

    .line 66
    const-string v0, "ishavebanner"

    iget-object v1, p0, Lcn/domob/wall/core/ControlInfo;->n:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/ControlInfo;->n:Ljava/lang/String;

    .line 68
    const-string v0, "maximum"

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->h:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->h:I

    .line 70
    const-string v0, "interval"

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->g:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/ControlInfo;->g:I

    .line 72
    iget-object v0, p0, Lcn/domob/wall/core/ControlInfo;->a:Lcn/domob/wall/core/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlJsonObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/domob/wall/core/ControlInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    iget-object v1, p0, Lcn/domob/wall/core/ControlInfo;->a:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error happens when decoding controlJsonObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcn/domob/wall/core/ControlInfo;->a:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcn/domob/wall/core/ControlInfo;->c:I

    return v0
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput p1, p0, Lcn/domob/wall/core/ControlInfo;->i:I

    .line 171
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcn/domob/wall/core/ControlInfo;->h:I

    return v0
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcn/domob/wall/core/ControlInfo;->g:I

    return v0
.end method

.method public getAdOrder()Lcn/domob/wall/core/ControlInfo$a;
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lcn/domob/wall/core/ControlInfo;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    sget-object v0, Lcn/domob/wall/core/ControlInfo$a;->a:Lcn/domob/wall/core/ControlInfo$a;

    .line 152
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget v0, p0, Lcn/domob/wall/core/ControlInfo;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 148
    sget-object v0, Lcn/domob/wall/core/ControlInfo$a;->b:Lcn/domob/wall/core/ControlInfo$a;

    goto :goto_0

    .line 149
    :cond_1
    iget v0, p0, Lcn/domob/wall/core/ControlInfo;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 150
    sget-object v0, Lcn/domob/wall/core/ControlInfo$a;->c:Lcn/domob/wall/core/ControlInfo$a;

    goto :goto_0

    .line 152
    :cond_2
    sget-object v0, Lcn/domob/wall/core/ControlInfo$a;->a:Lcn/domob/wall/core/ControlInfo$a;

    goto :goto_0
.end method

.method public getBannerIntervalTime()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcn/domob/wall/core/ControlInfo;->d:I

    return v0
.end method

.method public getEnterPicURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcn/domob/wall/core/ControlInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfNewAd()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcn/domob/wall/core/ControlInfo;->i:I

    return v0
.end method

.method public getShowAdNum()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcn/domob/wall/core/ControlInfo;->e:I

    return v0
.end method

.method public isButtonShow()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcn/domob/wall/core/ControlInfo;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isChangeEnterPic()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcn/domob/wall/core/ControlInfo;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isClassify()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcn/domob/wall/core/ControlInfo;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isHasBanner()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcn/domob/wall/core/ControlInfo;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isShowNewReminder()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/domob/wall/core/ControlInfo;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControlInfo [mPicURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/ControlInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCacheDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bannerIntervalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxNumberOfAdImpAllowSavedInDB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numberOfNewAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/ControlInfo;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChangePic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/ControlInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewReminder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/ControlInfo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRightButShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/ControlInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClassify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/ControlInfo;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
