.class public Lcn/domob/android/offerwall/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/offerwall/i$a;,
        Lcn/domob/android/offerwall/i$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "http://duomeng.cn/api/12306/rp"

.field private static b:Lcn/domob/android/offerwall/m; = null

.field private static final c:Ljava/lang/String; = "ua"

.field private static final d:Ljava/lang/String; = "ipb"

.field private static final e:Ljava/lang/String; = "jstr"

.field private static final f:Ljava/lang/String; = "type"

.field private static final g:Ljava/lang/String; = "id"

.field private static final h:Ljava/lang/String; = "idtype"

.field private static final i:Ljava/lang/String; = "ts"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/offerwall/i;->b:Lcn/domob/android/offerwall/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcn/domob/android/offerwall/m;
    .locals 1

    sget-object v0, Lcn/domob/android/offerwall/i;->b:Lcn/domob/android/offerwall/m;

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcn/domob/android/offerwall/i$a;)V
    .locals 4

    :try_start_0
    invoke-static {p0, p1}, Lcn/domob/android/offerwall/i;->b(Landroid/content/Context;Lcn/domob/android/offerwall/i$a;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/domob/android/offerwall/i;->b:Lcn/domob/android/offerwall/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/domob/android/offerwall/l;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcn/domob/android/offerwall/i;->b:Lcn/domob/android/offerwall/m;

    const-string v1, "Report params is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcn/domob/android/offerwall/e;

    iget-object v2, p1, Lcn/domob/android/offerwall/i$a;->c:Ljava/lang/String;

    new-instance v3, Lcn/domob/android/offerwall/i$1;

    invoke-direct {v3, p1}, Lcn/domob/android/offerwall/i$1;-><init>(Lcn/domob/android/offerwall/i$a;)V

    invoke-direct {v1, p0, v2, v0, v3}, Lcn/domob/android/offerwall/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/offerwall/e$a;)V

    invoke-virtual {v1}, Lcn/domob/android/offerwall/e;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/i;->b:Lcn/domob/android/offerwall/m;

    const-string v2, "Error happened while reporting."

    invoke-virtual {v1, v2}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/String;)V

    sget-object v1, Lcn/domob/android/offerwall/i;->b:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcn/domob/android/offerwall/i$a;)Ljava/lang/String;
    .locals 7

    :try_start_0
    invoke-static {p0}, Lcn/domob/android/offerwall/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/domob/android/offerwall/DomobOfferWallSetting;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "type"

    iget-object v5, p1, Lcn/domob/android/offerwall/i$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p1, Lcn/domob/android/offerwall/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcn/domob/android/offerwall/i;->b:Lcn/domob/android/offerwall/m;

    const-string v2, "Error happened while building report params."

    invoke-virtual {v1, v2}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/String;)V

    sget-object v1, Lcn/domob/android/offerwall/i;->b:Lcn/domob/android/offerwall/m;

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "id"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app"

    iget-object v5, p1, Lcn/domob/android/offerwall/i$a;->a:Ljava/lang/String;

    const-string v6, "installed"

    if-ne v5, v6, :cond_1

    const-string v0, "pkg"

    :cond_1
    const-string v5, "idtype"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v5, "ts"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "ua"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ipb"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "jstr"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcn/domob/android/offerwall/l;->a(Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method
