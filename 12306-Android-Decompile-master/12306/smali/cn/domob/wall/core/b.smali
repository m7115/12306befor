.class public Lcn/domob/wall/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/a/a$a;
.implements Lcn/domob/wall/core/a/b$a;
.implements Lcn/domob/wall/core/download/a$a;
.implements Lcn/domob/wall/core/download/d$a;


# static fields
.field private static a:Lcn/domob/wall/core/p; = null

.field private static final b:Ljava/lang/String; = "inapp"

.field private static final c:Ljava/lang/String; = "launch"

.field private static final d:Ljava/lang/String; = "url"

.field private static final e:Ljava/lang/String; = "download"


# instance fields
.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcn/domob/wall/core/DService$ShowDetailsPageListener;

.field private j:Lcn/domob/wall/core/k;

.field private k:Landroid/content/Context;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/p;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/domob/wall/core/k;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->f:Z

    .line 44
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->g:Z

    .line 45
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->h:Z

    .line 50
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->l:Z

    .line 53
    iput-object p2, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    .line 54
    iput-object p1, p0, Lcn/domob/wall/core/b;->k:Landroid/content/Context;

    .line 57
    invoke-static {p1, p0}, Lcn/domob/wall/core/download/a;->a(Landroid/content/Context;Lcn/domob/wall/core/download/a$a;)V

    .line 58
    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcn/domob/wall/core/b;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/wall/core/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcn/domob/wall/core/b;->k:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcn/domob/wall/core/AdInfo;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 191
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    sget-object v1, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "overrideUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 198
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    sget-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open landing page with URL:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->a(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcn/domob/wall/core/b;->a()Landroid/content/Context;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_0

    .line 205
    invoke-direct {p0}, Lcn/domob/wall/core/b;->b()V

    .line 206
    new-instance v0, Lcn/domob/wall/core/a/b;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/domob/wall/core/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/wall/core/a/b$a;Lcn/domob/wall/core/AdInfo;)V

    invoke-virtual {v0}, Lcn/domob/wall/core/a/b;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    :goto_0
    move v0, v6

    .line 249
    :goto_1
    return v0

    .line 217
    :cond_1
    const-string v2, "download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 219
    iget-boolean v1, p0, Lcn/domob/wall/core/b;->l:Z

    if-nez v1, :cond_2

    .line 221
    iput-boolean v6, p0, Lcn/domob/wall/core/b;->l:Z

    .line 223
    :cond_2
    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v2, Lcn/domob/wall/core/download/d;

    invoke-direct {p0}, Lcn/domob/wall/core/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1, p0}, Lcn/domob/wall/core/download/d;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/download/d$a;)V

    .line 227
    iget-object v0, p0, Lcn/domob/wall/core/b;->k:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/download/d;->a(Landroid/content/Context;)V

    .line 228
    sget-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download app with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_3
    const-string v2, "launch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 230
    new-instance v1, Lcn/domob/wall/core/a/a;

    iget-object v2, p0, Lcn/domob/wall/core/b;->k:Landroid/content/Context;

    invoke-direct {v1, v2, v0, p0, p1}, Lcn/domob/wall/core/a/a;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/wall/core/a/a$a;Lcn/domob/wall/core/AdInfo;)V

    invoke-virtual {v1}, Lcn/domob/wall/core/a/a;->a()V

    goto :goto_0

    .line 232
    :cond_4
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 235
    iget-object v0, p0, Lcn/domob/wall/core/b;->k:Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/wall/core/v;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 237
    if-nez v0, :cond_5

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 243
    :cond_5
    iget-object v1, p0, Lcn/domob/wall/core/b;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 245
    :cond_6
    sget-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle unknown action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->f:Z

    .line 267
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->g:Z

    .line 268
    iput-boolean v0, p0, Lcn/domob/wall/core/b;->h:Z

    .line 269
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcn/domob/wall/core/b;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/wall/core/b;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/wall/core/b;->g:Z

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r(Lcn/domob/wall/core/AdInfo;)Lcn/domob/wall/core/r$j;
    .locals 4
    .parameter

    .prologue
    .line 123
    invoke-virtual {p1}, Lcn/domob/wall/core/AdInfo;->i()Lcn/domob/wall/core/AdInfo$AdStyle;

    move-result-object v0

    .line 124
    sget-object v1, Lcn/domob/wall/core/AdInfo$AdStyle;->BANNER:Lcn/domob/wall/core/AdInfo$AdStyle;

    if-ne v0, v1, :cond_0

    .line 125
    sget-object v0, Lcn/domob/wall/core/r$j;->b:Lcn/domob/wall/core/r$j;

    .line 130
    :goto_0
    return-object v0

    .line 126
    :cond_0
    sget-object v1, Lcn/domob/wall/core/AdInfo$AdStyle;->HOUSE_AD:Lcn/domob/wall/core/AdInfo$AdStyle;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/domob/wall/core/AdInfo$AdStyle;->XX:Lcn/domob/wall/core/AdInfo$AdStyle;

    if-ne v0, v1, :cond_2

    .line 127
    :cond_1
    sget-object v0, Lcn/domob/wall/core/r$j;->c:Lcn/domob/wall/core/r$j;

    goto :goto_0

    .line 129
    :cond_2
    sget-object v1, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad style error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcn/domob/wall/core/r$j;->a:Lcn/domob/wall/core/r$j;

    goto :goto_0
