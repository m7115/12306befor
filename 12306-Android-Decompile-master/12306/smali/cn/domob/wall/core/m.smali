.class Lcn/domob/wall/core/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/wall/core/p;

.field private static b:Lcn/domob/wall/core/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/m;->a:Lcn/domob/wall/core/p;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a()Lcn/domob/wall/core/m;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcn/domob/wall/core/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/domob/wall/core/m;->b:Lcn/domob/wall/core/m;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcn/domob/wall/core/m;

    invoke-direct {v0}, Lcn/domob/wall/core/m;-><init>()V

    sput-object v0, Lcn/domob/wall/core/m;->b:Lcn/domob/wall/core/m;

    .line 32
    :cond_0
    sget-object v0, Lcn/domob/wall/core/m;->b:Lcn/domob/wall/core/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v0

    const-string v1, "imp"

    const-string v2, "ppid=? and sid=? and id=? "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcn/domob/wall/core/k;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcn/domob/wall/core/AdInfo;->h()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p2}, Lcn/domob/wall/core/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic b()Lcn/domob/wall/core/p;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcn/domob/wall/core/m;->a:Lcn/domob/wall/core/p;

    return-object v0
.end method


# virtual methods
.method a(Lcn/domob/wall/core/k;)V
    .locals 2
    .parameter

    .prologue
    .line 161
    invoke-virtual {p1}, Lcn/domob/wall/core/k;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/domob/wall/core/m$1;

    invoke-direct {v1, p0, p1}, Lcn/domob/wall/core/m$1;-><init>(Lcn/domob/wall/core/m;Lcn/domob/wall/core/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcn/domob/wall/core/m;->b(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)I

    move-result v0

    invoke-virtual {p1}, Lcn/domob/wall/core/k;->e()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 80
    :cond_0
    return-void
.end method

.method a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$i;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcn/domob/wall/core/r$b;

    invoke-static {}, Lcn/domob/wall/core/r;->a()Lcn/domob/wall/core/r;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/domob/wall/core/r$b;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)V

    .line 44
    invoke-virtual {v0, p3}, Lcn/domob/wall/core/r$b;->a(Lcn/domob/wall/core/r$i;)V

    .line 45
    invoke-virtual {v0}, Lcn/domob/wall/core/r$b;->a()V

    .line 46
    return-void
.end method

.method a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$j;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcn/domob/wall/core/r$c;

    invoke-static {}, Lcn/domob/wall/core/r;->a()Lcn/domob/wall/core/r;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/domob/wall/core/r$c;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)V

    .line 56
    invoke-virtual {v0, p3}, Lcn/domob/wall/core/r$c;->a(Lcn/domob/wall/core/r$j;)V

    .line 57
    invoke-virtual {p3}, Lcn/domob/wall/core/r$j;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/wall/core/r$j;->b:Lcn/domob/wall/core/r$j;

    invoke-virtual {v2}, Lcn/domob/wall/core/r$j;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p2, v3}, Lcn/domob/wall/core/AdInfo;->setAdActualPosition(I)V

    .line 59
    invoke-virtual {v0, v3}, Lcn/domob/wall/core/r$c;->b(I)V

    .line 64
    :goto_0
    invoke-direct {p0, p1, p2}, Lcn/domob/wall/core/m;->b(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/r$c;->a(I)V

    .line 65
    invoke-virtual {v0}, Lcn/domob/wall/core/r$c;->a()V

    .line 66
    return-void

    .line 61
    :cond_0
    invoke-virtual {p2}, Lcn/domob/wall/core/AdInfo;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/r$c;->b(I)V

    goto :goto_0
.end method

.method a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$l;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Lcn/domob/wall/core/r$d;

    invoke-static {}, Lcn/domob/wall/core/r;->a()Lcn/domob/wall/core/r;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/domob/wall/core/r$d;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)V

    .line 136
    invoke-virtual {v0, p3}, Lcn/domob/wall/core/r$d;->a(Lcn/domob/wall/core/r$l;)V

    .line 137
    invoke-virtual {v0}, Lcn/domob/wall/core/r$d;->a()V

    .line 138
    return-void
.end method

.method a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$m;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcn/domob/wall/core/r$h;

    invoke-static {}, Lcn/domob/wall/core/r;->a()Lcn/domob/wall/core/r;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/domob/wall/core/r$h;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)V

    .line 109
    invoke-virtual {v0, p3}, Lcn/domob/wall/core/r$h;->a(Lcn/domob/wall/core/r$m;)V

    .line 110
    invoke-virtual {v0, p4}, Lcn/domob/wall/core/r$h;->a(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Lcn/domob/wall/core/r$h;->a()V

    .line 112
    return-void
.end method

.method a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/DService$ReportUserActionType;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 121
    new-instance v0, Lcn/domob/wall/core/r$o;

    invoke-static {}, Lcn/domob/wall/core/r;->a()Lcn/domob/wall/core/r;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcn/domob/wall/core/r$o;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;)V

    .line 123
    invoke-virtual {v0, p2}, Lcn/domob/wall/core/r$o;->a(Lcn/domob/wall/core/DService$ReportUserActionType;)V

    .line 124
    invoke-virtual {v0}, Lcn/domob/wall/core/r$o;->a()V

    .line 125
    return-void
.end method

.method a(Lcn/domob/wall/core/k;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/wall/core/k;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p1}, Lcn/domob/wall/core/k;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/domob/wall/core/m$2;

    invoke-direct {v1, p0, p2, p1}, Lcn/domob/wall/core/m$2;-><init>(Lcn/domob/wall/core/m;Ljava/util/ArrayList;Lcn/domob/wall/core/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method b(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;Lcn/domob/wall/core/r$i;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    new-instance v0, Lcn/domob/wall/core/r$b;

    invoke-static {}, Lcn/domob/wall/core/r;->a()Lcn/domob/wall/core/r;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2}, Lcn/domob/wall/core/r$b;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)V

    .line 151
    invoke-virtual {v0, p3}, Lcn/domob/wall/core/r$b;->a(Lcn/domob/wall/core/r$i;)V

    .line 152
    invoke-virtual {v0}, Lcn/domob/wall/core/r$b;->a()V

    .line 153
    return-void
.end method
