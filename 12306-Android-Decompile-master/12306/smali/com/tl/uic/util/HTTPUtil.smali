.class public final Lcom/tl/uic/util/HTTPUtil;
.super Ljava/lang/Object;
.source "HTTPUtil.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final SUCCESS_IM_USED_RFC_3229:I = 0xe2

.field private static final SUCCESS_OK:I = 0xc8

.field public static final TLF_SESSION_ID_FROM_PCA:Ljava/lang/String; = "TLTSID"

.field private static volatile _myInstance:Lcom/tl/uic/util/HTTPUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static checkWhiteList()Ljava/lang/Boolean;
    .locals 15

    .prologue
    .line 236
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 237
    .local v2, hasBeenApproved:Ljava/lang/Boolean;
    const-string v14, "KillSwitchUrl"

    invoke-static {v14}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 238
    .local v10, url:Ljava/lang/String;
    const-string v14, "KillSwitchEnabled"

    invoke-static {v14}, Lcom/tl/uic/util/ConfigurationUtil;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    .line 239
    .local v4, killSwitchEnabled:Ljava/lang/Boolean;
    const-string v14, "UseWhiteList"

    invoke-static {v14}, Lcom/tl/uic/util/ConfigurationUtil;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    .line 240
    .local v12, useWhiteList:Ljava/lang/Boolean;
    const-string v14, "WhiteListParam"

    invoke-static {v14}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 241
    .local v13, whiteListParam:Ljava/lang/String;
    const-string v14, "UseRandomSample"

    invoke-static {v14}, Lcom/tl/uic/util/ConfigurationUtil;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    .line 242
    .local v11, useRandomSample:Ljava/lang/Boolean;
    const-string v14, "RandomSampleParam"

    invoke-static {v14}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, randomSampleParam:Ljava/lang/String;
    const-string v14, "KillSwitchMaxNumberOfTries"

    invoke-static {v14}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 244
    .local v6, maxNumberOfTries:I
    const-string v14, "KillSwitchTimeInterval"

    invoke-static {v14}, Lcom/tl/uic/util/ConfigurationUtil;->getLongMS(Ljava/lang/String;)J

    move-result-wide v8

    .line 245
    .local v8, timeInternalOfTries:J
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 247
    .local v5, killSwitchUrl:Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, body:Ljava/lang/String;
    const-string v14, "?"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 251
    const/16 v14, 0x26

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    :goto_0
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 257
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    :cond_0
    :goto_1
    const/16 v14, 0x3d

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getPhoneId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tl/uic/util/HTTPUtil;->getBodyFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-lt v3, v6, :cond_4

    .line 284
    .end local v0           #body:Ljava/lang/String;
    .end local v3           #i:I
    :cond_1
    return-object v2

    .line 253
    .restart local v0       #body:Ljava/lang/String;
    :cond_2
    const/16 v14, 0x3f

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 260
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 267
    .restart local v3       #i:I
    :cond_4
    if-eqz v0, :cond_6

    .line 268
    const-string v14, "1"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 269
    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 271
    :cond_5
    move v3, v6

    .line 274
    :cond_6
    if-ge v3, v6, :cond_7

    .line 276
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    const-string v4, ""

    .line 317
    .local v4, value:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 318
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 319
    .local v5, writer:Ljava/io/Writer;
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 321
    .local v0, buffer:[C
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, p0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 323
    .local v3, reader:Ljava/io/Reader;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, n:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 329
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 331
    .end local v2           #n:I
    .end local v3           #reader:Ljava/io/Reader;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 333
    .end local v0           #buffer:[C
    .end local v5           #writer:Ljava/io/Writer;
    :cond_0
    return-object v4

    .line 324
    .restart local v0       #buffer:[C
    .restart local v2       #n:I
    .restart local v3       #reader:Ljava/io/Reader;
    .restart local v5       #writer:Ljava/io/Writer;
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v0, v6, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 326
    .end local v2           #n:I
    .end local v3           #reader:Ljava/io/Reader;
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 328
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 329
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 330
    throw v6
.end method

.method public static createEntity(Ljava/lang/String;Ljava/lang/Boolean;)Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 5
    .parameter "body"
    .parameter "isGZip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v3, 0x0

    .line 87
    .local v3, postBody:Lorg/apache/http/entity/AbstractHttpEntity;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 89
    .local v2, originalBytes:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v4, v2

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 90
    .local v0, bAOStream:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 91
    .local v1, gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 92
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 93
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 94
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 95
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    .end local v3           #postBody:Lorg/apache/http/entity/AbstractHttpEntity;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 99
    .end local v0           #bAOStream:Ljava/io/ByteArrayOutputStream;
    .end local v1           #gzipOutputStream:Ljava/util/zip/GZIPOutputStream;
    .end local v2           #originalBytes:[B
    .restart local v3       #postBody:Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_0
    return-object v3

    .line 97
    :cond_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    .end local v3           #postBody:Lorg/apache/http/entity/AbstractHttpEntity;
    invoke-direct {v3, p0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .restart local v3       #postBody:Lorg/apache/http/entity/AbstractHttpEntity;
    goto :goto_0
.end method

.method private static getBodyFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, body:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 298
    .local v4, urlObject:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 299
    .local v3, urlConnection:Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 300
    .local v2, inputStream:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/tl/uic/util/HTTPUtil;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 304
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #urlConnection:Ljava/net/URLConnection;
    .end local v4           #urlObject:Ljava/net/URL;
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getCookieValue(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "urlConnection"
    .parameter "cookieKey"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 345
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_1

    move-object v3, v4

    .line 360
    :goto_0
    return-object v3

    .line 349
    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v4

    .line 360
    goto :goto_0

    .line 349
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 350
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v6, "Set-Cookie"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    .local v0, cookie:Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 353
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, cookieName:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 355
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getInstance()Lcom/tl/uic/util/HTTPUtil;
    .locals 3

    .prologue
    .line 67
    sget-object v1, Lcom/tl/uic/util/HTTPUtil;->_myInstance:Lcom/tl/uic/util/HTTPUtil;

    if-nez v1, :cond_0

    .line 68
    const-class v2, Lcom/tl/uic/util/HTTPUtil;

    monitor-enter v2

    .line 69
    :try_start_0
    new-instance v0, Lcom/tl/uic/util/HTTPUtil;

    invoke-direct {v0}, Lcom/tl/uic/util/HTTPUtil;-><init>()V

    .line 70
    .local v0, httpUtil:Lcom/tl/uic/util/HTTPUtil;
    sput-object v0, Lcom/tl/uic/util/HTTPUtil;->_myInstance:Lcom/tl/uic/util/HTTPUtil;

    .line 68
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    sget-object v1, Lcom/tl/uic/util/HTTPUtil;->_myInstance:Lcom/tl/uic/util/HTTPUtil;

    return-object v1

    .line 68
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static sendHttpImagePost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .parameter "url"
    .parameter "sessionId"
    .parameter "directory"
    .parameter "fileName"

    .prologue
    const/4 v0, 0x0

    .line 129
    if-nez p3, :cond_0

    .line 130
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/tl/uic/util/HTTPUtil;->sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static sendHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 7
    .parameter "url"
    .parameter "sessionId"
    .parameter "json"
    .parameter "isGZip"

    .prologue
    const/4 v4, 0x0

    .line 112
    if-nez p2, :cond_0

    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, v4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/tl/uic/util/HTTPUtil;->sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private static sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 24
    .parameter "url"
    .parameter "json"
    .parameter "isGZip"
    .parameter "isJson"
    .parameter "directory"
    .parameter "fileName"
    .parameter "sessionId"

    .prologue
    .line 150
    if-nez p1, :cond_0

    if-nez p5, :cond_0

    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v21

    if-nez v21, :cond_0

    .line 151
    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/tl/uic/EnvironmentalData;->getConnectionReceiver()Lcom/tl/uic/util/ConnectionReceiver;

    move-result-object v21

    if-nez v21, :cond_0

    .line 152
    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/tl/uic/EnvironmentalData;->getConnectionReceiver()Lcom/tl/uic/util/ConnectionReceiver;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/tl/uic/util/ConnectionReceiver;->isOnline()Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_0

    .line 153
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 226
    :goto_0
    return-object v21

    .line 157
    :cond_0
    :try_start_0
    new-instance v14, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v14}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 159
    .local v14, params:Lorg/apache/http/params/HttpParams;
    const-string v21, "PostMessageTimeout"

    invoke-static/range {v21 .. v21}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 158
    move/from16 v0, v21

    invoke-static {v14, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 161
    const-string v21, "PostMessageSocketTimeout"

    invoke-static/range {v21 .. v21}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-static {v14, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 162
    sget-object v21, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    move-object/from16 v0, v21

    invoke-static {v14, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 163
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v14, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 165
    new-instance v10, Lcom/tl/uic/http/TLDefaultHttpClient;

    move-object/from16 v0, p6

    invoke-direct {v10, v14, v0}, Lcom/tl/uic/http/TLDefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 166
    .local v10, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    .line 167
    const-string v22, "window"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    .line 166
    check-cast v21, Landroid/view/WindowManager;

    .line 167
    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 169
    .local v8, display:Landroid/view/Display;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v16, p0

    .line 171
    .local v16, postUrl:Ljava/lang/String;
    :goto_1
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 172
    .local v11, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v21, "Accept-Language"

    const-string v22, "en-US"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/tl/uic/util/JsonUtil;->testMessageType(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 175
    const-string v21, "MessageTypeHeader"

    invoke-static/range {v21 .. v21}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_1
    const/4 v15, 0x0

    .line 180
    .local v15, postBody:Lorg/apache/http/entity/AbstractHttpEntity;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 181
    invoke-static/range {p1 .. p2}, Lcom/tl/uic/util/HTTPUtil;->createEntity(Ljava/lang/String;Ljava/lang/Boolean;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v15

    .line 182
    const-string v21, "Content-Type"

    const-string v22, "text/json; charset=UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 184
    const-string v21, "Content-Encoding"

    const-string v22, "gzip"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_2
    :goto_2
    invoke-virtual {v11, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 197
    invoke-virtual {v10, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 199
    .local v12, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v4

    .line 200
    .local v4, clientCookieStore:Lorg/apache/http/client/CookieStore;
    invoke-interface {v4}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v6

    .line 201
    .local v6, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_3

    .line 202
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v20

    .line 203
    .local v20, syncManager:Landroid/webkit/CookieSyncManager;
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 204
    .local v3, appCookieManager:Landroid/webkit/CookieManager;
    if-eqz v3, :cond_3

    .line 205
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_6

    .line 210
    invoke-virtual/range {v20 .. v20}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 214
    .end local v3           #appCookieManager:Landroid/webkit/CookieManager;
    .end local v20           #syncManager:Landroid/webkit/CookieSyncManager;
    :cond_3
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    .line 215
    .local v18, status:Lorg/apache/http/StatusLine;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 217
    .local v19, statusCode:I
    const/16 v21, 0xc8

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    const/16 v21, 0xe2

    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_7

    .line 218
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    goto/16 :goto_0

    .line 169
    .end local v4           #clientCookieStore:Lorg/apache/http/client/CookieStore;
    .end local v6           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v11           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v12           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v15           #postBody:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v16           #postUrl:Ljava/lang/String;
    .end local v18           #status:Lorg/apache/http/StatusLine;
    .end local v19           #statusCode:I
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "?width="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&height="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 170
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&orientation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Landroid/view/Display;->getOrientation()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 188
    .restart local v11       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #postBody:Lorg/apache/http/entity/AbstractHttpEntity;
    .restart local v16       #postUrl:Ljava/lang/String;
    :cond_5
    const-string v21, "X-Tealeaf-Mobile-Image"

    const-string v22, "Embedded"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v21, "X-Tealeaf-Filename"

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getApplication()Landroid/app/Application;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    .line 192
    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    .line 193
    .local v7, dir:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v13, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v13, image:Ljava/io/File;
    new-instance v15, Lorg/apache/http/entity/FileEntity;

    .end local v15           #postBody:Lorg/apache/http/entity/AbstractHttpEntity;
    const-string v21, "image/png"

    move-object/from16 v0, v21

    invoke-direct {v15, v13, v0}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v15       #postBody:Lorg/apache/http/entity/AbstractHttpEntity;
    goto/16 :goto_2

    .line 205
    .end local v7           #dir:Ljava/io/File;
    .end local v13           #image:Ljava/io/File;
    .restart local v3       #appCookieManager:Landroid/webkit/CookieManager;
    .restart local v4       #clientCookieStore:Lorg/apache/http/client/CookieStore;
    .restart local v6       #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v12       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v20       #syncManager:Landroid/webkit/CookieSyncManager;
    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/cookie/Cookie;

    .line 206
    .local v5, cookie:Lorg/apache/http/cookie/Cookie;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v5}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; Domain="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 207
    invoke-interface {v5}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 206
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 208
    .local v17, setCookieHeader:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 222
    .end local v3           #appCookieManager:Landroid/webkit/CookieManager;
    .end local v4           #clientCookieStore:Lorg/apache/http/client/CookieStore;
    .end local v5           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v6           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v8           #display:Landroid/view/Display;
    .end local v10           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v11           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v12           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v14           #params:Lorg/apache/http/params/HttpParams;
    .end local v15           #postBody:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v16           #postUrl:Ljava/lang/String;
    .end local v17           #setCookieHeader:Ljava/lang/String;
    .end local v20           #syncManager:Landroid/webkit/CookieSyncManager;
    :catch_0
    move-exception v9

    .line 223
    .local v9, e:Ljava/lang/Exception;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "url:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 226
    .end local v9           #e:Ljava/lang/Exception;
    :goto_4
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    goto/16 :goto_0

    .line 220
    .restart local v4       #clientCookieStore:Lorg/apache/http/client/CookieStore;
    .restart local v6       #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v8       #display:Landroid/view/Display;
    .restart local v10       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v11       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v12       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v14       #params:Lorg/apache/http/params/HttpParams;
    .restart local v15       #postBody:Lorg/apache/http/entity/AbstractHttpEntity;
    .restart local v16       #postUrl:Ljava/lang/String;
    .restart local v18       #status:Lorg/apache/http/StatusLine;
    .restart local v19       #statusCode:I
    :cond_7
    :try_start_1
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Got back status code:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " from url:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