.end method


# virtual methods
.method a(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcn/domob/wall/core/b;->c(Lcn/domob/wall/core/AdInfo;)Z

    .line 85
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$j;->d:Lcn/domob/wall/core/r$j;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$j;)V

    .line 87
    return-void
.end method

.method a(Lcn/domob/wall/core/DService$ShowDetailsPageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcn/domob/wall/core/b;->i:Lcn/domob/wall/core/DService$ShowDetailsPageListener;

    .line 260
    return-void
.end method

.method a(Lcn/domob/wall/core/DetailsPageInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 67
    invoke-virtual {p1}, Lcn/domob/wall/core/DetailsPageInfo;->a()Lcn/domob/wall/core/AdInfo;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdActionType()Lcn/domob/wall/core/AdInfo$ClickActionType;

    move-result-object v1

    sget-object v2, Lcn/domob/wall/core/AdInfo$ClickActionType;->DOWNLOAD:Lcn/domob/wall/core/AdInfo$ClickActionType;

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0, v0}, Lcn/domob/wall/core/b;->c(Lcn/domob/wall/core/AdInfo;)Z

    .line 71
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v3, Lcn/domob/wall/core/r$j;->e:Lcn/domob/wall/core/r$j;

    invoke-virtual {v1, v2, v0, v3}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$j;)V

    .line 74
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/webkit/WebView;Lcn/domob/wall/core/AdInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    return-void
.end method

.method public a(Ljava/lang/String;Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$m;->c:Lcn/domob/wall/core/r$m;

    invoke-virtual {v0, v1, p2, v2, p1}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$m;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcn/domob/wall/core/AdInfo;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 360
    sget-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/p;

    const-string v1, "LandingPage \u5185\u4e0b\u8f7d\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->a(Ljava/lang/String;)V

    .line 365
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Lcn/domob/wall/core/v;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 370
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_0
    invoke-static {v0}, Lcn/domob/wall/core/v;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/domob/wall/core/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://download?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_0
    invoke-direct {p0, p3, v0}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/AdInfo;Ljava/lang/String;)Z

    .line 388
    :goto_1
    return-void

    .line 377
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/domob/wall/core/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://download?url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    sget-object v0, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/p;

    const-string v1, "\u89e3\u6790LandingPage\u4e2d\u4e0b\u8f7d\u51fa\u73b0\u9519\u8bef\uff0c\u5730\u5740\u4e3a%s\uff0cinfoURL\u4e3a%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method b(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 96
    invoke-virtual {p1}, Lcn/domob/wall/core/AdInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    invoke-virtual {p1}, Lcn/domob/wall/core/AdInfo;->getAdActionType()Lcn/domob/wall/core/AdInfo$ClickActionType;

    move-result-object v0

    sget-object v1, Lcn/domob/wall/core/AdInfo$ClickActionType;->DOWNLOAD:Lcn/domob/wall/core/AdInfo$ClickActionType;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/AdInfo$ClickActionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/domob/wall/core/AdInfo;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcn/domob/wall/core/b;->i:Lcn/domob/wall/core/DService$ShowDetailsPageListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcn/domob/wall/core/b;->i:Lcn/domob/wall/core/DService$ShowDetailsPageListener;

    new-instance v1, Lcn/domob/wall/core/DetailsPageInfo;

    invoke-direct {v1, p1}, Lcn/domob/wall/core/DetailsPageInfo;-><init>(Lcn/domob/wall/core/AdInfo;)V

    invoke-interface {v0, v1}, Lcn/domob/wall/core/DService$ShowDetailsPageListener;->onShowDetailsPage(Lcn/domob/wall/core/DetailsPageInfo;)V

    .line 107
    :cond_0
    :goto_0
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    invoke-direct {p0, p1}, Lcn/domob/wall/core/b;->r(Lcn/domob/wall/core/AdInfo;)Lcn/domob/wall/core/r$j;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$j;)V

    .line 114
    :goto_1
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0, p1}, Lcn/domob/wall/core/b;->c(Lcn/domob/wall/core/AdInfo;)Z

    goto :goto_0

    .line 111
    :cond_2
    const-string v0, "DrwSDK"

    const-string v1, "Please implement the method setAdActualPosition(int position) of AdInfo, otherwise it is impossible to achieve onClickWallItem(AdInfo itemInfo)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 289
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/AdInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$m;->d:Lcn/domob/wall/core/r$m;

    invoke-virtual {v0, v1, p2, v2, p1}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$m;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$m;->e:Lcn/domob/wall/core/r$m;

    invoke-virtual {v0, v1, p2, v2, p1}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$m;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    sget-object v1, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method c(Lcn/domob/wall/core/AdInfo;)Z
    .locals 5
    .parameter

    .prologue
    .line 149
    invoke-virtual {p1}, Lcn/domob/wall/core/AdInfo;->e()Ljava/lang/String;

    move-result-object v1

    .line 152
    :try_start_0
    invoke-static {}, Lcn/domob/wall/core/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {}, Lcn/domob/wall/core/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    sget-object v2, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheme xxx action scheme ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1, v1}, Lcn/domob/wall/core/b;->a(Lcn/domob/wall/core/AdInfo;Ljava/lang/String;)Z

    move-result v0

    .line 178
    :goto_0
    return v0

    .line 159
    :cond_0
    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcn/domob/wall/core/b;->k:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/domob/wall/core/v;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 164
    if-nez v0, :cond_1

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    :cond_1
    iget-object v1, p0, Lcn/domob/wall/core/b;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    sget-object v1, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/p;

    const-string v2, "Exception in click."

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    .line 174
    sget-object v1, Lcn/domob/wall/core/b;->a:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    .line 175
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcn/domob/wall/core/AdInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 273
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$m;->b:Lcn/domob/wall/core/r$m;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$m;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public e(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 317
    invoke-direct {p0}, Lcn/domob/wall/core/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$i;->b:Lcn/domob/wall/core/r$i;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$i;)V

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/b;->f:Z

    .line 322
    :cond_0
    return-void
