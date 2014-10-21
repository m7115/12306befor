.class public final Lcom/tl/uic/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# static fields
.field private static final PERCENT:I = 0x64

.field private static volatile _myInstance:Lcom/tl/uic/util/ImageUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/tl/uic/util/ImageUtil;
    .locals 3

    .prologue
    .line 37
    sget-object v1, Lcom/tl/uic/util/ImageUtil;->_myInstance:Lcom/tl/uic/util/ImageUtil;

    if-nez v1, :cond_0

    .line 38
    const-class v2, Lcom/tl/uic/util/ImageUtil;

    monitor-enter v2

    .line 39
    :try_start_0
    new-instance v0, Lcom/tl/uic/util/ImageUtil;

    invoke-direct {v0}, Lcom/tl/uic/util/ImageUtil;-><init>()V

    .line 40
    .local v0, imageUtil:Lcom/tl/uic/util/ImageUtil;
    sput-object v0, Lcom/tl/uic/util/ImageUtil;->_myInstance:Lcom/tl/uic/util/ImageUtil;

    .line 38
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    sget-object v1, Lcom/tl/uic/util/ImageUtil;->_myInstance:Lcom/tl/uic/util/ImageUtil;

    return-object v1

    .line 38
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getMainView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "view"

    .prologue
    .line 171
    move-object v1, p0

    .line 175
    .local v1, lastView:Landroid/view/View;
    if-nez v1, :cond_1

    move-object v2, v1

    .line 187
    .end local v1           #lastView:Landroid/view/View;
    .local v2, lastView:Landroid/view/View;
    :goto_0
    return-object v2

    .line 180
    .end local v2           #lastView:Landroid/view/View;
    .restart local v1       #lastView:Landroid/view/View;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 178
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DecorView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 178
    if-eqz v3, :cond_0

    :cond_2
    :goto_1
    move-object v2, v1

    .line 187
    .end local v1           #lastView:Landroid/view/View;
    .restart local v2       #lastView:Landroid/view/View;
    goto :goto_0

    .line 182
    .end local v2           #lastView:Landroid/view/View;
    .restart local v1       #lastView:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    move-object v1, p0

    .line 184
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static saveImageAsPNG(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 12
    .parameter "bmp"
    .parameter "context"
    .parameter "directory"
    .parameter "filename"

    .prologue
    const/4 v10, 0x0

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, dir:Ljava/io/File;
    const/4 v2, 0x0

    .line 128
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 129
    .local v4, fileOutputStream:Ljava/io/FileOutputStream;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 132
    .local v6, hasBeenSaved:Ljava/lang/Boolean;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 133
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 136
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v5, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v7, v10, v11

    .line 138
    .local v7, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v9, v10, v11

    .line 141
    .local v9, width:I
    const/4 v10, 0x0

    .line 140
    invoke-static {p0, v9, v7, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 142
    .local v8, picture:Landroid/graphics/Bitmap;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v8, v10, v11, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 144
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Saved image to cache:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 150
    if-eqz v5, :cond_0

    .line 151
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 154
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_6

    .line 155
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v4, v5

    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 161
    .end local v3           #file:Ljava/io/File;
    .end local v7           #height:I
    .end local v8           #picture:Landroid/graphics/Bitmap;
    .end local v9           #width:I
    .restart local v2       #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-object v6

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v10, "Trying to save file to cache:"

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    if-nez v2, :cond_3

    const-string v10, ""

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 146
    invoke-static {v1, v10}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    if-eqz v4, :cond_2

    .line 151
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 154
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_1

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 157
    :catch_1
    move-exception v1

    .line 158
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v10

    goto :goto_2

    .line 148
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 150
    :goto_3
    if-eqz v4, :cond_4

    .line 151
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 154
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_5

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 160
    :cond_5
    :goto_4
    throw v10

    .line 157
    :catch_2
    move-exception v1

    .line 158
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 157
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v7       #height:I
    .restart local v8       #picture:Landroid/graphics/Bitmap;
    .restart local v9       #width:I
    :catch_3
    move-exception v1

    .line 158
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    move-object v4, v5

    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_0

    .line 148
    .end local v2           #file:Ljava/io/File;
    .end local v7           #height:I
    .end local v8           #picture:Landroid/graphics/Bitmap;
    .end local v9           #width:I
    .restart local v3       #file:Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3

    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOutputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3

    .line 145
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1

    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1
.end method

.method public static snapShot(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "view"
    .parameter "directory"
    .parameter "imageFileName"

    .prologue
    .line 56
    invoke-static {}, Lcom/tl/uic/Tealeaf;->isEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, p1, v1}, Lcom/tl/uic/util/ImageUtil;->snapShotHelper(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 56
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static snapShotHelper(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/Boolean;
    .locals 10
    .parameter "context"
    .parameter "view"
    .parameter "directory"
    .parameter "imageFileName"

    .prologue
    const/4 v7, 0x0

    .line 73
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 76
    .local v2, hasBeenSaved:Ljava/lang/Boolean;
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 78
    .local v0, currentDate:Ljava/util/Date;
    invoke-static {p1}, Lcom/tl/uic/util/ImageUtil;->getMainView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 79
    .local v4, mainView:Landroid/view/View;
    if-nez v4, :cond_0

    move-object v3, v2

    .line 112
    .end local v0           #currentDate:Ljava/util/Date;
    .end local v2           #hasBeenSaved:Ljava/lang/Boolean;
    .end local v4           #mainView:Landroid/view/View;
    .local v3, hasBeenSaved:Ljava/lang/Boolean;
    :goto_0
    return-object v3

    .line 83
    .end local v3           #hasBeenSaved:Ljava/lang/Boolean;
    .restart local v0       #currentDate:Ljava/util/Date;
    .restart local v2       #hasBeenSaved:Ljava/lang/Boolean;
    .restart local v4       #mainView:Landroid/view/View;
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 84
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 83
    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 85
    .local v5, result:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 86
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 88
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Screenshot Taken for file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tl/uic/Tealeaf;->logCustomEvent(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 93
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 92
    invoke-static {v5, p0, p2, v7}, Lcom/tl/uic/util/ImageUtil;->saveImageAsPNG(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    new-instance v6, Lcom/tl/uic/model/TLFCacheFile;

    invoke-direct {v6}, Lcom/tl/uic/model/TLFCacheFile;-><init>()V

    .line 97
    .local v6, tlfCacheFile:Lcom/tl/uic/model/TLFCacheFile;
    invoke-virtual {v6, p2}, Lcom/tl/uic/model/TLFCacheFile;->setDirectory(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tl/uic/model/TLFCacheFile;->setFileName(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/tl/uic/TLFCache;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tl/uic/model/TLFCacheFile;->setSessionId(Ljava/lang/String;)V

    .line 100
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tl/uic/model/TLFCacheFile;->isImage(Ljava/lang/Boolean;)V

    .line 103
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lcom/tl/uic/TLFCache;->saveToCache(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "imageFileName_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-static {v6, p2, v7}, Lcom/tl/uic/util/FileUtil;->saveObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 107
    .end local v6           #tlfCacheFile:Lcom/tl/uic/model/TLFCacheFile;
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #currentDate:Ljava/util/Date;
    .end local v4           #mainView:Landroid/view/View;
    .end local v5           #result:Landroid/graphics/Bitmap;
    :goto_1
    move-object v3, v2

    .line 112
    .end local v2           #hasBeenSaved:Ljava/lang/Boolean;
    .restart local v3       #hasBeenSaved:Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 108
    .end local v3           #hasBeenSaved:Ljava/lang/Boolean;
    .restart local v2       #hasBeenSaved:Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
