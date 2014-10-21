.class public Lcn/domob/wall/core/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcn/domob/wall/core/t;

.field private static b:Lcn/domob/wall/core/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/t;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a()Lcn/domob/wall/core/t;
    .locals 2

    .prologue
    .line 15
    const-class v1, Lcn/domob/wall/core/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/domob/wall/core/t;->a:Lcn/domob/wall/core/t;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcn/domob/wall/core/t;

    invoke-direct {v0}, Lcn/domob/wall/core/t;-><init>()V

    sput-object v0, Lcn/domob/wall/core/t;->a:Lcn/domob/wall/core/t;

    .line 18
    :cond_0
    sget-object v0, Lcn/domob/wall/core/t;->a:Lcn/domob/wall/core/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 308
    .line 310
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v0

    .line 312
    :try_start_0
    const-string v1, "image"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SUM(size)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/wall/core/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 315
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 321
    :goto_0
    if-eqz v1, :cond_0

    .line 322
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_0
    :goto_1
    sget-object v1, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v2, "Get all image resources the amount of space is %s kb"

    new-array v3, v8, [Ljava/lang/Object;

    div-int/lit16 v4, v0, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 328
    return v0

    .line 318
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 319
    :goto_2
    :try_start_2
    sget-object v2, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    if-eqz v1, :cond_2

    .line 322
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_1

    .line 321
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_1

    .line 322
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 321
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 318
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 29
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v1, "Find a local storage location by the URL of the picture is %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v0

    .line 35
    :try_start_0
    const-string v1, "image"

    const/4 v2, 0x0

    const-string v3, "url = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/wall/core/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 40
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 41
    const-string v0, "local_path"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 43
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    sget-object v2, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successful find storage path of the picture is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_2
    :goto_1
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v1, "the image has not download, so return null"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    move-object v0, v6

    .line 56
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 49
    :goto_2
    :try_start_2
    sget-object v2, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 52
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 51
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 48
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected a(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 170
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v1, "The picture resource consumption too much storage space, delete %s pictures not used recently"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v0

    .line 176
    :try_start_0
    const-string v1, "image"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "local_path"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "lastUseTime ASC , size DESC"

    invoke-virtual/range {v0 .. v5}, Lcn/domob/wall/core/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 181
    if-eqz v1, :cond_2

    .line 182
    :try_start_1
    const-string v0, "local_path"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 184
    const-string v0, "url"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 187
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v7

    .line 188
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-ge v4, p1, :cond_1

    .line 190
    sget-object v4, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current position of cursor is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 192
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 194
    invoke-virtual {p0, v4}, Lcn/domob/wall/core/t;->e(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, v5}, Lcn/domob/wall/core/t;->b(Ljava/lang/String;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    .line 188
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    :goto_1
    :try_start_2
    sget-object v2, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    .line 207
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v2, "Failed to delete resources."

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_0
    :goto_2
    return-void

    .line 198
    :cond_1
    :try_start_3
    sget-object v2, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v3, "Successfully removed %s picture resources"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v0

    const-string v2, "image"

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/h;->a(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 209
    :goto_3
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 203
    :cond_2
    :try_start_4
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v2, "The database is empty"

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 209
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 210
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 209
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_4

    .line 205
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-static {p1}, Lcn/domob/wall/core/v;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    :try_start_0
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v0

    .line 345
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 346
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v2, "local_path"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v2, "lastUseTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 350
    const-string v2, "size"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Lcn/domob/wall/core/h;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 352
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v1, "Picture taken from the server stored in the database successfully"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    sget-object v1, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    .line 355
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v1, "Failed to insert image info."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v1, "Cache management for image resources"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcn/domob/wall/core/t;->c()V

    .line 69
    invoke-virtual {p0}, Lcn/domob/wall/core/t;->d()V

    .line 70
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 142
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v1, " deleted url = ? records from the database url = %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v0

    const-string v1, "image"

    const-string v2, "url = ?"

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/wall/core/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method protected c()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 76
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v1, "start to delete expired images"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v0

    .line 80
    :try_start_0
    const-string v1, "image"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "local_path"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "url"

    aput-object v4, v2, v3

    const-string v3, "lastUseTime < ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x240c8400

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/wall/core/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    :try_start_1
    const-string v0, "url"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 90
    const-string v2, "local_path"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {p0, v4}, Lcn/domob/wall/core/t;->b(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v3}, Lcn/domob/wall/core/t;->e(Ljava/lang/String;)V

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    :goto_1
    :try_start_2
    sget-object v2, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    .line 107
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v2, "Failed to delete resources."

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_0
    :goto_2
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/h;->a(Ljava/lang/String;)I

    .line 115
    return-void

    .line 99
    :cond_1
    :try_start_3
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v2, "finish to remove %s pictures"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 109
    :goto_3
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 102
    :cond_2
    :try_start_4
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v2, "there is not expired pictures need to be deleted"

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 109
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 109
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_4

    .line 105
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method c(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 155
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v1, "Update the database url = ? pictures resources last used timestamp url = %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 158
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 159
    const-string v1, "lastUseTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v1

    const-string v2, "image"

    const-string v3, "url = ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Lcn/domob/wall/core/h;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method d()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x0

    .line 121
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v2, "Adjust the pictures size of the space"

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    move v0, v1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcn/domob/wall/core/t;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcn/domob/wall/core/t;->a(I)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 127
    if-le v0, v4, :cond_0

    .line 128
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v2, "More than %s times the cycle frequency and to delete pictures"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->d(Ljava/lang/String;)V

    .line 134
    :cond_1
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 221
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v1, "Deletes the specified url = ? pictures saved in the database and the file saved locally url = %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v0

    .line 227
    :try_start_0
    const-string v1, "image"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "local_path"

    aput-object v4, v2, v3

    const-string v3, "url = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/wall/core/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 231
    if-eqz v1, :cond_1

    .line 232
    :try_start_1
    const-string v0, "local_path"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 236
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {p0, v2}, Lcn/domob/wall/core/t;->e(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, p1}, Lcn/domob/wall/core/t;->b(Ljava/lang/String;)V

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    :goto_1
    :try_start_2
    sget-object v2, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    .line 248
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v2, "Failed to delete resources."

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 250
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_0
    :goto_2
    return-void

    .line 241
    :cond_1
    :try_start_3
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v2, "Url = ? record is not found in the database Url = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 250
    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 250
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 251
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 250
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 246
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method protected e(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 263
    :try_start_0
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to delete file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->a(Ljava/lang/String;)V

    .line 264
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success to delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->d(Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    sget-object v0, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    sget-object v1, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error happened when deleting file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    .line 276
    sget-object v1, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method e()Z
    .locals 8

    .prologue
    const/16 v7, 0x1f4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    invoke-direct {p0}, Lcn/domob/wall/core/t;->f()I

    move-result v3

    .line 287
    const v0, 0x7d000

    if-le v3, v0, :cond_0

    move v0, v1

    .line 288
    :goto_0
    if-eqz v0, :cond_1

    .line 289
    sget-object v4, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v5, "Check local storage of image resources the space occupied by the sum of %s KB exceeds the maximum limit value %s KB"

    new-array v6, v6, [Ljava/lang/Object;

    div-int/lit16 v3, v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/domob/wall/core/p;->d(Ljava/lang/String;)V

    .line 299
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 287
    goto :goto_0

    .line 294
    :cond_1
    sget-object v4, Lcn/domob/wall/core/t;->b:Lcn/domob/wall/core/p;

    const-string v5, "Check local storage of image resources the space occupied by the sum of %s KB  does not exceeds the maximum limit value %s KB"

    new-array v6, v6, [Ljava/lang/Object;

    div-int/lit16 v3, v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/domob/wall/core/p;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