.end method

.method public f(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 326
    invoke-direct {p0}, Lcn/domob/wall/core/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$i;->c:Lcn/domob/wall/core/r$i;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$i;)V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/b;->h:Z

    .line 331
    :cond_0
    return-void
.end method

.method public g(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 335
    invoke-direct {p0}, Lcn/domob/wall/core/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$i;->d:Lcn/domob/wall/core/r$i;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$i;)V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/b;->g:Z

    .line 340
    :cond_0
    return-void
.end method

.method public h(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 344
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$i;->e:Lcn/domob/wall/core/r$i;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$i;)V

    .line 347
    return-void
.end method

.method public i(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 392
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$l;->d:Lcn/domob/wall/core/r$l;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$l;)V

    .line 394
    return-void
.end method

.method public j(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 398
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$l;->e:Lcn/domob/wall/core/r$l;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$l;)V

    .line 401
    return-void
.end method

.method public k(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 405
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$l;->b:Lcn/domob/wall/core/r$l;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$l;)V

    .line 407
    return-void
.end method

.method public l(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 411
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$l;->f:Lcn/domob/wall/core/r$l;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$l;)V

    .line 414
    return-void
.end method

.method public m(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 418
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$l;->c:Lcn/domob/wall/core/r$l;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$l;)V

    .line 420
    iget-object v0, p0, Lcn/domob/wall/core/b;->k:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcn/domob/wall/core/b;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/wall/core/b$1;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/b$1;-><init>(Lcn/domob/wall/core/b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 428
    :cond_0
    return-void
.end method

.method public n(Lcn/domob/wall/core/AdInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    return-void
.end method

.method public o(Lcn/domob/wall/core/AdInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 438
    invoke-static {}, Lcn/domob/wall/core/download/a;->a()Lcn/domob/wall/core/download/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/download/a;->a(Lcn/domob/wall/core/AdInfo;)V

    .line 439
    return-void
.end method

.method public p(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 443
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$l;->g:Lcn/domob/wall/core/r$l;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$l;)V

    .line 445
    return-void
.end method

.method public q(Lcn/domob/wall/core/AdInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 449
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/b;->j:Lcn/domob/wall/core/k;

    sget-object v2, Lcn/domob/wall/core/r$l;->h:Lcn/domob/wall/core/r$l;

    invoke-virtual {v0, v1, p1, v2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$l;)V

    .line 451
    return-void
.end method
