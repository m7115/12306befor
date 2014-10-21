.class public Lcn/domob/wall/core/download/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/download/k$a;,
        Lcn/domob/wall/core/download/k$b;
    }
.end annotation


# static fields
.field private static b:Lcn/domob/wall/core/download/k;


# instance fields
.field a:Lcn/domob/wall/core/DService$OnImageDownload;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcn/domob/wall/core/download/l;

.field private e:Lcn/domob/wall/core/download/i;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/download/k;->g:Z

    .line 32
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/download/k;->c:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance v0, Lcn/domob/wall/core/download/l;

    invoke-direct {v0, p1}, Lcn/domob/wall/core/download/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/wall/core/download/k;->d:Lcn/domob/wall/core/download/l;

    .line 36
    new-instance v0, Lcn/domob/wall/core/download/i;

    invoke-direct {v0}, Lcn/domob/wall/core/download/i;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/download/k;->e:Lcn/domob/wall/core/download/i;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/download/k;->f:Ljava/util/Map;

    .line 38
    return-void
.end method

.method static synthetic a(Lcn/domob/wall/core/download/k;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/domob/wall/core/download/k;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcn/domob/wall/core/download/k;->d:Lcn/domob/wall/core/download/l;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/download/l;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcn/domob/wall/core/download/k;->e:Lcn/domob/wall/core/download/i;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/download/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    if-nez v0, :cond_1

    .line 102
    invoke-static {p1}, Lcn/domob/wall/core/download/j;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcn/domob/wall/core/download/k;->e:Lcn/domob/wall/core/download/i;

    invoke-virtual {v1, v0, p1}, Lcn/domob/wall/core/download/i;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcn/domob/wall/core/download/k;->d:Lcn/domob/wall/core/download/l;

    invoke-virtual {v1, p1, v0}, Lcn/domob/wall/core/download/l;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    iget-object v1, p0, Lcn/domob/wall/core/download/k;->d:Lcn/domob/wall/core/download/l;

    invoke-virtual {v1, p1, v0}, Lcn/domob/wall/core/download/l;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcn/domob/wall/core/download/k;
    .locals 1
    .parameter

    .prologue
    .line 41
    sget-object v0, Lcn/domob/wall/core/download/k;->b:Lcn/domob/wall/core/download/k;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcn/domob/wall/core/download/k;

    invoke-direct {v0, p0}, Lcn/domob/wall/core/download/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/domob/wall/core/download/k;->b:Lcn/domob/wall/core/download/k;

    .line 43
    :cond_0
    sget-object v0, Lcn/domob/wall/core/download/k;->b:Lcn/domob/wall/core/download/k;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcn/domob/wall/core/download/k;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/domob/wall/core/download/k$b;

    new-instance v2, Lcn/domob/wall/core/download/k$a;

    invoke-direct {v2, p0, p1, p2}, Lcn/domob/wall/core/download/k$a;-><init>(Lcn/domob/wall/core/download/k;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-direct {v1, p0, v2, p1}, Lcn/domob/wall/core/download/k$b;-><init>(Lcn/domob/wall/core/download/k;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 95
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 79
    iget-object v2, p0, Lcn/domob/wall/core/download/k;->f:Ljava/util/Map;

    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v0, p0, Lcn/domob/wall/core/download/k;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcn/domob/wall/core/download/k;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 88
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/domob/wall/core/download/k;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 89
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/download/k;->g:Z

    .line 48
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcn/domob/wall/core/DService$OnImageDownload;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p3, p0, Lcn/domob/wall/core/download/k;->a:Lcn/domob/wall/core/DService$OnImageDownload;

    .line 62
    iget-object v0, p0, Lcn/domob/wall/core/download/k;->d:Lcn/domob/wall/core/download/l;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/download/l;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    iget-object v1, p0, Lcn/domob/wall/core/download/k;->a:Lcn/domob/wall/core/DService$OnImageDownload;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcn/domob/wall/core/download/k;->a:Lcn/domob/wall/core/DService$OnImageDownload;

    invoke-interface {v1, v0, p1, p2}, Lcn/domob/wall/core/DService$OnImageDownload;->onDownloadSuc(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v1, p0, Lcn/domob/wall/core/download/k;->f:Ljava/util/Map;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcn/domob/wall/core/download/k;->f:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-boolean v0, p0, Lcn/domob/wall/core/download/k;->g:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcn/domob/wall/core/download/k;->d()V

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/wall/core/download/k;->g:Z

    .line 52
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/download/k;->g:Z

    .line 56
    invoke-direct {p0}, Lcn/domob/wall/core/download/k;->d()V

    .line 57
    return-void
.end method
