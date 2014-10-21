.class public Lcom/worklight/utils/MultifileAssetStream;
.super Ljava/io/SequenceInputStream;
.source "MultifileAssetStream.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/AssetManager;)V
    .locals 1
    .parameter "base_asset_name"
    .parameter "asset_manager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p1, p2}, Lcom/worklight/utils/MultifileAssetStream;->getAssetFileStreams(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    .line 31
    return-void
.end method

.method private static getAssetFileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "base"
    .parameter "chunk_num"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%03d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAssetFileStreams(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/util/Vector;
    .locals 6
    .parameter "base_asset_name"
    .parameter "asset_manager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/AssetManager;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v2, 0x1

    .line 43
    .local v2, keepSearching:Z
    const/4 v0, 0x1

    .line 44
    .local v0, currentFile:I
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 45
    .local v1, inputStreamsOfSplitFiles:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/InputStream;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 46
    invoke-static {p0, v0}, Lcom/worklight/utils/MultifileAssetStream;->getAssetFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/worklight/utils/MultifileAssetStream;->getFileInputStream(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/io/InputStream;

    move-result-object v3

    .line 47
    .local v3, openAttempt:Ljava/io/InputStream;
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    .line 49
    invoke-static {p0, p1}, Lcom/worklight/utils/MultifileAssetStream;->getFileInputStream(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/io/InputStream;

    move-result-object v3

    .line 52
    :cond_0
    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 61
    .end local v3           #openAttempt:Ljava/io/InputStream;
    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 62
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unable to open any files with that base name"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    :cond_3
    return-object v1
.end method

.method private static getFileInputStream(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/io/InputStream;
    .locals 2
    .parameter "file"
    .parameter "asset_manager"

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 37
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, er:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method
