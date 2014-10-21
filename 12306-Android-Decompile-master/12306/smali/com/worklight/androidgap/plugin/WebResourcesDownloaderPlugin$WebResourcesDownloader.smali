.class public Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;
.super Landroid/os/AsyncTask;
.source "WebResourcesDownloaderPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebResourcesDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE_APPLICATION_ZIP:Ljava/lang/String; = "application/zip"

.field private static final DOWNLOADED_ZIP_FILE_NAME:Ljava/lang/String; = "assets.zip"

.field private static final HONEYCOMB:I = 0xb


# instance fields
.field private cookies:Ljava/lang/String;

.field private downloadingMessage:Ljava/lang/String;

.field private instanceAuthId:Ljava/lang/String;

.field private isDirectUpdateSuccess:Z

.field private progressDialog:Landroid/app/ProgressDialog;

.field private shouldUpdateSilently:Z

.field private skinName:Ljava/lang/String;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin;

.field private url:Ljava/lang/String;

.field private wlConfig:Lcom/worklight/common/WLConfig;

.field private wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;


# direct methods
.method public constructor <init>(Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin;Lcom/worklight/androidgap/WLDroidGap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "wlDroidGap"
    .parameter "cookies"
    .parameter "instanceAuthIdHeader"
    .parameter "shouldUpdateSilently"
    .parameter "downloadingMessageKey"
    .parameter "url"
    .parameter "skinName"

    .prologue
    const/4 v1, 0x0

    .line 123
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->this$0:Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin;

    .line 124
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->isDirectUpdateSuccess:Z

    .line 115
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->instanceAuthId:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->url:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->shouldUpdateSilently:Z

    .line 125
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    .line 126
    new-instance v0, Lcom/worklight/common/WLConfig;

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-direct {v0, v1}, Lcom/worklight/common/WLConfig;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    .line 127
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->cookies:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->instanceAuthId:Ljava/lang/String;

    .line 129
    invoke-static {p6, p2}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->downloadingMessage:Ljava/lang/String;

    .line 130
    iput-object p8, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->skinName:Ljava/lang/String;

    .line 131
    iput-object p7, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->url:Ljava/lang/String;

    .line 132
    iput-boolean p5, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->shouldUpdateSilently:Z

    .line 133
    return-void
.end method

.method private createProgressDialog()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    .line 179
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->downloadingMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 181
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 183
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setProgressNumberFormat"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 186
    .local v1, setProgressNumberFormatMethod:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "%1d/%2d kb"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v1           #setProgressNumberFormatMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Progress bar will be displayed without units, because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private downloadZipFile()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v5, 0x0

    .line 232
    .local v5, input:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 235
    .local v10, output:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->sendRequest()Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 236
    .local v12, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 237
    .local v13, responseEntity:Lorg/apache/http/HttpEntity;
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    .line 238
    .local v7, lenghtOfFile:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x400

    div-long v17, v7, v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 239
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 240
    .end local v5           #input:Ljava/io/InputStream;
    .local v6, input:Ljava/io/InputStream;
    :try_start_1
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, contentType:Ljava/lang/String;
    const-string v16, "application/zip"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 243
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "The following message has been received from the server instead of the expected application update zip file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Lcom/worklight/common/WLUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, msg:Ljava/lang/String;
    invoke-static {v9}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 246
    new-instance v16, Ljava/io/IOException;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .end local v2           #contentType:Ljava/lang/String;
    .end local v9           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v16

    move-object v5, v6

    .end local v6           #input:Ljava/io/InputStream;
    .end local v7           #lenghtOfFile:J
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #responseEntity:Lorg/apache/http/HttpEntity;
    .restart local v5       #input:Ljava/io/InputStream;
    :goto_0
    if-eqz v10, :cond_0

    .line 261
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 263
    :cond_0
    if-eqz v5, :cond_1

    .line 264
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 265
    const-string v17, "Finish copy files to local storage from updated zip file..."

    invoke-static/range {v17 .. v17}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    :cond_1
    throw v16

    .line 248
    .end local v5           #input:Ljava/io/InputStream;
    .restart local v2       #contentType:Ljava/lang/String;
    .restart local v6       #input:Ljava/io/InputStream;
    .restart local v7       #lenghtOfFile:J
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #responseEntity:Lorg/apache/http/HttpEntity;
    :cond_2
    :try_start_2
    const-string v16, "Start copy files to local storage from updated zip file..."

    invoke-static/range {v16 .. v16}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 249
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageRoot()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "assets.zip"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    .end local v10           #output:Ljava/io/FileOutputStream;
    .local v11, output:Ljava/io/FileOutputStream;
    const/16 v16, 0x2000

    :try_start_3
    move/from16 v0, v16

    new-array v4, v0, [B

    .line 251
    .local v4, data:[B
    const-wide/16 v14, 0x0

    .line 253
    .local v14, total:J
    :goto_1
    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, count:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v3, v0, :cond_3

    .line 254
    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 256
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-wide/16 v18, 0x400

    div-long v18, v14, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->publishProgress([Ljava/lang/Object;)V

    .line 257
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v4, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 260
    .end local v3           #count:I
    .end local v4           #data:[B
    .end local v14           #total:J
    :catchall_1
    move-exception v16

    move-object v10, v11

    .end local v11           #output:Ljava/io/FileOutputStream;
    .restart local v10       #output:Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6           #input:Ljava/io/InputStream;
    .restart local v5       #input:Ljava/io/InputStream;
    goto/16 :goto_0

    .end local v5           #input:Ljava/io/InputStream;
    .end local v10           #output:Ljava/io/FileOutputStream;
    .restart local v3       #count:I
    .restart local v4       #data:[B
    .restart local v6       #input:Ljava/io/InputStream;
    .restart local v11       #output:Ljava/io/FileOutputStream;
    .restart local v14       #total:J
    :cond_3
    if-eqz v11, :cond_4

    .line 261
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 263
    :cond_4
    if-eqz v6, :cond_5

    .line 264
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 265
    const-string v16, "Finish copy files to local storage from updated zip file..."

    invoke-static/range {v16 .. v16}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 268
    :cond_5
    return-void

    .line 260
    .end local v2           #contentType:Ljava/lang/String;
    .end local v3           #count:I
    .end local v4           #data:[B
    .end local v6           #input:Ljava/io/InputStream;
    .end local v7           #lenghtOfFile:J
    .end local v11           #output:Ljava/io/FileOutputStream;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #responseEntity:Lorg/apache/http/HttpEntity;
    .end local v14           #total:J
    .restart local v5       #input:Ljava/io/InputStream;
    .restart local v10       #output:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v16

    goto/16 :goto_0
.end method

.method private extractZipFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "zipFilePath"
    .parameter "destFolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->skinName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/worklight/common/WLUtils;->deleteDirectory(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->skinName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 292
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 293
    .local v6, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 295
    .local v2, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 296
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 298
    .local v3, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 299
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v4, newDirecroty:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 284
    .end local v2           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #newDirecroty:Ljava/io/File;
    .end local v6           #zipFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v6       #zipFile:Ljava/util/zip/ZipFile;
    :cond_0
    invoke-virtual {v6, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 305
    .local v5, zipEntryStream:Ljava/io/InputStream;
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, destFileStream:Ljava/io/FileOutputStream;
    invoke-static {v5, v0}, Lcom/worklight/common/WLUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 307
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 308
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 310
    .end local v0           #destFileStream:Ljava/io/FileOutputStream;
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #zipEntryStream:Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V

    .line 311
    return-void
.end method

.method private handleUpdateException(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "messageKey"
    .parameter "message"
    .parameter "logLevel"

    .prologue
    .line 225
    invoke-static {p2, p3}, Lcom/worklight/common/WLUtils;->log(Ljava/lang/String;I)V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->isDirectUpdateSuccess:Z

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:WL.App._showDirectUpdateErrorMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WL.ClientMessages."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private processZipFile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v2}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageRoot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "assets.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, zipFilePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v1}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageWebRoot()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->extractZipFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 277
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v1}, Lcom/worklight/androidgap/WLDroidGap;->setClearCacheNextLoad()V

    .line 278
    return-void
.end method

.method private runDirectUpdate()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x6

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->downloadZipFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :try_start_1
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->processZipFile()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v4}, Lcom/worklight/common/WLConfig;->getTestWebResourcesChecksumFlag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 213
    .local v3, shouldSaveWebResourcesChecksum:Z
    if-eqz v3, :cond_0

    .line 214
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v4}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageWebRoot()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, path:Ljava/lang/String;
    invoke-static {v2}, Lcom/worklight/common/WLUtils;->computeChecksumOnResources(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, currentChecksum:Ljava/lang/String;
    const-string v4, "SHA-1"

    invoke-static {v0, v4}, Lcom/worklight/utils/SecurityUtils;->hashData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v4, "save the new web resources checksum on device"

    invoke-static {v4}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 218
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    const-string v5, "wlResourcesChecksum"

    invoke-static {v4, v5, v0}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v0           #currentChecksum:Ljava/lang/String;
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    const-string v4, "OK"

    .end local v3           #shouldSaveWebResourcesChecksum:Z
    :goto_0
    return-object v4

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Ljava/io/IOException;
    const-string v4, "directUpdateErrorMessageFailedDownloadingZipFile"

    const-string v5, "Failed downloading application update file."

    invoke-direct {p0, v4, v5, v6}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->handleUpdateException(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 207
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 208
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "directUpdateErrorMessageFailedProcessingZipFile"

    const-string v5, "Failed processing application update file."

    invoke-direct {p0, v4, v5, v6}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->handleUpdateException(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private sendRequest()Lorg/apache/http/HttpResponse;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 317
    .local v6, httpclient:Lorg/apache/http/client/HttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    iget-object v11, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->url:Ljava/lang/String;

    invoke-direct {v8, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 320
    .local v8, request:Lorg/apache/http/client/methods/HttpGet;
    iget-object v11, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v11}, Lcom/worklight/common/WLConfig;->getContext()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, context:Ljava/lang/String;
    iget-object v11, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v11}, Lcom/worklight/common/WLConfig;->getAppURL()Ljava/net/URL;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 323
    .local v10, serverUrl:Ljava/lang/String;
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->cookies:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->cookies:Ljava/lang/String;

    .line 324
    iget-object v11, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->cookies:Ljava/lang/String;

    iget-object v12, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v12}, Lcom/worklight/common/WLConfig;->getAppURL()Ljava/net/URL;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/worklight/wlclient/WLCookieManager;->setCookies(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/worklight/wlclient/WLCookieManager;->getCookies()Ljava/util/Set;

    move-result-object v3

    .line 327
    .local v3, cookies:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v5, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v5}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 328
    .local v5, httpContext:Lorg/apache/http/protocol/HttpContext;
    if-eqz v3, :cond_2

    .line 329
    new-instance v2, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 330
    .local v2, cookieStore:Lorg/apache/http/client/CookieStore;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 331
    .local v1, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v2, v1}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto :goto_1

    .end local v1           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v2           #cookieStore:Lorg/apache/http/client/CookieStore;
    .end local v3           #cookies:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/http/cookie/Cookie;>;"
    .end local v5           #httpContext:Lorg/apache/http/protocol/HttpContext;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #serverUrl:Ljava/lang/String;
    :cond_0
    move-object v10, v4

    .line 322
    goto :goto_0

    .line 333
    .restart local v2       #cookieStore:Lorg/apache/http/client/CookieStore;
    .restart local v3       #cookies:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v5       #httpContext:Lorg/apache/http/protocol/HttpContext;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #serverUrl:Ljava/lang/String;
    :cond_1
    const-string v11, "http.cookie-store"

    invoke-interface {v5, v11, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    .end local v2           #cookieStore:Lorg/apache/http/client/CookieStore;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v11, "x-wl-app-version"

    iget-object v12, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v12}, Lcom/worklight/common/WLConfig;->getApplicationVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v11, "WL-Instance-Id"

    iget-object v12, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->instanceAuthId:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-interface {v6, v8, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 341
    .local v9, response:Lorg/apache/http/HttpResponse;
    return-object v9
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->runDirectUpdate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 158
    :try_start_0
    iget-boolean v1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->isDirectUpdateSuccess:Z

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 160
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 161
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    const-string v2, "exitOnSkinLoader"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v2}, Lcom/worklight/androidgap/WLDroidGap;->getWebMainFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/WLDroidGap;->loadUrl(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    invoke-static {v4}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin;->access$002(Z)Z

    .line 175
    :goto_1
    return-void

    .line 167
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 168
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v1, p1}, Lcom/worklight/androidgap/WLDroidGap;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    invoke-static {v4}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin;->access$002(Z)Z

    goto :goto_1

    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {v4}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin;->access$002(Z)Z

    throw v1
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin;->access$002(Z)Z

    .line 138
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->createProgressDialog()V

    .line 140
    iget-boolean v0, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->shouldUpdateSilently:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 143
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 153
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/plugin/WebResourcesDownloaderPlugin$WebResourcesDownloader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
