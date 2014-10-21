.class public Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;
.super Ljava/lang/Object;
.source "WLDroidGap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/WLDroidGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrepackagedAssetsManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$Checksum;
    }
.end annotation


# static fields
.field private static final APP_INSTALL_TIME_KEY:Ljava/lang/String; = "appInstallTime"


# instance fields
.field private appInstallTime:J

.field final synthetic this$0:Lcom/worklight/androidgap/WLDroidGap;


# direct methods
.method public constructor <init>(Lcom/worklight/androidgap/WLDroidGap;)V
    .locals 2
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->appInstallTime:J

    .line 601
    return-void
.end method

.method static synthetic access$400(Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->copyPrepackagedAssetsToLocalCopyIfNeeded()V

    return-void
.end method

.method private copyAssetsToLocalCopy(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "assetManager"
    .parameter "relativePath"
    .parameter "targetRootPath"

    .prologue
    .line 555
    const/4 v3, 0x0

    .line 556
    .local v3, in:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 557
    .local v4, out:Ljava/io/OutputStream;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    .local v6, targetFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 569
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 570
    .end local v4           #out:Ljava/io/OutputStream;
    .local v5, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v3, v5}, Lcom/worklight/common/WLUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object v4, v5

    .line 585
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 586
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 592
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 593
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 599
    :cond_2
    :goto_1
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 576
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, files:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v7, v1

    if-ge v2, v7, :cond_0

    .line 578
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7, p3}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->copyAssetsToLocalCopy(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 588
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #files:[Ljava/lang/String;
    .end local v2           #i:I
    :catch_1
    move-exception v0

    .line 589
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream from file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", because "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 595
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 596
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close output stream from file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", because "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 581
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PrepackagedAssetsManager Failure. Failed copying prepackaged assets to local storage. The exception occurred when copying the following file/directory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 584
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 585
    :goto_5
    if-eqz v3, :cond_3

    .line 586
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 592
    :cond_3
    :goto_6
    if-eqz v4, :cond_4

    .line 593
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 597
    :cond_4
    :goto_7
    throw v7

    .line 588
    :catch_4
    move-exception v0

    .line 589
    .local v0, e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream from file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", because "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 595
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 596
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close output stream from file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", because "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 584
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    goto :goto_5

    .line 581
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    goto :goto_4

    .line 574
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    goto/16 :goto_2
.end method

.method private copyOrUnpackAssetsToLocalCopy()Z
    .locals 25

    .prologue
    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/worklight/androidgap/WLDroidGap;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 449
    .local v3, assetManager:Landroid/content/res/AssetManager;
    :try_start_0
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageWebRoot()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lcom/worklight/common/WLUtils;->deleteDirectory(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :goto_0
    invoke-static {}, Lcom/worklight/androidgap/WLDroidGap;->access$200()Lcom/worklight/common/WLConfig;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/worklight/common/WLConfig;->getWebResourcesUnpackedSize()Ljava/lang/String;

    move-result-object v20

    .line 459
    .local v20, webResourcesSize:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    const-wide/32 v23, 0x100000

    add-long v18, v21, v23

    .line 462
    .local v18, spaceNeeded:J
    invoke-static {}, Lcom/worklight/common/WLUtils;->getFreeSpaceOnDevice()J

    move-result-wide v8

    .line 463
    .local v8, freeSpaceOnDevice:J
    cmp-long v21, v18, v8

    if-lez v21, :cond_0

    .line 464
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8, v9}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->handleNotEnoughSpace(Ljava/lang/Long;J)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/worklight/androidgap/WLDroidGap;->fatalErrorOccurred:Z
    invoke-static/range {v21 .. v22}, Lcom/worklight/androidgap/WLDroidGap;->access$302(Lcom/worklight/androidgap/WLDroidGap;Z)Z

    .line 466
    const/16 v21, 0x0

    .line 526
    :goto_1
    return v21

    .line 450
    .end local v8           #freeSpaceOnDevice:J
    .end local v18           #spaceNeeded:J
    .end local v20           #webResourcesSize:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 451
    .local v6, e1:Ljava/lang/Exception;
    const-string v21, "The application will exit, failed deleting directory %s. This might happen if the application was installed, then the shareduserID  in AndroidManifest.xml was changed, and the application was redeployed."

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageWebRoot()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 452
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 469
    .end local v6           #e1:Ljava/lang/Exception;
    .restart local v8       #freeSpaceOnDevice:J
    .restart local v18       #spaceNeeded:J
    .restart local v20       #webResourcesSize:Ljava/lang/String;
    :cond_0
    const-string v21, "Started copying files to local storage..."

    invoke-static/range {v21 .. v21}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 473
    const/4 v13, 0x0

    .line 474
    .local v13, resourcesZip:Ljava/io/InputStream;
    const-wide/16 v15, 0x0

    .line 475
    .local v15, resourcesZipFileSize:J
    const/16 v17, 0x0

    .line 481
    .local v17, shouldDecrypt:Z
    :try_start_1
    new-instance v14, Lcom/worklight/utils/MultifileAssetStream;

    const-string v21, "www/resources.zip"

    move-object/from16 v0, v21

    invoke-direct {v14, v0, v3}, Lcom/worklight/utils/MultifileAssetStream;-><init>(Ljava/lang/String;Landroid/content/res/AssetManager;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 482
    .end local v13           #resourcesZip:Ljava/io/InputStream;
    .local v14, resourcesZip:Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v21

    move/from16 v0, v21

    int-to-long v15, v0

    .line 483
    const/16 v17, 0x1

    .line 489
    :goto_2
    const-wide/16 v21, 0x0

    cmp-long v21, v15, v21

    if-gtz v21, :cond_3

    .line 492
    :try_start_3
    new-instance v13, Lcom/worklight/utils/MultifileAssetStream;

    const-string v21, "www/resources.zip.unencrypted"

    move-object/from16 v0, v21

    invoke-direct {v13, v0, v3}, Lcom/worklight/utils/MultifileAssetStream;-><init>(Ljava/lang/String;Landroid/content/res/AssetManager;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 493
    .end local v14           #resourcesZip:Ljava/io/InputStream;
    .restart local v13       #resourcesZip:Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->available()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result v21

    move/from16 v0, v21

    int-to-long v15, v0

    .line 494
    const/16 v17, 0x0

    .line 500
    :goto_3
    if-eqz v13, :cond_2

    .line 501
    const-string v21, "Found resources zip stream. Starting decryption and unzipping process."

    invoke-static/range {v21 .. v21}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 503
    const-string v12, "JfnnlDI7RTiF9RgfG2JNCw=="

    .line 504
    .local v12, keyInBase64:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/worklight/utils/Base64;->decode([B)[B

    move-result-object v11

    .line 508
    .local v11, key:[B
    if-eqz v17, :cond_1

    :try_start_5
    invoke-static {v13, v11}, Lcom/worklight/utils/SecurityUtils;->decryptData(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v4

    .line 509
    .local v4, decryptedZipInputStream:Ljava/io/InputStream;
    :goto_4
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageWebRoot()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/worklight/common/WLUtils;->unpack(Ljava/io/InputStream;Ljava/io/File;)V

    .line 510
    const-string v21, "Resources.zip unzipped"

    invoke-static/range {v21 .. v21}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 525
    .end local v4           #decryptedZipInputStream:Ljava/io/InputStream;
    .end local v11           #key:[B
    .end local v12           #keyInBase64:Ljava/lang/String;
    :goto_5
    const-string v21, "Finished copying files to local storage..."

    invoke-static/range {v21 .. v21}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 526
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 485
    :catch_1
    move-exception v21

    :goto_6
    move-object v14, v13

    .end local v13           #resourcesZip:Ljava/io/InputStream;
    .restart local v14       #resourcesZip:Ljava/io/InputStream;
    goto :goto_2

    .end local v14           #resourcesZip:Ljava/io/InputStream;
    .restart local v11       #key:[B
    .restart local v12       #keyInBase64:Ljava/lang/String;
    .restart local v13       #resourcesZip:Ljava/io/InputStream;
    :cond_1
    move-object v4, v13

    .line 508
    goto :goto_4

    .line 511
    :catch_2
    move-exception v10

    .line 512
    .local v10, ioe:Ljava/io/IOException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot install or update the application, because failed to extract the application\'s web resources with "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 513
    .local v7, errorMsg:Ljava/lang/String;
    invoke-static {v7}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 514
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 515
    .end local v7           #errorMsg:Ljava/lang/String;
    .end local v10           #ioe:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 516
    .local v5, e:Ljava/lang/Exception;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot install or update the application, because failed to decrypt the application\'s web resources with "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 517
    .restart local v7       #errorMsg:Ljava/lang/String;
    invoke-static {v7}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 518
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 521
    .end local v5           #e:Ljava/lang/Exception;
    .end local v7           #errorMsg:Ljava/lang/String;
    .end local v11           #key:[B
    .end local v12           #keyInBase64:Ljava/lang/String;
    :cond_2
    const-string v21, "www"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageRoot()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v3, v1, v2}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->copyAssetsToLocalCopy(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v21, "wlclient.properties"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageWebRoot()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v3, v1, v2}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->copyAssetsToLocalCopy(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 495
    .end local v13           #resourcesZip:Ljava/io/InputStream;
    .restart local v14       #resourcesZip:Ljava/io/InputStream;
    :catch_4
    move-exception v21

    move-object v13, v14

    .end local v14           #resourcesZip:Ljava/io/InputStream;
    .restart local v13       #resourcesZip:Ljava/io/InputStream;
    goto/16 :goto_3

    :catch_5
    move-exception v21

    goto/16 :goto_3

    .line 485
    .end local v13           #resourcesZip:Ljava/io/InputStream;
    .restart local v14       #resourcesZip:Ljava/io/InputStream;
    :catch_6
    move-exception v21

    move-object v13, v14

    .end local v14           #resourcesZip:Ljava/io/InputStream;
    .restart local v13       #resourcesZip:Ljava/io/InputStream;
    goto :goto_6

    .end local v13           #resourcesZip:Ljava/io/InputStream;
    .restart local v14       #resourcesZip:Ljava/io/InputStream;
    :cond_3
    move-object v13, v14

    .end local v14           #resourcesZip:Ljava/io/InputStream;
    .restart local v13       #resourcesZip:Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method private copyPrepackagedAssetsToLocalCopyIfNeeded()V
    .locals 2

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->isNewPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const-string v1, "New installation/upgrade detected, copying resources and saving new checksum"

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v1}, Lcom/worklight/androidgap/WLDroidGap;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->clearWLPref(Landroid/content/Context;)V

    .line 408
    invoke-direct {p0}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->copyOrUnpackAssetsToLocalCopy()Z

    move-result v0

    .line 409
    .local v0, copySuccess:Z
    if-eqz v0, :cond_1

    .line 410
    invoke-direct {p0}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->setNewInstallTime()V

    .line 416
    .end local v0           #copySuccess:Z
    :cond_0
    iget-object v1, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    #calls: Lcom/worklight/androidgap/WLDroidGap;->testResourcesChecksum()V
    invoke-static {v1}, Lcom/worklight/androidgap/WLDroidGap;->access$100(Lcom/worklight/androidgap/WLDroidGap;)V

    .line 417
    :cond_1
    return-void
.end method

.method private handleNotEnoughSpace(Ljava/lang/Long;J)V
    .locals 8
    .parameter "spaceNeeded"
    .parameter "freeSpaceOnDevice"

    .prologue
    .line 531
    const-wide/high16 v0, 0x4130

    .line 532
    .local v0, bytesToMB:D
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 533
    .local v2, decimalFormat:Ljava/text/DecimalFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application installation failed because there is insufficient storage space available. Free "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4130

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MB and try again"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 535
    iget-object v3, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    new-instance v4, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;-><init>(Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;Ljava/text/DecimalFormat;Ljava/lang/Long;)V

    invoke-virtual {v3, v4}, Lcom/worklight/androidgap/WLDroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 552
    return-void
.end method

.method private isNewPackage()Z
    .locals 11

    .prologue
    .line 420
    const/4 v7, 0x0

    .line 422
    .local v7, result:Z
    :try_start_0
    iget-object v8, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v8}, Lcom/worklight/androidgap/WLDroidGap;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 423
    .local v5, pm:Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v8}, Lcom/worklight/androidgap/WLDroidGap;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 424
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 425
    .local v0, appFile:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->appInstallTime:J

    .line 426
    iget-object v8, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/worklight/androidgap/WLDroidGap;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 427
    .local v6, preferences:Landroid/content/SharedPreferences;
    const-string v8, "appInstallTime"

    const-wide/16 v9, 0x0

    invoke-interface {v6, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 429
    .local v3, lastAppInstallTime:J
    iget-wide v8, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->appInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v8, v8, v3

    if-eqz v8, :cond_0

    .line 430
    const/4 v7, 0x1

    .line 435
    .end local v7           #result:Z
    :cond_0
    return v7

    .line 432
    .end local v0           #appFile:Ljava/lang/String;
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #lastAppInstallTime:J
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #preferences:Landroid/content/SharedPreferences;
    .restart local v7       #result:Z
    :catch_0
    move-exception v2

    .line 433
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "PrepackagedAssetsManager Failure. Can\'t retrieve ApplicationInfo - something fundumental went wrong here."

    invoke-direct {v8, v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private setNewInstallTime()V
    .locals 5

    .prologue
    .line 439
    iget-object v2, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/worklight/androidgap/WLDroidGap;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 440
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 441
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "appInstallTime"

    iget-wide v3, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->appInstallTime:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 442
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 443
    return-void
.end method
