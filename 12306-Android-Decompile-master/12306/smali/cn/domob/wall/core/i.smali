.class Lcn/domob/wall/core/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/i$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/wall/core/p; = null

.field private static final e:Ljava/lang/String; = "idv"

.field private static final f:Ljava/lang/String; = "l"

.field private static final g:Ljava/lang/String; = "so"

.field private static final h:Ljava/lang/String; = "sw"

.field private static final i:Ljava/lang/String; = "sh"

.field private static final j:Ljava/lang/String; = "sd"

.field private static final k:Ljava/lang/String; = "d[coord_timestamp]"

.field private static final l:Ljava/lang/String; = "d[coord]"

.field private static final m:Ljava/lang/String; = "d[coord_acc]"

.field private static final n:Ljava/lang/String; = "d[coord_status]"

.field private static final o:Ljava/lang/String; = "d[coord_accuracy]"

.field private static final p:Ljava/lang/String; = "ama"

.field private static final q:Ljava/lang/String; = "an"

.field private static final r:Ljava/lang/String; = "lac"

.field private static final s:Ljava/lang/String; = "cell"

.field private static final t:Ljava/lang/String; = "mcc"

.field private static final u:Ljava/lang/String; = "mnc"

.field private static final v:Ljava/lang/String; = "scan"

.field private static final w:Ljava/lang/String; = "aaid"

.field private static final x:Ljava/lang/String; = "network"

.field private static final y:Ljava/lang/String; = "c"

.field private static final z:I = 0x2


# instance fields
.field private A:Lcn/domob/wall/core/i$a;

.field private b:Lcn/domob/wall/core/f;

.field private c:Lcn/domob/wall/core/k;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    return-void
.end method

