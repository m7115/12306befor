.class public Lcn/domob/wall/core/AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/AdInfo$AdType;,
        Lcn/domob/wall/core/AdInfo$ClickActionType;,
        Lcn/domob/wall/core/AdInfo$AdStyle;
    }
.end annotation


# static fields
.field protected static final a:I = -0x1

.field private static d:Lcn/domob/wall/core/p;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Ljava/lang/String;

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

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/AdInfo;->d:Lcn/domob/wall/core/p;

    return-void
.end method

.method public constructor <init>(JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "lastRequestTime"
    .parameter "json"
    .parameter "searchId"
    .parameter "adStyle"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/wall/core/AdInfo;->g:I

    .line 65
    const-string v0, "false"

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->x:Ljava/lang/String;

    .line 66
    const-string v0, "true"

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->y:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->A:Ljava/util/List;

    .line 97
    if-eqz p3, :cond_2

    .line 98
    iput-object p4, p0, Lcn/domob/wall/core/AdInfo;->j:Ljava/lang/String;

    .line 99
    const-string v0, "id"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->k:Ljava/lang/String;

    .line 100
    const-string v0, "type"

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/AdInfo;->e:I

    .line 101
    const-string v0, "pos"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/AdInfo;->f:I

    .line 102
    const-string v0, "logo"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->l:Ljava/lang/String;

    .line 103
    const-string v0, "image"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->m:Ljava/lang/String;

    .line 104
    const-string v0, "name"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->n:Ljava/lang/String;

    .line 105
    const-string v0, "title"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->o:Ljava/lang/String;

    .line 106
    const-string v0, "texts"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->p:Ljava/lang/String;

    .line 107
    const-string v0, "provider"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->q:Ljava/lang/String;

    .line 108
    const-string v0, "desc"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->r:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lcn/domob/wall/core/AdInfo;->w:Ljava/lang/String;

    .line 111
    const/4 v2, 0x0

    .line 113
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v3, "screenshot"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 117
    :goto_0
    if-eqz v3, :cond_0

    move v0, v1

    .line 118
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 120
    :try_start_1
    iget-object v2, p0, Lcn/domob/wall/core/AdInfo;->A:Ljava/util/List;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    sget-object v3, Lcn/domob/wall/core/AdInfo;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    .line 121
    :catch_1
    move-exception v2

    .line 122
    sget-object v4, Lcn/domob/wall/core/AdInfo;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v4, v2}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 127
    :cond_0
    sget-object v0, Lcn/domob/wall/core/AdInfo;->d:Lcn/domob/wall/core/p;

    const-string v2, "Screenshot of the page with details of the ad is empty"

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->d(Ljava/lang/String;)V

    .line 129
    :cond_1
    const-string v0, "identifier"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->s:Ljava/lang/String;

    .line 130
    const-string v0, "vc"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/AdInfo;->i:I

    .line 131
    const-string v0, "vn"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->t:Ljava/lang/String;

    .line 132
    const-string v0, "action_url"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->c:Ljava/lang/String;

    .line 133
    const-string v0, "click_tracker"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->u:Ljava/lang/String;

    .line 134
    const-string v0, "size"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/AdInfo;->h:I

    .line 135
    const-string v0, "release_time"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/domob/wall/core/AdInfo;->z:J

    .line 136
    sget-object v0, Lcn/domob/wall/core/AdInfo;->d:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0a\u6b21\u8bf7\u6c42\u65f6\u95f4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5e7f\u544a\u4e0a\u7ebf\u65f6\u95f4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcn/domob/wall/core/AdInfo;->z:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 137
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    .line 138
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->x:Ljava/lang/String;

    .line 142
    :goto_3
    const-string v0, "action_type"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/AdInfo;->b:I

    .line 143
    const-string v0, "tr"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->v:Ljava/lang/String;

    .line 144
    const-string v0, "showd"

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->y:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->y:Ljava/lang/String;

    .line 148
    :cond_2
    return-void

    .line 140
    :cond_3
    iget-wide v2, p0, Lcn/domob/wall/core/AdInfo;->z:J

    cmp-long v0, v2, p1

    if-lez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/AdInfo;->x:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcn/domob/wall/core/AdInfo;->g:I

    return v0
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcn/domob/wall/core/AdInfo;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()J
    .locals 2

    .prologue
    .line 314
    iget-wide v0, p0, Lcn/domob/wall/core/AdInfo;->z:J

    return-wide v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->u:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->y:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAdActionType()Lcn/domob/wall/core/AdInfo$ClickActionType;
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Lcn/domob/wall/core/AdInfo;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 290
    sget-object v0, Lcn/domob/wall/core/AdInfo$ClickActionType;->DOWNLOAD:Lcn/domob/wall/core/AdInfo$ClickActionType;

    .line 298
    :goto_0
    return-object v0

    .line 291
    :cond_0
    iget v0, p0, Lcn/domob/wall/core/AdInfo;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 292
    sget-object v0, Lcn/domob/wall/core/AdInfo$ClickActionType;->INTERNAL_BROWSER:Lcn/domob/wall/core/AdInfo$ClickActionType;

    goto :goto_0

    .line 293
    :cond_1
    iget v0, p0, Lcn/domob/wall/core/AdInfo;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 294
    sget-object v0, Lcn/domob/wall/core/AdInfo$ClickActionType;->EXTERNAL_BROWSER:Lcn/domob/wall/core/AdInfo$ClickActionType;

    goto :goto_0

    .line 295
    :cond_2
    iget v0, p0, Lcn/domob/wall/core/AdInfo;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 296
    sget-object v0, Lcn/domob/wall/core/AdInfo$ClickActionType;->LAUNCH:Lcn/domob/wall/core/AdInfo$ClickActionType;

    goto :goto_0

    .line 298
    :cond_3
    sget-object v0, Lcn/domob/wall/core/AdInfo$ClickActionType;->NONE:Lcn/domob/wall/core/AdInfo$ClickActionType;

    goto :goto_0
