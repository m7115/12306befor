.class Lcn/domob/wall/core/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field private static b:Lcn/domob/wall/core/p;

.field private static c:Z


# instance fields
.field private d:Lcn/domob/wall/core/f;

.field private e:Lcn/domob/wall/core/k;

.field private f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/d;->b:Lcn/domob/wall/core/p;

    .line 11
    sput-boolean v2, Lcn/domob/wall/core/d;->c:Z

    .line 12
    sput-boolean v2, Lcn/domob/wall/core/d;->a:Z

    return-void
.end method

.method public constructor <init>(Lcn/domob/wall/core/k;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/domob/wall/core/d;->e:Lcn/domob/wall/core/k;

    .line 20
    invoke-virtual {p1}, Lcn/domob/wall/core/k;->g()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/d;->f:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    const-string v1, "sdk"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "rt"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "ua"

    iget-object v2, p0, Lcn/domob/wall/core/d;->f:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/s;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "ipb"

    iget-object v2, p0, Lcn/domob/wall/core/d;->e:Lcn/domob/wall/core/k;

    invoke-virtual {v2}, Lcn/domob/wall/core/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "ppid"

    iget-object v2, p0, Lcn/domob/wall/core/d;->e:Lcn/domob/wall/core/k;

    invoke-virtual {v2}, Lcn/domob/wall/core/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "v"

    const-string v2, "%s-%s-%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "20131031"

    aput-object v5, v3, v4

    const-string v4, "android"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "20130801"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "sv"

    const-string v2, "010100"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {v0}, Lcn/domob/wall/core/v;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/domob/wall/core/c;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 25
    sget-boolean v0, Lcn/domob/wall/core/d;->c:Z

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcn/domob/wall/core/c;

    invoke-direct {v0}, Lcn/domob/wall/core/c;-><init>()V

    throw v0

    .line 29
    :cond_0
    sput-boolean v1, Lcn/domob/wall/core/d;->c:Z

    .line 31
    :try_start_0
    invoke-direct {p0}, Lcn/domob/wall/core/d;->b()Ljava/lang/String;

    move-result-object v6

    .line 32
    sget-object v0, Lcn/domob/wall/core/d;->b:Lcn/domob/wall/core/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a7\u5236\u8bf7\u6c42\u53c2\u6570:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lcn/domob/wall/core/f;

    iget-object v1, p0, Lcn/domob/wall/core/d;->f:Landroid/content/Context;

    sget-object v2, Lcn/domob/wall/core/g;->i:Ljava/lang/String;

    invoke-static {v2}, Lcn/domob/wall/core/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/f$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/d;->d:Lcn/domob/wall/core/f;

    .line 46
    :goto_0
    iget-object v0, p0, Lcn/domob/wall/core/d;->d:Lcn/domob/wall/core/f;

    invoke-virtual {v0}, Lcn/domob/wall/core/f;->c()V

    .line 47
    iget-object v0, p0, Lcn/domob/wall/core/d;->d:Lcn/domob/wall/core/f;

    invoke-virtual {v0}, Lcn/domob/wall/core/f;->e()Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v1, Lcn/domob/wall/core/d;->b:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63a7\u5236\u8bf7\u6c42\u8fd4\u56de:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 49
    if-eqz v0, :cond_2

    .line 52
    new-instance v1, Lcn/domob/wall/core/e;

    invoke-direct {v1, v0}, Lcn/domob/wall/core/e;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lcn/domob/wall/core/e;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/wall/core/s;->a(Ljava/util/ArrayList;)V

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcn/domob/wall/core/d;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    sput-boolean v9, Lcn/domob/wall/core/d;->c:Z

    .line 71
    :goto_2
    return-void

    .line 39
    :cond_1
    :try_start_1
    new-instance v0, Lcn/domob/wall/core/f;

    iget-object v1, p0, Lcn/domob/wall/core/d;->f:Landroid/content/Context;

    sget-object v2, Lcn/domob/wall/core/g;->m:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/f$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/d;->d:Lcn/domob/wall/core/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_2
    sget-object v1, Lcn/domob/wall/core/d;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    sput-boolean v9, Lcn/domob/wall/core/d;->c:Z

    goto :goto_2

    .line 59
    :cond_2
    :try_start_3
    sget-object v0, Lcn/domob/wall/core/d;->b:Lcn/domob/wall/core/p;

    const-string v1, "Config respStr is null."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    sput-boolean v9, Lcn/domob/wall/core/d;->c:Z

    throw v0
.end method
