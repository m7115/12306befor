.class Lcn/domob/wall/core/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/j$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/wall/core/p; = null

.field private static final h:Ljava/lang/String; = "ad"

.field private static final i:Ljava/lang/String; = "error"

.field private static final j:Ljava/lang/String; = "control"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcn/domob/wall/core/j$a;

.field private e:Lcn/domob/wall/core/ControlInfo;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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
    .line 20
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/j;->a:Lcn/domob/wall/core/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private a(Ljava/util/List;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    .line 138
    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->isNew()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 142
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 228
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-direct {p0, p2}, Lcn/domob/wall/core/j;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 233
    const/4 v0, -0x1

    move v1, v2

    move v4, v0

    move v0, v2

    .line 235
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    move v5, v2

    move v3, v0

    .line 236
    :goto_1
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_1

    .line 237
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 238
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 236
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 242
    :cond_1
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdPosition()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 235
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 246
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 247
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 249
    :cond_3
    return-object v6
.end method

.method private a(JLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 183
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 184
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 186
    :try_start_0
    new-instance v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    move-wide v1, p1

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/domob/wall/core/AdInfo;-><init>(JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    sget-object v1, Lcn/domob/wall/core/j;->a:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 192
    :cond_0
    invoke-direct {p0, v8}, Lcn/domob/wall/core/j;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 193
    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p1}, Lcn/domob/wall/core/s;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 157
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    .line 159
    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdActionType()Lcn/domob/wall/core/AdInfo$ClickActionType;

    move-result-object v3

    sget-object v4, Lcn/domob/wall/core/AdInfo$ClickActionType;->LAUNCH:Lcn/domob/wall/core/AdInfo$ClickActionType;

    if-eq v3, v4, :cond_0

    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 162
    sget-object v3, Lcn/domob/wall/core/j;->a:Lcn/domob/wall/core/p;

    const-string v4, "This application %s has been installed and ClickActionType is not launch, so removed, and is no longer displayed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/wall/core/p;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    return-object p2
.end method

.method private a(Lcn/domob/wall/core/ControlInfo;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/wall/core/ControlInfo;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1}, Lcn/domob/wall/core/ControlInfo;->getAdOrder()Lcn/domob/wall/core/ControlInfo$a;

    move-result-object v1

    .line 210
    sget-object v2, Lcn/domob/wall/core/ControlInfo$a;->a:Lcn/domob/wall/core/ControlInfo$a;

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/ControlInfo$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    :goto_0
    return-object p3

    .line 214
    :cond_0
    sget-object v2, Lcn/domob/wall/core/ControlInfo$a;->b:Lcn/domob/wall/core/ControlInfo$a;

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/ControlInfo$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p3, p2

    .line 217
    goto :goto_0

    .line 218
    :cond_1
    sget-object v2, Lcn/domob/wall/core/ControlInfo$a;->c:Lcn/domob/wall/core/ControlInfo$a;

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/ControlInfo$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    invoke-direct {p0, p2, p3}, Lcn/domob/wall/core/j;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v0

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    .line 260
    add-int/lit8 v0, v2, 0x1

    move v3, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 262
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdPosition()I

    move-result v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdPosition()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 264
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    .line 265
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/domob/wall/core/AdInfo;

    .line 266
    invoke-interface {p1, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-interface {p1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 257
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 274
    :cond_2
    return-object p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 63
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 65
    const-string v1, "sid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/wall/core/j;->b:Ljava/lang/String;

    .line 68
    const-string v1, "cid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/wall/core/j;->c:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcn/domob/wall/core/j;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/domob/wall/core/j;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Lcn/domob/wall/core/n;->a()Lcn/domob/wall/core/n;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/j;->c:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcn/domob/wall/core/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    :cond_0
    const-string v1, "ad"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 76
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 78
    const-string v2, "control"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    if-eqz v1, :cond_1

    .line 81
    new-instance v0, Lcn/domob/wall/core/j$a;

    invoke-direct {v0, p0, v1}, Lcn/domob/wall/core/j$a;-><init>(Lcn/domob/wall/core/j;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcn/domob/wall/core/j;->d:Lcn/domob/wall/core/j$a;

    .line 121
    :goto_0
    const/4 v0, 0x1

    .line 125
    :goto_1
    return v0

    .line 83
    :cond_1
    if-eqz v0, :cond_2

    .line 84
    new-instance v1, Lcn/domob/wall/core/ControlInfo;

    invoke-direct {v1, v0}, Lcn/domob/wall/core/ControlInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/wall/core/j;->e:Lcn/domob/wall/core/ControlInfo;

    .line 87
    :cond_2
    if-eqz v4, :cond_3

    .line 88
    invoke-static {}, Lcn/domob/wall/core/n;->a()Lcn/domob/wall/core/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/n;->a(Landroid/content/Context;)J

    move-result-wide v1

    .line 90
    sget-object v0, Lcn/domob/wall/core/j;->a:Lcn/domob/wall/core/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0a\u6b21\u8bf7\u6c42\u65f6\u95f4\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    .line 92
    const-string v3, "wheel"

    iget-object v5, p0, Lcn/domob/wall/core/j;->b:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/domob/wall/core/j;->a(JLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/j;->g:Ljava/util/List;

    .line 96
    invoke-static {}, Lcn/domob/wall/core/v;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcn/domob/wall/core/j;->b:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/domob/wall/core/j;->a(JLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-direct {p0, p1, v0}, Lcn/domob/wall/core/j;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 103
    const-string v3, "own"

    iget-object v5, p0, Lcn/domob/wall/core/j;->b:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/domob/wall/core/j;->a(JLjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 106
    invoke-direct {p0, p1, v0}, Lcn/domob/wall/core/j;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcn/domob/wall/core/j;->e:Lcn/domob/wall/core/ControlInfo;

    invoke-direct {p0, v1, v6, v0}, Lcn/domob/wall/core/j;->a(Lcn/domob/wall/core/ControlInfo;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/j;->f:Ljava/util/List;

    .line 113
    iget-object v0, p0, Lcn/domob/wall/core/j;->e:Lcn/domob/wall/core/ControlInfo;

    iget-object v1, p0, Lcn/domob/wall/core/j;->f:Ljava/util/List;

    invoke-direct {p0, v1}, Lcn/domob/wall/core/j;->a(Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/ControlInfo;->a(I)V

    .line 115
    invoke-static {}, Lcn/domob/wall/core/n;->a()Lcn/domob/wall/core/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/n;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    sget-object v1, Lcn/domob/wall/core/j;->a:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    .line 125
    const/4 v0, 0x0

    goto :goto_1

    .line 117
    :cond_3
    :try_start_1
    sget-object v0, Lcn/domob/wall/core/j;->a:Lcn/domob/wall/core/p;

    const-string v1, "There is no ad response or error response."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 287
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    .line 289
    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->isNew()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 294
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    return-object v1
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/wall/core/j;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcn/domob/wall/core/j;

    invoke-direct {v0}, Lcn/domob/wall/core/j;-><init>()V

    .line 38
    invoke-direct {v0, p1, p2}, Lcn/domob/wall/core/j;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    sget-object v1, Lcn/domob/wall/core/j;->a:Lcn/domob/wall/core/p;

    const-string v2, "Ad/Error response is ok."

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->a(Ljava/lang/String;)V

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcn/domob/wall/core/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Lcn/domob/wall/core/j$a;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcn/domob/wall/core/j;->d:Lcn/domob/wall/core/j$a;

    return-object v0
.end method

.method c()Lcn/domob/wall/core/ControlInfo;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcn/domob/wall/core/j;->e:Lcn/domob/wall/core/ControlInfo;

    return-object v0
.end method

.method d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcn/domob/wall/core/j;->f:Ljava/util/List;

    return-object v0
.end method

.method e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcn/domob/wall/core/j;->g:Ljava/util/List;

    return-object v0
.end method
