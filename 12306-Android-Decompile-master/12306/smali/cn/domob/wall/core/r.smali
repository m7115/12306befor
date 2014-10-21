.class Lcn/domob/wall/core/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/r$1;,
        Lcn/domob/wall/core/r$g;,
        Lcn/domob/wall/core/r$k;,
        Lcn/domob/wall/core/r$c;,
        Lcn/domob/wall/core/r$h;,
        Lcn/domob/wall/core/r$b;,
        Lcn/domob/wall/core/r$d;,
        Lcn/domob/wall/core/r$o;,
        Lcn/domob/wall/core/r$f;,
        Lcn/domob/wall/core/r$a;,
        Lcn/domob/wall/core/r$j;,
        Lcn/domob/wall/core/r$m;,
        Lcn/domob/wall/core/r$i;,
        Lcn/domob/wall/core/r$l;,
        Lcn/domob/wall/core/r$n;,
        Lcn/domob/wall/core/r$e;
    }
.end annotation


# static fields
.field static a:Lcn/domob/wall/core/r; = null

.field private static b:Lcn/domob/wall/core/p; = null

.field private static final c:Ljava/lang/String; = "id"

.field private static final d:Ljava/lang/String; = "posit"

.field private static final e:Ljava/lang/String; = "rt"

.field private static final f:Ljava/lang/String; = "idv"

.field private static final g:Ljava/lang/String; = "ts"

.field private static final h:Ljava/lang/String; = "rnd"

.field private static final i:Ljava/lang/String; = "vcode"

.field private static final j:Ljava/lang/String; = "type"

.field private static final k:Ljava/lang/String; = "order"

.field private static final l:Ljava/lang/String; = "pkg"

.field private static final m:Ljava/lang/String; = "failsafe"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/r;->b:Lcn/domob/wall/core/p;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    return-void
.end method

.method static declared-synchronized a()Lcn/domob/wall/core/r;
    .locals 2

    .prologue
    .line 64
    const-class v1, Lcn/domob/wall/core/r;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/domob/wall/core/r;->a:Lcn/domob/wall/core/r;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcn/domob/wall/core/r;

    invoke-direct {v0}, Lcn/domob/wall/core/r;-><init>()V

    sput-object v0, Lcn/domob/wall/core/r;->a:Lcn/domob/wall/core/r;

    .line 67
    :cond_0
    sget-object v0, Lcn/domob/wall/core/r;->a:Lcn/domob/wall/core/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Lcn/domob/wall/core/p;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcn/domob/wall/core/r;->b:Lcn/domob/wall/core/p;

    return-object v0
.end method