.end method

.method public getAdBannerImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getAdBriefText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getAdDetailDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getAdLogoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getAdName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPosition()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcn/domob/wall/core/AdInfo;->f:I

    return v0
.end method

.method public getAdProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSize()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcn/domob/wall/core/AdInfo;->h:I

    return v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()Lcn/domob/wall/core/AdInfo$AdType;
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcn/domob/wall/core/AdInfo;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 162
    sget-object v0, Lcn/domob/wall/core/AdInfo$AdType;->GAME:Lcn/domob/wall/core/AdInfo$AdType;

    .line 166
    :goto_0
    return-object v0

    .line 163
    :cond_0
    iget v0, p0, Lcn/domob/wall/core/AdInfo;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 164
    sget-object v0, Lcn/domob/wall/core/AdInfo$AdType;->APPLICATION:Lcn/domob/wall/core/AdInfo$AdType;

    goto :goto_0

    .line 166
    :cond_1
    sget-object v0, Lcn/domob/wall/core/AdInfo$AdType;->NONE:Lcn/domob/wall/core/AdInfo$AdType;

    goto :goto_0
.end method

.method public getAdVersionCode()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcn/domob/wall/core/AdInfo;->i:I

    return v0
.end method

.method public getAdVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->t:Ljava/lang/String;

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
    .line 254
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->A:Ljava/util/List;

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected i()Lcn/domob/wall/core/AdInfo$AdStyle;
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->w:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->w:Ljava/lang/String;

    invoke-static {}, Lcn/domob/wall/core/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lcn/domob/wall/core/AdInfo$AdStyle;->XX:Lcn/domob/wall/core/AdInfo$AdStyle;

    .line 366
    :goto_0
    return-object v0

    .line 360
    :cond_0
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->w:Ljava/lang/String;

    const-string v1, "own"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    sget-object v0, Lcn/domob/wall/core/AdInfo$AdStyle;->HOUSE_AD:Lcn/domob/wall/core/AdInfo$AdStyle;

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->w:Ljava/lang/String;

    const-string v1, "wheel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    sget-object v0, Lcn/domob/wall/core/AdInfo$AdStyle;->BANNER:Lcn/domob/wall/core/AdInfo$AdStyle;

    goto :goto_0

    .line 366
    :cond_2
    sget-object v0, Lcn/domob/wall/core/AdInfo$AdStyle;->NONE:Lcn/domob/wall/core/AdInfo$AdStyle;

    goto :goto_0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcn/domob/wall/core/AdInfo;->x:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setAdActualPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 197
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcn/domob/wall/core/AdInfo;->g:I

    .line 198
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdInfo [mSearchId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/AdInfo;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/AdInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActualPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/AdInfo;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLogoURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScreenshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->A:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/AdInfo;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActionURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/AdInfo;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mReleaseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/domob/wall/core/AdInfo;->z:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/wall/core/AdInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isShowDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/AdInfo;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
