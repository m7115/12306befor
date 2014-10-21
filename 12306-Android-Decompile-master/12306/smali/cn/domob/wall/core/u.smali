.class Lcn/domob/wall/core/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/u$b;,
        Lcn/domob/wall/core/u$a;
    }
.end annotation


# static fields
.field static a:Lcn/domob/wall/core/u;

.field private static final b:Lcn/domob/wall/core/p;

.field private static final e:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/u;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wallImages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/wall/core/u;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/domob/wall/core/u;->d:Ljava/util/HashMap;

    .line 41
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/u;->c:Ljava/util/concurrent/ExecutorService;

    .line 43
    return-void
.end method

.method static declared-synchronized a()Lcn/domob/wall/core/u;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcn/domob/wall/core/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/domob/wall/core/u;->a:Lcn/domob/wall/core/u;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcn/domob/wall/core/u;

    invoke-direct {v0}, Lcn/domob/wall/core/u;-><init>()V

    sput-object v0, Lcn/domob/wall/core/u;->a:Lcn/domob/wall/core/u;

    .line 37
    :cond_0
    sget-object v0, Lcn/domob/wall/core/u;->a:Lcn/domob/wall/core/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 287
    if-nez p2, :cond_0

    .line 288
    sget-object v1, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    const-string v2, "The load picture byte array is null"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->d(Ljava/lang/String;)V

    .line 321
    :goto_0
    return-object v0

    .line 291
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcn/domob/wall/core/u;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 293
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 295
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/domob/wall/core/u;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcn/domob/wall/core/v;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 300
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 316
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move-object v0, v1

    .line 321
    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    .line 305
    sget-object v2, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 317
    :catch_1
    move-exception v0

    .line 318
    sget-object v2, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 311
    :catch_2
    move-exception v1

    .line 312
    :try_start_3
    sget-object v2, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 317
    :catch_3
    move-exception v1

    .line 318
    sget-object v2, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    .line 316
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 319
    :goto_2
    throw v0

    .line 317
    :catch_4
    move-exception v1

    .line 318
    sget-object v2, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic a(Lcn/domob/wall/core/u;Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/wall/core/u;->a(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/domob/wall/core/u;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcn/domob/wall/core/u;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/wall/core/p;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    return-object v0
.end method


# virtual methods
.method a([B)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 256
    if-eqz p1, :cond_0

    .line 257
    const/4 v0, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 259
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 261
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-static {}, Ljava/lang/System;->gc()V

    move-object v0, v1

    .line 266
    goto :goto_0

    .line 267
    :catch_1
    move-exception v0

    .line 268
    sget-object v2, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 269
    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 84
    sget-object v0, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Synchronization request image resources url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1, p2}, Lcn/domob/wall/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    sget-object v1, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    const-string v2, "Success in the local image resources, and generates drawable objects"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcn/domob/wall/core/t;->a()Lcn/domob/wall/core/t;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcn/domob/wall/core/t;->c(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-object v0

    .line 93
    :cond_0
    sget-object v0, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    const-string v2, "Can not be found locally valid image resources, began to try online access to"

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcn/domob/wall/core/f;

    invoke-direct {v0, p1, p2, v1}, Lcn/domob/wall/core/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/wall/core/f$a;)V

    .line 96
    invoke-virtual {v0}, Lcn/domob/wall/core/f;->c()V

    .line 97
    invoke-virtual {v0}, Lcn/domob/wall/core/f;->d()[B

    move-result-object v2

    .line 98
    invoke-virtual {v0}, Lcn/domob/wall/core/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lcn/domob/wall/core/u;->a(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    sget-object v1, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    const-string v3, "Successfully loaded the picture from the server"

    invoke-virtual {v1, v3}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 103
    :try_start_0
    invoke-static {}, Lcn/domob/wall/core/t;->a()Lcn/domob/wall/core/t;

    move-result-object v1

    array-length v3, v2

    invoke-virtual {v1, p2, v0, v3}, Lcn/domob/wall/core/t;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    iget-object v0, p0, Lcn/domob/wall/core/u;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0, v2}, Lcn/domob/wall/core/u;->a([B)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcn/domob/wall/core/u;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    sget-object v1, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 111
    :cond_1
    sget-object v0, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    const-string v2, "failed loaded the picture from the server"

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    move-object v0, v1

    .line 112
    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    sget-object v0, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asynchronous request image resources url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1, p2}, Lcn/domob/wall/core/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    const-string v1, "Local not find the image, open thread, try to access through the network"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcn/domob/wall/core/u$b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/domob/wall/core/u$b;-><init>(Lcn/domob/wall/core/u;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 61
    iget-object v1, p0, Lcn/domob/wall/core/u;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 74
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v1, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    const-string v2, "Successfully find the picture from SD, so do not need to download"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 64
    check-cast p1, Landroid/app/Activity;

    new-instance v1, Lcn/domob/wall/core/u$1;

    invoke-direct {v1, p0, p3, v0}, Lcn/domob/wall/core/u$1;-><init>(Lcn/domob/wall/core/u;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    invoke-static {}, Lcn/domob/wall/core/t;->a()Lcn/domob/wall/core/t;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/domob/wall/core/t;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 128
    .line 130
    iget-object v0, p0, Lcn/domob/wall/core/u;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcn/domob/wall/core/u;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 132
    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 135
    :goto_0
    if-eqz v0, :cond_1

    .line 166
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 139
    :cond_1
    invoke-static {}, Lcn/domob/wall/core/t;->a()Lcn/domob/wall/core/t;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcn/domob/wall/core/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 143
    :cond_2
    sget-object v1, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    const-string v2, "image %s is in DB but the local path is null."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 150
    :try_start_0
    invoke-static {p1, v2}, Lcn/domob/wall/core/v;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    iget-object v2, p0, Lcn/domob/wall/core/u;->d:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-static {}, Lcn/domob/wall/core/t;->a()Lcn/domob/wall/core/t;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcn/domob/wall/core/t;->d(Ljava/lang/String;)V

    .line 158
    sget-object v2, Lcn/domob/wall/core/u;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 159
    goto :goto_1

    .line 162
    :cond_4
    invoke-static {}, Lcn/domob/wall/core/t;->a()Lcn/domob/wall/core/t;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcn/domob/wall/core/t;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
