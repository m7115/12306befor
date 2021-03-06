.class public Lorg/apache/cordova/FileTransfer;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/FileTransfer$DoneHandlerInputStream;,
        Lorg/apache/cordova/FileTransfer$RequestContext;
    }
.end annotation


# static fields
.field public static ABORTED_ERR:I = 0x0

.field private static final BOUNDARY:Ljava/lang/String; = "+++++"

.field public static CONNECTION_ERR:I = 0x0

.field private static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier; = null

.field public static FILE_NOT_FOUND_ERR:I = 0x0

.field public static INVALID_URL_ERR:I = 0x0

.field private static final LINE_END:Ljava/lang/String; = "\r\n"

.field private static final LINE_START:Ljava/lang/String; = "--"

.field private static final LOG_TAG:Ljava/lang/String; = "FileTransfer"

.field private static final MAX_BUFFER_SIZE:I = 0x4000

.field private static activeRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/FileTransfer$RequestContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final trustAllCerts:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 72
    sput v1, Lorg/apache/cordova/FileTransfer;->FILE_NOT_FOUND_ERR:I

    .line 73
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/FileTransfer;->INVALID_URL_ERR:I

    .line 74
    const/4 v0, 0x3

    sput v0, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    .line 75
    const/4 v0, 0x4

    sput v0, Lorg/apache/cordova/FileTransfer;->ABORTED_ERR:I

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;

    .line 494
    new-instance v0, Lorg/apache/cordova/FileTransfer$2;

    invoke-direct {v0}, Lorg/apache/cordova/FileTransfer$2;-><init>()V

    sput-object v0, Lorg/apache/cordova/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    .line 500
    new-array v0, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/cordova/FileTransfer$3;

    invoke-direct {v2}, Lorg/apache/cordova/FileTransfer$3;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/cordova/FileTransfer;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 106
    return-void
.end method

