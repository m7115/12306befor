.class public Lcn/domob/wall/core/download/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0xf

.field private static b:Lcn/domob/wall/core/download/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/domob/wall/core/download/m",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/high16 v0, 0x80

    .line 20
    new-instance v1, Lcn/domob/wall/core/download/l$1;

    invoke-direct {v1, p0, v0}, Lcn/domob/wall/core/download/l$1;-><init>(Lcn/domob/wall/core/download/l;I)V

    sput-object v1, Lcn/domob/wall/core/download/l;->b:Lcn/domob/wall/core/download/m;

    .line 36
    new-instance v0, Lcn/domob/wall/core/download/l$2;

    const/16 v1, 0xf

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcn/domob/wall/core/download/l$2;-><init>(Lcn/domob/wall/core/download/l;IFZ)V

    sput-object v0, Lcn/domob/wall/core/download/l;->c:Ljava/util/LinkedHashMap;

    .line 49
    return-void
.end method

.method static synthetic b()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcn/domob/wall/core/download/l;->c:Ljava/util/LinkedHashMap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 53
    sget-object v1, Lcn/domob/wall/core/download/l;->b:Lcn/domob/wall/core/download/m;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcn/domob/wall/core/download/l;->b:Lcn/domob/wall/core/download/m;

    invoke-virtual {v0, p1}, Lcn/domob/wall/core/download/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 55
    if-eqz v0, :cond_0

    .line 56
    sget-object v2, Lcn/domob/wall/core/download/l;->b:Lcn/domob/wall/core/download/m;

    invoke-virtual {v2, p1}, Lcn/domob/wall/core/download/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v2, Lcn/domob/wall/core/download/l;->b:Lcn/domob/wall/core/download/m;

    invoke-virtual {v2, p1, v0}, Lcn/domob/wall/core/download/m;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v1

    .line 75
    :goto_0
    return-object v0

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    sget-object v1, Lcn/domob/wall/core/download/l;->c:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 63
    :try_start_1
    sget-object v0, Lcn/domob/wall/core/download/l;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 64
    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 66
    if-eqz v0, :cond_1

    .line 67
    sget-object v2, Lcn/domob/wall/core/download/l;->b:Lcn/domob/wall/core/download/m;

    invoke-virtual {v2, p1, v0}, Lcn/domob/wall/core/download/m;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v2, Lcn/domob/wall/core/download/l;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit v1

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 60
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 71
    :cond_1
    :try_start_3
    sget-object v0, Lcn/domob/wall/core/download/l;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcn/domob/wall/core/download/l;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 88
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    if-eqz p2, :cond_0

    .line 80
    sget-object v1, Lcn/domob/wall/core/download/l;->b:Lcn/domob/wall/core/download/m;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcn/domob/wall/core/download/l;->b:Lcn/domob/wall/core/download/m;

    invoke-virtual {v0, p1, p2}, Lcn/domob/wall/core/download/m;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-exit v1

    .line 84
    :cond_0
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