.method public constructor <init>(Lcn/domob/wall/core/k;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    const-string v1, "New instance of ...AdRequest."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcn/domob/wall/core/i;->c:Lcn/domob/wall/core/k;

    .line 57
    invoke-virtual {p1}, Lcn/domob/wall/core/k;->g()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lcn/domob/wall/core/i;->A:Lcn/domob/wall/core/i$a;

    .line 59
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    const-string v1, "cid"

    invoke-static {}, Lcn/domob/wall/core/n;->a()Lcn/domob/wall/core/n;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "sdk"

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "rt"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "ua"

    iget-object v2, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/s;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "ipb"

    iget-object v2, p0, Lcn/domob/wall/core/i;->c:Lcn/domob/wall/core/k;

    invoke-virtual {v2}, Lcn/domob/wall/core/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "ppid"

    iget-object v2, p0, Lcn/domob/wall/core/i;->c:Lcn/domob/wall/core/k;

    invoke-virtual {v2}, Lcn/domob/wall/core/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "idv"

    iget-object v2, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/s;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "v"

    const-string v2, "%s-%s-%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "20131031"

    aput-object v4, v3, v7

    const-string v4, "android"

    aput-object v4, v3, v8

    const-string v4, "20130801"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "sv"

    const-string v2, "010100"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "l"

    invoke-static {}, Lcn/domob/wall/core/s;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "c"

    const-string v2, "%s,%s,%s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "ltx"

    aput-object v4, v3, v7

    const-string v4, "la"

    aput-object v4, v3, v8

    const-string v4, "iad"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "so"

    iget-object v2, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/s;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "sw"

    iget-object v2, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/s;->t(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "sh"

    iget-object v2, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/s;->u(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "sd"

    iget-object v2, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/s;->s(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "pb[identifier]"

    iget-object v2, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "pb[name]"

    iget-object v2, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/s;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "pb[version]"

    iget-object v2, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/s;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "network"

    iget-object v2, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/wall/core/s;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/s;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_0

    .line 175
    sget-object v2, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode dma:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/domob/wall/core/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 180
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    const-string v1, "dma"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/s;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 194
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 195
    const-string v1, "odin1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :goto_1
    iget-object v1, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/s;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_7

    .line 209
    const-string v2, "d[coord_timestamp]"

    invoke-static {}, Lcn/domob/wall/core/s;->f()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v2, "d[coord]"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "d[coord_acc]"

    invoke-static {}, Lcn/domob/wall/core/s;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "d[coord_accuracy]"

    invoke-static {}, Lcn/domob/wall/core/s;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :goto_2
    iget-object v1, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/s;->E(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 218
    sget-object v2, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    const-string v3, "Base info: cid=%s, lac=%s, mcc=%s, mnc=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, v1, v7

    aput-object v5, v4, v7

    aget-object v5, v1, v8

    aput-object v5, v4, v8

    aget-object v5, v1, v6

    aput-object v5, v4, v6

    aget-object v5, v1, v9

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 219
    const-string v2, "cell"

    aget-object v3, v1, v7

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v2, "lac"

    aget-object v3, v1, v8

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v2, "mcc"

    aget-object v3, v1, v6

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v2, "mnc"

    aget-object v1, v1, v9

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/s;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_1

    .line 227
    sget-object v2, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode ama:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/domob/wall/core/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 228
    const-string v2, "ama"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/domob/wall/core/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_1
    iget-object v1, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/s;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_2

    .line 232
    sget-object v2, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "des encode apSSID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "d!j@d#g$r%s^j&h*"

    invoke-static {v4, v1}, Lcn/domob/wall/core/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 233
    const-string v2, "an"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-static {v3, v1}, Lcn/domob/wall/core/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_2
    iget-object v1, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/s;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v1}, Lcn/domob/wall/core/v;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 238
    sget-object v2, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaned AP mac and name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 239
    const-string v2, "scan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_3
    iget-object v1, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/s;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v1}, Lcn/domob/wall/core/v;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 244
    const-string v2, "aaid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_4
    sget-object v1, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e7f\u544a\u8bf7\u6c42\u53c2\u6570:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 249
    invoke-static {v0}, Lcn/domob/wall/core/v;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_5
    const-string v2, "dma"

    const-string v3, "d!j@d#g$r%s^j&h*"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/domob/wall/core/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 199
    :cond_6
    const-string v2, "odin1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 214
    :cond_7
    const-string v1, "d[coord_status]"

    invoke-static {}, Lcn/domob/wall/core/s;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2
.end method


# virtual methods
.method protected a()V
    .locals 9

    .prologue
    .line 66
    sget-object v0, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    const-string v1, "Start to request ad."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcn/domob/wall/core/i;->b()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-static {}, Lcn/domob/wall/core/DService;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcn/domob/wall/core/f;

    iget-object v1, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    sget-object v2, Lcn/domob/wall/core/g;->i:Ljava/lang/String;

    invoke-static {v2}, Lcn/domob/wall/core/v;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/f$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/i;->b:Lcn/domob/wall/core/f;

    .line 74
    iget-object v0, p0, Lcn/domob/wall/core/i;->b:Lcn/domob/wall/core/f;

    invoke-virtual {v0}, Lcn/domob/wall/core/f;->b()V

    .line 88
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Lcn/domob/wall/core/f;

    iget-object v1, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    sget-object v2, Lcn/domob/wall/core/g;->m:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/f$a;)V

    iput-object v0, p0, Lcn/domob/wall/core/i;->b:Lcn/domob/wall/core/f;

    .line 80
    iget-object v0, p0, Lcn/domob/wall/core/i;->b:Lcn/domob/wall/core/f;

    invoke-virtual {v0}, Lcn/domob/wall/core/f;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    sget-object v1, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    const-string v2, "Error happens when sending ad request"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    .line 85
    sget-object v1, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcn/domob/wall/core/f;)V
    .locals 5
    .parameter

    .prologue
    .line 254
    invoke-virtual {p1}, Lcn/domob/wall/core/f;->e()Ljava/lang/String;

    move-result-object v1

    .line 255
    const/4 v0, 0x0

    .line 256
    sget-object v2, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5e7f\u544a\u8bf7\u6c42\u8fd4\u56de:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 257
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    new-instance v0, Lcn/domob/wall/core/j;

    invoke-direct {v0}, Lcn/domob/wall/core/j;-><init>()V

    iget-object v2, p0, Lcn/domob/wall/core/i;->d:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcn/domob/wall/core/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/domob/wall/core/j;

    move-result-object v0

    .line 262
    :goto_0
    iget-object v1, p0, Lcn/domob/wall/core/i;->A:Lcn/domob/wall/core/i$a;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcn/domob/wall/core/i;->A:Lcn/domob/wall/core/i$a;

    invoke-virtual {p1}, Lcn/domob/wall/core/f;->f()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcn/domob/wall/core/i$a;->a(Lcn/domob/wall/core/j;I)V

    .line 266
    :cond_0
    return-void

    .line 260
    :cond_1
    sget-object v1, Lcn/domob/wall/core/i;->a:Lcn/domob/wall/core/p;

    const-string v2, "Ad respStr is null."

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
