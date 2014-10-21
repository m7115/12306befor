.class public Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;
.super Landroid/os/AsyncTask;
.source "SSLWebResourcesDownloaderPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSLWebResourcesDownloader"
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

.field private sslConfig:Lcom/worklight/common/SSLConfig;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;

.field private url:Ljava/lang/String;

.field private wlConfig:Lcom/worklight/common/WLConfig;

.field private wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;


# direct methods
.method public constructor <init>(Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;Lcom/worklight/androidgap/WLDroidGap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 137
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->this$0:Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;

    .line 138
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->isDirectUpdateSuccess:Z

    .line 127
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->instanceAuthId:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->url:Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->shouldUpdateSilently:Z

    .line 139
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    .line 140
    new-instance v0, Lcom/worklight/common/WLConfig;

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-direct {v0, v1}, Lcom/worklight/common/WLConfig;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    .line 141
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->cookies:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->instanceAuthId:Ljava/lang/String;

    .line 143
    invoke-static {p6, p2}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->downloadingMessage:Ljava/lang/String;

    .line 144
    iput-object p8, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->skinName:Ljava/lang/String;

    .line 145
    iput-object p7, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->url:Ljava/lang/String;

    .line 146
    iput-boolean p5, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->shouldUpdateSilently:Z

    .line 147
    new-instance v0, Lcom/worklight/common/SSLConfig;

    invoke-virtual {p2}, Lcom/worklight/androidgap/WLDroidGap;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/worklight/common/SSLConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sslConfig:Lcom/worklight/common/SSLConfig;

    .line 148
    return-void
.end method

.method private createProgressDialog()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    .line 194
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->downloadingMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 196
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 198
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

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

    .line 201
    .local v1, setProgressNumberFormatMethod:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "%1d/%2d kb"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1           #setProgressNumberFormatMethod:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Progress bar will be displayed without units, because "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .line 254
    const/4 v5, 0x0

    .line 255
    .local v5, input:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 258
    .local v10, output:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sendRequest()Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 259
    .local v12, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 260
    .local v13, responseEntity:Lorg/apache/http/HttpEntity;
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    .line 261
    .local v7, lenghtOfFile:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    const-wide/16 v17, 0x400

    div-long v17, v7, v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 262
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 263
    .end local v5           #input:Ljava/io/InputStream;
    .local v6, input:Ljava/io/InputStream;
    :try_start_1
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, contentType:Ljava/lang/String;
    const-string v16, "application/zip"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 266
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "The following message has been received from the server instead of the expected application update zip file: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
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

    .line 266
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, msg:Ljava/lang/String;
    invoke-static {v9}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 269
    new-instance v16, Ljava/io/IOException;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v2           #contentType:Ljava/lang/String;
    .end local v9           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v16

    move-object v5, v6

    .line 283
    .end local v6           #input:Ljava/io/InputStream;
    .end local v7           #lenghtOfFile:J
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #responseEntity:Lorg/apache/http/HttpEntity;
    .restart local v5       #input:Ljava/io/InputStream;
    :goto_0
    if-eqz v10, :cond_0

    .line 284
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 286
    :cond_0
    if-eqz v5, :cond_1

    .line 287
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 288
    const-string v17, "Finish copy files to local storage from updated zip file..."

    invoke-static/range {v17 .. v17}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 290
    :cond_1
    throw v16

    .line 271
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

    .line 272
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageRoot()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 273
    .end local v10           #output:Ljava/io/FileOutputStream;
    .local v11, output:Ljava/io/FileOutputStream;
    const/16 v16, 0x2000

    :try_start_3
    move/from16 v0, v16

    new-array v4, v0, [B

    .line 274
    .local v4, data:[B
    const-wide/16 v14, 0x0

    .line 276
    .local v14, total:J
    :goto_1
    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    .local v3, count:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_5

    .line 283
    if-eqz v11, :cond_3

    .line 284
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 286
    :cond_3
    if-eqz v6, :cond_4

    .line 287
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 288
    const-string v16, "Finish copy files to local storage from updated zip file..."

    invoke-static/range {v16 .. v16}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 291
    :cond_4
    return-void

    .line 277
    :cond_5
    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 279
    const/16 v16, 0x1

    :try_start_4
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

    invoke-virtual {v0, v1}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->publishProgress([Ljava/lang/Object;)V

    .line 280
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v4, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 282
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

    .end local v2           #contentType:Ljava/lang/String;
    .end local v7           #lenghtOfFile:J
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #responseEntity:Lorg/apache/http/HttpEntity;
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
    .line 306
    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->skinName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/worklight/common/WLUtils;->deleteDirectory(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :goto_0
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->skinName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 315
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 316
    .local v6, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 318
    .local v2, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_0

    .line 333
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V

    .line 334
    return-void

    .line 307
    .end local v2           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6           #zipFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 308
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v6       #zipFile:Ljava/util/zip/ZipFile;
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 321
    .local v3, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 322
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 323
    .local v4, newDirecroty:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 327
    .end local v4           #newDirecroty:Ljava/io/File;
    :cond_1
    invoke-virtual {v6, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 328
    .local v5, zipEntryStream:Ljava/io/InputStream;
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 329
    .local v0, destFileStream:Ljava/io/FileOutputStream;
    invoke-static {v5, v0}, Lcom/worklight/common/WLUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 330
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 331
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1
.end method

.method private handleUpdateException(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "messageKey"
    .parameter "message"
    .parameter "logLevel"

    .prologue
    .line 246
    invoke-static {p2, p3}, Lcom/worklight/common/WLUtils;->log(Ljava/lang/String;I)V

    .line 247
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->isDirectUpdateSuccess:Z

    .line 249
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "javascript:WL.App._showDirectUpdateErrorMessage("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "WL.ClientMessages."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/worklight/androidgap/WLDroidGap;->loadUrl(Ljava/lang/String;)V

    .line 250
    const-string v0, "OK"

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v2}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageRoot()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "assets.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, zipFilePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v1}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageWebRoot()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->extractZipFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 300
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v1}, Lcom/worklight/androidgap/WLDroidGap;->setClearCacheNextLoad()V

    .line 301
    return-void
.end method

.method private runDirectUpdate()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 214
    :try_start_0
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->downloadZipFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    invoke-static {v7}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->access$0(Z)V

    .line 227
    :try_start_1
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->processZipFile()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 233
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v4}, Lcom/worklight/common/WLConfig;->getTestWebResourcesChecksumFlag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 234
    .local v3, shouldSaveWebResourcesChecksum:Z
    if-eqz v3, :cond_0

    .line 235
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v4}, Lcom/worklight/androidgap/WLDroidGap;->getLocalStorageWebRoot()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, path:Ljava/lang/String;
    invoke-static {v2}, Lcom/worklight/common/WLUtils;->computeChecksumOnResources(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, currentChecksum:Ljava/lang/String;
    const-string v4, "SHA-1"

    invoke-static {v0, v4}, Lcom/worklight/utils/SecurityUtils;->hashData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v4, "save the new web resources checksum on device"

    invoke-static {v4}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 239
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    const-string v5, "wlResourcesChecksum"

    invoke-static {v4, v5, v0}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v0           #currentChecksum:Ljava/lang/String;
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    const-string v4, "OK"

    .end local v3           #shouldSaveWebResourcesChecksum:Z
    :goto_0
    return-object v4

    .line 216
    :catch_0
    move-exception v1

    .line 218
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-direct {p0, v4, v5, v6}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->handleUpdateException(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 222
    invoke-static {v7}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->access$0(Z)V

    goto :goto_0

    .line 219
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v1

    .line 220
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    const-string v4, "directUpdateErrorMessageFailedDownloadingZipFile"

    const-string v5, "Failed downloading application update file."

    const/4 v6, 0x6

    invoke-direct {p0, v4, v5, v6}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->handleUpdateException(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 222
    invoke-static {v7}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->access$0(Z)V

    goto :goto_0

    .line 221
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 222
    invoke-static {v7}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->access$0(Z)V

    .line 223
    throw v4

    .line 228
    :catch_2
    move-exception v1

    .line 229
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "directUpdateErrorMessageFailedProcessingZipFile"

    const-string v5, "Failed processing application update file."

    invoke-direct {p0, v4, v5, v6}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->handleUpdateException(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private sendRequest()Lorg/apache/http/HttpResponse;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v11, 0x0

    .line 363
    .local v11, httpclient:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 364
    .local v21, tempUrl:Ljava/lang/String;
    const-string v25, "https"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    if-ltz v25, :cond_2

    const/4 v12, 0x1

    .line 367
    .local v12, isHttpsRequest:Z
    :goto_0
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sslConfig:Lcom/worklight/common/SSLConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/worklight/common/SSLConfig;->isPrivateCA()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 368
    const-string v25, "SSL"

    const-string v26, "send SSL Request in direct update"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v19, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct/range {v19 .. v19}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 370
    .local v19, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v25, Lorg/apache/http/conn/scheme/Scheme;

    const-string v26, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/worklight/common/WLConfig;->getPort()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    invoke-direct/range {v25 .. v28}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sslConfig:Lcom/worklight/common/SSLConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/worklight/common/SSLConfig;->isIgnoreSSLCertificate()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 372
    const-string v25, "SSL"

    const-string v26, "Not found client trust keyStore, ignore certificate verify."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v25, Lorg/apache/http/conn/scheme/Scheme;

    const-string v26, "https"

    new-instance v27, Lcom/worklight/common/WLSSLSocketFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sslConfig:Lcom/worklight/common/SSLConfig;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Lcom/worklight/common/WLSSLSocketFactory;-><init>(Lcom/worklight/common/SSLConfig;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sslConfig:Lcom/worklight/common/SSLConfig;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/worklight/common/SSLConfig;->getHttpsPort()I

    move-result v28

    invoke-direct/range {v25 .. v28}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 387
    :goto_1
    new-instance v15, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v15}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 388
    .local v15, params:Lorg/apache/http/params/HttpParams;
    const/16 v22, 0x1388

    .line 389
    .local v22, timeoutConnection:I
    move/from16 v0, v22

    invoke-static {v15, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 390
    const/16 v23, 0x2710

    .line 391
    .local v23, timeoutSocket:I
    move/from16 v0, v23

    invoke-static {v15, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 393
    new-instance v14, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    move-object/from16 v0, v19

    invoke-direct {v14, v15, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 394
    .local v14, manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v11           #httpclient:Lorg/apache/http/client/HttpClient;
    invoke-direct {v11, v14, v15}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 399
    .end local v14           #manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v15           #params:Lorg/apache/http/params/HttpParams;
    .end local v19           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v22           #timeoutConnection:I
    .end local v23           #timeoutSocket:I
    .restart local v11       #httpclient:Lorg/apache/http/client/HttpClient;
    :goto_2
    new-instance v16, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 402
    .local v16, request:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/worklight/common/WLConfig;->getContext()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, context:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/worklight/common/WLConfig;->getAppURL()Ljava/net/URL;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 404
    .local v9, host:Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_5

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 405
    .local v20, serverUrl:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->cookies:Ljava/lang/String;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, ";"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->cookies:Ljava/lang/String;

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->cookies:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/worklight/common/WLConfig;->getAppURL()Ljava/net/URL;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/worklight/wlclient/WLCookieManager;->setCookies(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lcom/worklight/wlclient/WLCookieManager;->getCookies()Ljava/util/Set;

    move-result-object v7

    .line 409
    .local v7, cookies:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v10, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v10}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 410
    .local v10, httpContext:Lorg/apache/http/protocol/HttpContext;
    if-eqz v7, :cond_0

    .line 411
    new-instance v6, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v6}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 412
    .local v6, cookieStore:Lorg/apache/http/client/CookieStore;
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_6

    .line 415
    const-string v25, "http.cookie-store"

    move-object/from16 v0, v25

    invoke-interface {v10, v0, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    .end local v6           #cookieStore:Lorg/apache/http/client/CookieStore;
    :cond_0
    const-string v25, "x-wl-app-version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlConfig:Lcom/worklight/common/WLConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/worklight/common/WLConfig;->getApplicationVersion()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v25, "WL-Instance-Id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->instanceAuthId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/16 v18, 0x0

    .line 424
    .local v18, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    move-object/from16 v0, v16

    invoke-interface {v11, v0, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 430
    :cond_1
    return-object v18

    .line 364
    .end local v4           #context:Ljava/lang/String;
    .end local v7           #cookies:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/http/cookie/Cookie;>;"
    .end local v9           #host:Ljava/lang/String;
    .end local v10           #httpContext:Lorg/apache/http/protocol/HttpContext;
    .end local v12           #isHttpsRequest:Z
    .end local v16           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v20           #serverUrl:Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 375
    .restart local v12       #isHttpsRequest:Z
    .restart local v19       #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_3
    const-string v25, "SSL"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Do cerfificate verify by ketStore "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sslConfig:Lcom/worklight/common/SSLConfig;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/worklight/common/SSLConfig;->getKeystore()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :try_start_1
    const-string v25, "BKS"

    invoke-static/range {v25 .. v25}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v24

    .line 378
    .local v24, trustStore:Ljava/security/KeyStore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sslConfig:Lcom/worklight/common/SSLConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/worklight/common/SSLConfig;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 379
    .local v17, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sslConfig:Lcom/worklight/common/SSLConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/worklight/common/SSLConfig;->getKeystore()Ljava/lang/String;

    move-result-object v25

    const-string v26, "raw"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sslConfig:Lcom/worklight/common/SSLConfig;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/worklight/common/SSLConfig;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 380
    .local v13, keystoreId:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sslConfig:Lcom/worklight/common/SSLConfig;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/worklight/common/SSLConfig;->getKeystorePassword()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toCharArray()[C

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 381
    new-instance v25, Lorg/apache/http/conn/scheme/Scheme;

    const-string v26, "https"

    new-instance v27, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->sslConfig:Lcom/worklight/common/SSLConfig;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/worklight/common/SSLConfig;->getHttpsPort()I

    move-result v28

    invoke-direct/range {v25 .. v28}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 382
    .end local v13           #keystoreId:I
    .end local v17           #res:Landroid/content/res/Resources;
    .end local v24           #trustStore:Ljava/security/KeyStore;
    :catch_0
    move-exception v8

    .line 383
    .local v8, e:Ljava/lang/Exception;
    const-string v25, "SSL"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "load certificate keystore failed. "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 397
    .end local v8           #e:Ljava/lang/Exception;
    .end local v19           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_4
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v11           #httpclient:Lorg/apache/http/client/HttpClient;
    invoke-direct {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .restart local v11       #httpclient:Lorg/apache/http/client/HttpClient;
    goto/16 :goto_2

    .restart local v4       #context:Ljava/lang/String;
    .restart local v9       #host:Ljava/lang/String;
    .restart local v16       #request:Lorg/apache/http/client/methods/HttpGet;
    :cond_5
    move-object/from16 v20, v9

    .line 404
    goto/16 :goto_3

    .line 412
    .restart local v6       #cookieStore:Lorg/apache/http/client/CookieStore;
    .restart local v7       #cookies:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v10       #httpContext:Lorg/apache/http/protocol/HttpContext;
    .restart local v20       #serverUrl:Ljava/lang/String;
    :cond_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/cookie/Cookie;

    .line 413
    .local v5, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v6, v5}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    goto/16 :goto_4

    .line 425
    .end local v5           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v6           #cookieStore:Lorg/apache/http/client/CookieStore;
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v8

    .line 426
    .restart local v8       #e:Ljava/lang/Exception;
    if-eqz v12, :cond_1

    .line 427
    new-instance v25, Lorg/apache/http/client/ClientProtocolException;

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "SSL request error. "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v25
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->runDirectUpdate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .locals 11
    .parameter "url"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 342
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "198.216.28.169:8480"

    aput-object v7, v4, v6

    const-string v7, "www.test.com"

    aput-object v7, v4, v5

    .line 343
    .local v4, whiteList:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 344
    .local v0, domain:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 345
    const-string v7, "//"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 346
    .local v2, startIndex:I
    const-string v7, "/"

    add-int/lit8 v8, v2, 0x2

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 347
    .local v1, endIndex:I
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 349
    .end local v1           #endIndex:I
    .end local v2           #startIndex:I
    :cond_0
    if-eqz v0, :cond_1

    .line 350
    array-length v8, v4

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_3

    :cond_1
    move v5, v6

    .line 357
    :cond_2
    return v5

    .line 350
    :cond_3
    aget-object v3, v4, v7

    .line 351
    .local v3, str:Ljava/lang/String;
    const/4 v9, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 350
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 173
    :try_start_0
    iget-boolean v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->isDirectUpdateSuccess:Z

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 175
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 176
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    const-string v2, "exitOnSkinLoader"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v2}, Lcom/worklight/androidgap/WLDroidGap;->getWebMainFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/WLDroidGap;->loadUrl(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    invoke-static {v4}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->access$0(Z)V

    .line 190
    :goto_1
    return-void

    .line 182
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 183
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->wlDroidGap:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v1, p1}, Lcom/worklight/androidgap/WLDroidGap;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    invoke-static {v4}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->access$0(Z)V

    goto :goto_1

    .line 187
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 188
    invoke-static {v4}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->access$0(Z)V

    .line 189
    throw v1
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin;->access$0(Z)V

    .line 153
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->createProgressDialog()V

    .line 155
    iget-boolean v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->shouldUpdateSilently:Z

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 158
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 168
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/plugin/SSLWebResourcesDownloaderPlugin$SSLWebResourcesDownloader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
