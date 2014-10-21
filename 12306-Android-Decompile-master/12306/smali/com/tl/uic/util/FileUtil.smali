.class public final Lcom/tl/uic/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field private static volatile _myInstance:Lcom/tl/uic/util/FileUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .parameter "directory"
    .parameter "filename"

    .prologue
    const/4 v5, 0x0

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, dir:Ljava/io/File;
    const/4 v2, 0x0

    .line 188
    .local v2, file:Ljava/io/File;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 191
    .local v4, hasBeenDeleted:Ljava/lang/Boolean;
    :try_start_0
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 192
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    if-nez v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 196
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 198
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Has been deleted:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 199
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " File from cache:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 198
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    move-object v2, v3

    .line 204
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :goto_1
    return-object v4

    .line 199
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :cond_2
    const-string v5, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 200
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 202
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "Trying to delete file from cache:"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_3

    const-string v5, ""

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-static {v1, v5}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_1

    .line 202
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 200
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_2
.end method

.method public static getInstance()Lcom/tl/uic/util/FileUtil;
    .locals 3

    .prologue
    .line 36
    sget-object v1, Lcom/tl/uic/util/FileUtil;->_myInstance:Lcom/tl/uic/util/FileUtil;

    if-nez v1, :cond_0

    .line 37
    const-class v2, Lcom/tl/uic/util/FileUtil;

    monitor-enter v2

    .line 38
    :try_start_0
    new-instance v0, Lcom/tl/uic/util/FileUtil;

    invoke-direct {v0}, Lcom/tl/uic/util/FileUtil;-><init>()V

    .line 39
    .local v0, fileUtil:Lcom/tl/uic/util/FileUtil;
    sput-object v0, Lcom/tl/uic/util/FileUtil;->_myInstance:Lcom/tl/uic/util/FileUtil;

    .line 37
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    sget-object v1, Lcom/tl/uic/util/FileUtil;->_myInstance:Lcom/tl/uic/util/FileUtil;

    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getObject(Ljava/io/File;)Ljava/lang/Object;
    .locals 8
    .parameter "file"

    .prologue
    .line 142
    if-nez p0, :cond_1

    .line 143
    const/4 v3, 0x0

    .line 172
    :cond_0
    :goto_0
    return-object v3

    .line 146
    :cond_1
    const/4 v3, 0x0

    .line 147
    .local v3, object:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 148
    .local v1, fileInputStream:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 151
    .local v4, objectInputStream:Ljava/io/ObjectInputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 152
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .local v2, fileInputStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 154
    .end local v4           #objectInputStream:Ljava/io/ObjectInputStream;
    .local v5, objectInputStream:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v3

    move-object v4, v5

    .end local v5           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v4       #objectInputStream:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 160
    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .end local v3           #object:Ljava/lang/Object;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    :cond_2
    if-eqz v1, :cond_3

    .line 161
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 164
    :cond_3
    if-eqz v4, :cond_0

    .line 165
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 156
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #object:Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 157
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_1
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Trying to get object from file:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    if-eqz v1, :cond_4

    .line 161
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 164
    :cond_4
    if-eqz v4, :cond_0

    .line 165
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 167
    :catch_2
    move-exception v0

    .line 168
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 158
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 160
    :goto_2
    if-eqz v1, :cond_5

    .line 161
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 164
    :cond_5
    if-eqz v4, :cond_6

    .line 165
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 170
    :cond_6
    :goto_3
    throw v6

    .line 167
    :catch_3
    move-exception v0

    .line 168
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 158
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v2       #fileInputStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .end local v4           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v2       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v5       #objectInputStream:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v4       #objectInputStream:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 156
    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v2       #fileInputStream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #fileInputStream:Ljava/io/FileInputStream;
    .end local v4           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v2       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v5       #objectInputStream:Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5           #objectInputStream:Ljava/io/ObjectInputStream;
    .restart local v4       #objectInputStream:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v1       #fileInputStream:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getObjects(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "directory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tl/uic/model/TLFCacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 105
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v6, objects:Ljava/util/List;,"Ljava/util/List<Lcom/tl/uic/model/TLFCacheFile;>;"
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, p0, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 108
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 110
    .local v4, fileList:[Ljava/io/File;
    new-instance v8, Lcom/tl/uic/util/FileUtil$1;

    invoke-direct {v8}, Lcom/tl/uic/util/FileUtil$1;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 116
    array-length v8, v4

    :goto_0
    if-lt v7, v8, :cond_0

    .line 130
    return-object v6

    .line 116
    :cond_0
    aget-object v3, v4, v7

    .line 117
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 118
    .local v1, dotPosition:I
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, extension:Ljava/lang/String;
    const-string v9, "png"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 121
    invoke-static {v3}, Lcom/tl/uic/util/FileUtil;->getObject(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v5

    .line 122
    .local v5, object:Ljava/lang/Object;
    instance-of v9, v5, Lcom/tl/uic/model/TLFCacheFile;

    if-eqz v9, :cond_1

    .line 123
    check-cast v5, Lcom/tl/uic/model/TLFCacheFile;

    .end local v5           #object:Ljava/lang/Object;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 116
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public static saveObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 12
    .parameter "object"
    .parameter "directory"
    .parameter "filename"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, dir:Ljava/io/File;
    const/4 v2, 0x0

    .line 60
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 61
    .local v4, fileOutputStream:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 62
    .local v7, objectOutputStream:Ljava/io/ObjectOutputStream;
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 65
    .local v6, hasBeenSaved:Ljava/lang/Boolean;
    :try_start_0
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 66
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 68
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v5, fileOutputStream:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 69
    .end local v7           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .local v8, objectOutputStream:Ljava/io/ObjectOutputStream;
    :try_start_3
    invoke-virtual {v8, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 70
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Has been saved:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 71
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, " File to cache:"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 70
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 78
    if-eqz v8, :cond_0

    .line 79
    :try_start_4
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V

    .line 82
    :cond_0
    if-eqz v5, :cond_1

    .line 83
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 86
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_a

    .line 87
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v7, v8

    .end local v8           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v7       #objectOutputStream:Ljava/io/ObjectOutputStream;
    move-object v4, v5

    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 93
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :cond_2
    :goto_1
    return-object v6

    .line 71
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v7           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v8       #objectOutputStream:Ljava/io/ObjectOutputStream;
    :cond_3
    :try_start_5
    const-string v9, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    .line 72
    .end local v3           #file:Ljava/io/File;
    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v8           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v7       #objectOutputStream:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    const/4 v9, 0x0

    :try_start_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 74
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v9, "Trying to save file to cache:"

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_6

    const-string v9, ""

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 75
    invoke-static {p1, p2}, Lcom/tl/uic/util/FileUtil;->deleteFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 78
    if-eqz v7, :cond_4

    .line 79
    :try_start_7
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V

    .line 82
    :cond_4
    if-eqz v4, :cond_5

    .line 83
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 86
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 89
    :catch_1
    move-exception v1

    .line 90
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 74
    :cond_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v9

    goto :goto_3

    .line 76
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 78
    :goto_4
    if-eqz v7, :cond_7

    .line 79
    :try_start_9
    invoke-virtual {v7}, Ljava/io/ObjectOutputStream;->close()V

    .line 82
    :cond_7
    if-eqz v4, :cond_8

    .line 83
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 86
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_9

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 92
    :cond_9
    :goto_5
    throw v9

    .line 89
    :catch_2
    move-exception v1

    .line 90
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 89
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v7           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v8       #objectOutputStream:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v1

    .line 90
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_a
    move-object v7, v8

    .end local v8           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v7       #objectOutputStream:Ljava/io/ObjectOutputStream;
    move-object v4, v5

    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1

    .line 76
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_4

    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOutputStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_4

    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v7           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v8       #objectOutputStream:Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v9

    move-object v7, v8

    .end local v8           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v7       #objectOutputStream:Ljava/io/ObjectOutputStream;
    move-object v4, v5

    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_4

    .line 72
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_2

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
    goto :goto_2

    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v7           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v8       #objectOutputStream:Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v1

    move-object v7, v8

    .end local v8           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .restart local v7       #objectOutputStream:Ljava/io/ObjectOutputStream;
    move-object v4, v5

    .end local v5           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileOutputStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_2
.end method
