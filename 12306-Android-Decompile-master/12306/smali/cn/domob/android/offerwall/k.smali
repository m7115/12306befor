.class Lcn/domob/android/offerwall/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/offerwall/k$b;,
        Lcn/domob/android/offerwall/k$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/offerwall/m; = null

.field private static final h:Ljava/lang/String; = "status"

.field private static final i:Ljava/lang/String; = "refresh_interval"

.field private static final j:Ljava/lang/String; = "results"

.field private static final k:Ljava/lang/String; = "id"

.field private static final l:Ljava/lang/String; = "rp_url"

.field private static final m:Ljava/lang/String; = "name"

.field private static final n:Ljava/lang/String; = "pkg"

.field private static final o:Ljava/lang/String; = "file_url"

.field private static final p:Ljava/lang/String; = "config"

.field private static final q:Ljava/lang/String; = "autorun"

.field private static final r:Ljava/lang/String; = "autodownload"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/domob/android/offerwall/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcn/domob/android/offerwall/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/offerwall/k;->a:Lcn/domob/android/offerwall/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;)Lcn/domob/android/offerwall/k;
    .locals 3

    new-instance v0, Lcn/domob/android/offerwall/k;

    invoke-direct {v0}, Lcn/domob/android/offerwall/k;-><init>()V

    invoke-direct {v0, p0}, Lcn/domob/android/offerwall/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/domob/android/offerwall/k;->a:Lcn/domob/android/offerwall/m;

    const-string v2, "OfferWall response is ok."

    invoke-virtual {v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iput-object p1, p0, Lcn/domob/android/offerwall/k;->b:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    const-string v2, "status"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/offerwall/k;->c:Ljava/lang/String;

    const-string v2, "refresh_interval"

    const/16 v3, 0xe10

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/domob/android/offerwall/k;->d:I

    const-string v2, "results"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/domob/android/offerwall/k;->e:Ljava/lang/String;

    const-string v2, "config"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "results"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/domob/android/offerwall/k;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    new-instance v5, Lcn/domob/android/offerwall/k$a;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcn/domob/android/offerwall/k$a;-><init>(Lcn/domob/android/offerwall/k;Lorg/json/JSONObject;)V

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcn/domob/android/offerwall/k;->f:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcn/domob/android/offerwall/k$a;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance v1, Lcn/domob/android/offerwall/k$b;

    invoke-direct {v1, p0, v2}, Lcn/domob/android/offerwall/k$b;-><init>(Lcn/domob/android/offerwall/k;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/android/offerwall/k;->g:Lcn/domob/android/offerwall/k$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v1

    sget-object v2, Lcn/domob/android/offerwall/k;->a:Lcn/domob/android/offerwall/m;

    invoke-virtual {v2, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected c()I
    .locals 1

    iget v0, p0, Lcn/domob/android/offerwall/k;->d:I

    return v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected e()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/domob/android/offerwall/k$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/domob/android/offerwall/k;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method protected f()Lcn/domob/android/offerwall/k$b;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/k;->g:Lcn/domob/android/offerwall/k$b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DomobOfferResponse [mOriginalRespStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/offerwall/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/offerwall/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRefreshInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/domob/android/offerwall/k;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mResults="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/offerwall/k;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/offerwall/k;->g:Lcn/domob/android/offerwall/k$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