.method private abort(Ljava/lang/String;)V
    .locals 8
    .parameter "objectId"

    .prologue
    .line 851
    sget-object v4, Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 852
    :try_start_0
    sget-object v3, Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/FileTransfer$RequestContext;

    .line 853
    .local v0, context:Lorg/apache/cordova/FileTransfer$RequestContext;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    if-eqz v0, :cond_1

    .line 855
    iget-object v2, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->targetFile:Ljava/io/File;

    .line 856
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    .line 857
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 860
    :cond_0
    sget v3, Lorg/apache/cordova/FileTransfer;->ABORTED_ERR:I

    iget-object v4, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->source:Ljava/lang/String;

    iget-object v5, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->target:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v1

    .line 861
    .local v1, error:Lorg/json/JSONObject;
    monitor-enter v0

    .line 862
    :try_start_1
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Lorg/apache/cordova/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 863
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/apache/cordova/FileTransfer$RequestContext;->aborted:Z

    .line 864
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 866
    iget-object v3, p0, Lorg/apache/cordova/FileTransfer;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lorg/apache/cordova/FileTransfer$5;

    invoke-direct {v4, p0, v0}, Lorg/apache/cordova/FileTransfer$5;-><init>(Lorg/apache/cordova/FileTransfer;Lorg/apache/cordova/FileTransfer$RequestContext;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 875
    .end local v1           #error:Lorg/json/JSONObject;
    .end local v2           #file:Ljava/io/File;
    :cond_1
    return-void

    .line 853
    .end local v0           #context:Lorg/apache/cordova/FileTransfer$RequestContext;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 864
    .restart local v0       #context:Lorg/apache/cordova/FileTransfer$RequestContext;
    .restart local v1       #error:Lorg/json/JSONObject;
    .restart local v2       #file:Ljava/io/File;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method static synthetic access$000(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-static {p0}, Lorg/apache/cordova/FileTransfer;->trustAllHosts(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/cordova/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static synthetic access$200(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-static {p0, p1}, Lorg/apache/cordova/FileTransfer;->addHeadersToRequest(Ljava/net/URLConnection;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/cordova/FileTransfer;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/apache/cordova/FileTransfer;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/io/Closeable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-static {p0}, Lorg/apache/cordova/FileTransfer;->safeClose(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$500(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Lorg/apache/cordova/FileTransfer;->getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 65
    invoke-static {p0, p1, p2, p3}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/cordova/FileTransfer;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/apache/cordova/FileTransfer;->getFileFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static addHeadersToRequest(Ljava/net/URLConnection;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "connection"
    .parameter "headers"

    .prologue
    .line 163
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, headerKey:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 166
    .local v1, headerValues:Lorg/json/JSONArray;
    if-nez v1, :cond_1

    .line 167
    new-instance v1, Lorg/json/JSONArray;

    .end local v1           #headerValues:Lorg/json/JSONArray;
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 168
    .restart local v1       #headerValues:Lorg/json/JSONArray;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 170
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 172
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v0           #headerKey:Ljava/lang/String;
    .end local v1           #headerValues:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v4

    .line 178
    :cond_2
    return-void
.end method

.method private static createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;
    .locals 5
    .parameter "errorCode"
    .parameter "source"
    .parameter "target"
    .parameter "body"
    .parameter "httpStatus"

    .prologue
    .line 575
    const/4 v1, 0x0

    .line 577
    .local v1, error:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v1           #error:Lorg/json/JSONObject;
    .local v2, error:Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "code"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 579
    const-string v3, "source"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 580
    const-string v3, "target"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    if-eqz p3, :cond_0

    .line 583
    const-string v3, "body"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    :cond_0
    if-eqz p4, :cond_1

    .line 586
    const-string v3, "http_status"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v1, v2

    .line 591
    .end local v2           #error:Lorg/json/JSONObject;
    .restart local v1       #error:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, e:Lorg/json/JSONException;
    :goto_1
    const-string v3, "FileTransfer"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 588
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #error:Lorg/json/JSONObject;
    .restart local v2       #error:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #error:Lorg/json/JSONObject;
    .restart local v1       #error:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private static createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;)Lorg/json/JSONObject;
    .locals 10
    .parameter "errorCode"
    .parameter "source"
    .parameter "target"
    .parameter "connection"

    .prologue
    .line 539
    const/4 v5, 0x0

    .line 540
    .local v5, httpStatus:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v2, bodyBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 542
    .local v1, body:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 544
    :try_start_0
    instance-of v8, p3, Ljava/net/HttpURLConnection;

    if-eqz v8, :cond_1

    .line 545
    move-object v0, p3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 546
    check-cast p3, Ljava/net/HttpURLConnection;

    .end local p3
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 547
    .local v4, err:Ljava/io/InputStream;
    if-eqz v4, :cond_1

    .line 549
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 550
    .local v7, reader:Ljava/io/BufferedReader;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 551
    .local v6, line:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    .line 553
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 555
    if-eqz v6, :cond_0

    .line 556
    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    .end local v4           #err:Ljava/io/InputStream;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 562
    .local v3, e:Ljava/io/IOException;
    const-string v8, "FileTransfer"

    const-string v9, "Error getting HTTP status code from connection."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p0, p1, p2, v1, v8}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v8

    return-object v8

    .line 558
    .restart local v4       #err:Ljava/io/InputStream;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 16
    .parameter "source"
    .parameter "target"
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 619
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v8

    .line 622
    .local v8, trustEveryone:Z
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 623
    .local v12, objectId:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 627
    .local v11, headers:Lorg/json/JSONObject;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .local v9, url:Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 636
    .local v7, useHttps:Z
    invoke-static/range {p1 .. p1}, Lorg/apache/cordova/Config;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 637
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source URL is not in white list: \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    sget v3, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    const/4 v4, 0x0

    const/16 v6, 0x191

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1, v4, v6}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v14

    .line 639
    .local v14, error:Lorg/json/JSONObject;
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v14}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 796
    .end local v7           #useHttps:Z
    .end local v9           #url:Ljava/net/URL;
    .end local v14           #error:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 628
    :catch_0
    move-exception v13

    .line 629
    .local v13, e:Ljava/net/MalformedURLException;
    sget v3, Lorg/apache/cordova/FileTransfer;->INVALID_URL_ERR:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1, v4, v6}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v14

    .line 630
    .restart local v14       #error:Lorg/json/JSONObject;
    const-string v3, "FileTransfer"

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 631
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v14}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto :goto_0

    .line 644
    .end local v13           #e:Ljava/net/MalformedURLException;
    .end local v14           #error:Lorg/json/JSONObject;
    .restart local v7       #useHttps:Z
    .restart local v9       #url:Ljava/net/URL;
    :cond_0
    new-instance v5, Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v5, v0, v1, v2}, Lorg/apache/cordova/FileTransfer$RequestContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    .line 645
    .local v5, context:Lorg/apache/cordova/FileTransfer$RequestContext;
    sget-object v4, Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 646
    :try_start_1
    sget-object v3, Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/FileTransfer;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v15

    new-instance v3, Lorg/apache/cordova/FileTransfer$4;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v10, p1

    invoke-direct/range {v3 .. v12}, Lorg/apache/cordova/FileTransfer$4;-><init>(Lorg/apache/cordova/FileTransfer;Lorg/apache/cordova/FileTransfer$RequestContext;Ljava/lang/String;ZZLjava/net/URL;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-interface {v15, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private static getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "args"
    .parameter "position"
    .parameter "defaultString"

    .prologue
    .line 602
    move-object v0, p2

    .line 603
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v1, p1, :cond_1

    .line 604
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    :cond_0
    move-object v0, p2

    .line 609
    :cond_1
    return-object v0
.end method

.method private getFileFromPath(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 831
    const-string v1, "file://"

    .line 833
    .local v1, prefix:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 834
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 839
    .local v0, file:Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 840
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    .line 836
    .end local v0           #file:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #file:Ljava/io/File;
    goto :goto_0

    .line 843
    :cond_1
    return-object v0
.end method

.method private static getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 2
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 487
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 488
    new-instance v0, Lorg/apache/cordova/FileTransfer$DoneHandlerInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/cordova/FileTransfer$DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 490
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method private getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x7

    .line 806
    const-string v2, "content:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 807
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 808
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lorg/apache/cordova/FileTransfer;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 819
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 810
    :cond_0
    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 811
    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 812
    .local v0, question:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 813
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 815
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 819
    .end local v0           #question:I
    :cond_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 478
    if-eqz p0, :cond_0

    .line 480
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static trustAllHosts(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 7
    .parameter "connection"

    .prologue
    .line 524
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 527
    .local v2, oldFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 528
    .local v3, sc:Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    sget-object v5, Lorg/apache/cordova/FileTransfer;->trustAllCerts:[Ljavax/net/ssl/TrustManager;

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 529
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 530
    .local v1, newFactory:Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v1           #newFactory:Ljavax/net/ssl/SSLSocketFactory;
    .end local v3           #sc:Ljavax/net/ssl/SSLContext;
    :goto_0
    return-object v2

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "FileTransfer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upload(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 21
    .parameter "source"
    .parameter "target"
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 194
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "upload "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " to "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v3, 0x2

    const-string v4, "file"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/apache/cordova/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 198
    .local v12, fileKey:Ljava/lang/String;
    const/4 v3, 0x3

    const-string v4, "image.jpg"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/apache/cordova/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 199
    .local v13, fileName:Ljava/lang/String;
    const/4 v3, 0x4

    const-string v4, "image/jpeg"

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/apache/cordova/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 200
    .local v14, mimeType:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 201
    .local v11, params:Lorg/json/JSONObject;
    :goto_0
    const/4 v3, 0x6

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v7

    .line 203
    .local v7, trustEveryone:Z
    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/16 v16, 0x1

    .line 205
    .local v16, chunkedMode:Z
    :goto_1
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "headers"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 206
    .local v10, headers:Lorg/json/JSONObject;
    :goto_2
    const/16 v3, 0x9

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 208
    .local v17, objectId:Ljava/lang/String;
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileKey: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileName: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mimeType: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "params: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "trustEveryone: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chunkedMode: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "headers: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v3, "FileTransfer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "objectId: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :try_start_0
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 228
    .local v6, useHttps:Z
    new-instance v5, Lorg/apache/cordova/FileTransfer$RequestContext;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v5, v0, v1, v2}, Lorg/apache/cordova/FileTransfer$RequestContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    .line 229
    .local v5, context:Lorg/apache/cordova/FileTransfer$RequestContext;
    sget-object v4, Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 230
    :try_start_1
    sget-object v3, Lorg/apache/cordova/FileTransfer;->activeRequests:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/cordova/FileTransfer;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v20

    new-instance v3, Lorg/apache/cordova/FileTransfer$1;

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    move-object/from16 v15, p1

    invoke-direct/range {v3 .. v17}, Lorg/apache/cordova/FileTransfer$1;-><init>(Lorg/apache/cordova/FileTransfer;Lorg/apache/cordova/FileTransfer$RequestContext;ZZLjava/net/URL;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 475
    .end local v5           #context:Lorg/apache/cordova/FileTransfer$RequestContext;
    .end local v6           #useHttps:Z
    .end local v8           #url:Ljava/net/URL;
    :goto_3
    return-void

    .line 200
    .end local v7           #trustEveryone:Z
    .end local v10           #headers:Lorg/json/JSONObject;
    .end local v11           #params:Lorg/json/JSONObject;
    .end local v16           #chunkedMode:Z
    .end local v17           #objectId:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    goto/16 :goto_0

    .line 203
    .restart local v7       #trustEveryone:Z
    .restart local v11       #params:Lorg/json/JSONObject;
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 205
    .restart local v16       #chunkedMode:Z
    :cond_3
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    goto/16 :goto_2

    .line 220
    .restart local v10       #headers:Lorg/json/JSONObject;
    .restart local v17       #objectId:Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 221
    .local v18, e:Ljava/net/MalformedURLException;
    sget v3, Lorg/apache/cordova/FileTransfer;->INVALID_URL_ERR:I

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1, v4, v9}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v19

    .line 222
    .local v19, error:Lorg/json/JSONObject;
    const-string v3, "FileTransfer"

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v19

    invoke-direct {v3, v4, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto :goto_3

    .line 231
    .end local v18           #e:Ljava/net/MalformedURLException;
    .end local v19           #error:Lorg/json/JSONObject;
    .restart local v5       #context:Lorg/apache/cordova/FileTransfer$RequestContext;
    .restart local v6       #useHttps:Z
    .restart local v8       #url:Ljava/net/URL;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 8
    .parameter "action"
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 137
    const-string v6, "upload"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "download"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    :cond_0
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, source:Ljava/lang/String;
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, target:Ljava/lang/String;
    const-string v5, "upload"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-direct {p0, v2, v3, p2, p3}, Lorg/apache/cordova/FileTransfer;->upload(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v2           #source:Ljava/lang/String;
    .end local v3           #target:Ljava/lang/String;
    :goto_0
    return v4

    .line 145
    .restart local v2       #source:Ljava/lang/String;
    .restart local v3       #target:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->MALFORMED_URL_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    const-string v7, "UTF-8 error."

    invoke-direct {v5, v6, v7}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto :goto_0

    .line 149
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    invoke-direct {p0, v2, v3, p2, p3}, Lorg/apache/cordova/FileTransfer;->download(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V

    goto :goto_0

    .line 152
    .end local v2           #source:Ljava/lang/String;
    .end local v3           #target:Ljava/lang/String;
    :cond_2
    const-string v6, "abort"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, objectId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/apache/cordova/FileTransfer;->abort(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p3}, Lorg/apache/cordova/api/CallbackContext;->success()V

    goto :goto_0

    .end local v1           #objectId:Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 158
    goto :goto_0
.end method
