.class Lcn/domob/android/offerwall/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/offerwall/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/offerwall/j$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "cid"

.field private static final B:Ljava/lang/String; = "json_data"

.field private static final C:Ljava/lang/String; = "UTF-8"

.field private static final D:Ljava/lang/String; = "zh-cn"

.field private static a:Lcn/domob/android/offerwall/m; = null

.field private static final d:Ljava/lang/String; = "http://duomeng.cn/api/12306/"

.field private static final e:Ljava/lang/String; = "rt"

.field private static final f:Ljava/lang/String; = "ts"

.field private static final g:Ljava/lang/String; = "ua"

.field private static final h:Ljava/lang/String; = "ipb"

.field private static final i:Ljava/lang/String; = "idv"

.field private static final j:Ljava/lang/String; = "sdk"

.field private static final k:Ljava/lang/String; = "v"

.field private static final l:Ljava/lang/String; = "l"

.field private static final m:Ljava/lang/String; = "f"

.field private static final n:Ljava/lang/String; = "e"

.field private static final o:Ljava/lang/String; = "so"

.field private static final p:Ljava/lang/String; = "sw"

.field private static final q:Ljava/lang/String; = "sh"

.field private static final r:Ljava/lang/String; = "sd"

.field private static final s:Ljava/lang/String; = "pb[identifier]"

.field private static final t:Ljava/lang/String; = "pb[version]"

.field private static final u:Ljava/lang/String; = "d[coord]"

.field private static final v:Ljava/lang/String; = "d[coord_timestamp]"

.field private static final w:Ljava/lang/String; = "d[pc]"

.field private static final x:Ljava/lang/String; = "d[dob]"

.field private static final y:Ljava/lang/String; = "d[gender]"

.field private static final z:Ljava/lang/String; = "network"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcn/domob/android/offerwall/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/offerwall/j;->a:Lcn/domob/android/offerwall/m;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/domob/android/offerwall/j;->b:Landroid/content/Context;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcn/domob/android/offerwall/j;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/domob/android/offerwall/j;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-static {v0}, Lcn/domob/android/offerwall/l;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sdk"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rt"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/domob/android/offerwall/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/offerwall/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Android,,,,,,,,"

    :cond_0
    const-string v2, "ua"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/domob/android/offerwall/DomobOfferWallSetting;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, "ipb"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "idv"

    iget-object v2, p0, Lcn/domob/android/offerwall/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/offerwall/f;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "020000-android-20120726"

    const-string v2, "v"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "l"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "f"

    const-string v2, "json_data"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "e"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/domob/android/offerwall/DomobOfferWallSetting;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "cid"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "so"

    iget-object v2, p0, Lcn/domob/android/offerwall/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/offerwall/f;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sw"

    iget-object v2, p0, Lcn/domob/android/offerwall/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/offerwall/f;->w(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sh"

    iget-object v2, p0, Lcn/domob/android/offerwall/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/offerwall/f;->x(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sd"

    iget-object v2, p0, Lcn/domob/android/offerwall/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/offerwall/f;->t(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pb[identifier]"

    iget-object v2, p0, Lcn/domob/android/offerwall/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/offerwall/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pb[version]"

    iget-object v2, p0, Lcn/domob/android/offerwall/j;->b:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/offerwall/f;->b(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/domob/android/offerwall/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/offerwall/f;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "d[coord]"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "d[coord_timestamp]"

    invoke-static {}, Lcn/domob/android/offerwall/f;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcn/domob/android/offerwall/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/offerwall/f;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "network"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v1

    :cond_6
    const-string v0, "DomobSDK"

    const-string v2, "publisher id is null or empty!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v0, "zh-cn"

    goto/16 :goto_1
.end method

.method private c()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcn/domob/android/offerwall/DomobOfferWallSetting;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "d[pc]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcn/domob/android/offerwall/DomobOfferWallSetting;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "d[dob]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcn/domob/android/offerwall/DomobOfferWallSetting;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "d[gender]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a(Lcn/domob/android/offerwall/e;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/domob/android/offerwall/e;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcn/domob/android/offerwall/j;->a:Lcn/domob/android/offerwall/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad resp string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/domob/android/offerwall/k;->a(Ljava/lang/String;)Lcn/domob/android/offerwall/k;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcn/domob/android/offerwall/j;->c:Lcn/domob/android/offerwall/j$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/domob/android/offerwall/j;->c:Lcn/domob/android/offerwall/j$a;

    invoke-interface {v1, v0}, Lcn/domob/android/offerwall/j$a;->a(Lcn/domob/android/offerwall/k;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v1, Lcn/domob/android/offerwall/j;->a:Lcn/domob/android/offerwall/m;

    const-string v2, "Ad respStr is null."

    invoke-virtual {v1, v2}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcn/domob/android/offerwall/j;->a:Lcn/domob/android/offerwall/m;

    const-string v2, "Connection error."

    invoke-virtual {v1, v2}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/domob/android/offerwall/j;->c:Lcn/domob/android/offerwall/j$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/domob/android/offerwall/j;->c:Lcn/domob/android/offerwall/j$a;

    invoke-interface {v1, v0}, Lcn/domob/android/offerwall/j$a;->a(Lcn/domob/android/offerwall/k;)V

    goto :goto_1
.end method

.method a(Lcn/domob/android/offerwall/j$a;)V
    .locals 4

    iput-object p1, p0, Lcn/domob/android/offerwall/j;->c:Lcn/domob/android/offerwall/j$a;

    invoke-direct {p0}, Lcn/domob/android/offerwall/j;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/domob/android/offerwall/j;->a:Lcn/domob/android/offerwall/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    new-instance v1, Lcn/domob/android/offerwall/e;

    iget-object v2, p0, Lcn/domob/android/offerwall/j;->b:Landroid/content/Context;

    const-string v3, "http://duomeng.cn/api/12306/"

    invoke-direct {v1, v2, v3, v0, p0}, Lcn/domob/android/offerwall/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/offerwall/e$a;)V

    invoke-virtual {v1}, Lcn/domob/android/offerwall/e;->b()V

    return-void
.end method
