.class public final Lcom/tl/uic/TLFCache;
.super Ljava/lang/Object;
.source "TLFCache.java"


# static fields
.field private static final PERCENT:I = 0x64

.field private static _currentSession:Lcom/tl/uic/model/Session;

.field private static _currentSessionStartedDate:J

.field private static _messageVersion:I

.field private static volatile _myInstance:Lcom/tl/uic/TLFCache;

.field private static _postTask:Lcom/tl/uic/util/PostTask;

.field private static _postTimerTask:Ljava/util/TimerTask;

.field private static currentBufferSize:J

.field private static currentSessionId:Ljava/lang/String;

.field private static environmentalData:Lcom/tl/uic/EnvironmentalData;

.field private static logLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/tl/uic/TLFCache;->_messageVersion:I

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$0()Lcom/tl/uic/util/PostTask;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/tl/uic/TLFCache;->_postTask:Lcom/tl/uic/util/PostTask;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tl/uic/util/PostTask;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    sput-object p0, Lcom/tl/uic/TLFCache;->_postTask:Lcom/tl/uic/util/PostTask;

    return-void
.end method

.method private static addJSONMessage(Lcom/tl/uic/model/JSONMessage;)Ljava/lang/Boolean;
    .locals 13
    .parameter "message"

    .prologue
    const/4 v12, 0x0

    .line 246
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 250
    .local v0, hasBeenAdded:Ljava/lang/Boolean;
    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_0

    sget-wide v6, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    invoke-static {}, Lcom/tl/uic/TLFCache;->getTLFCacheFileMaxBytesSize()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lcom/tl/uic/TLFCache;->saveToCache(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 251
    :cond_0
    invoke-static {}, Lcom/tl/uic/TLFCache;->cleanByCacheLevel()V

    .line 253
    invoke-static {}, Lcom/tl/uic/TLFCache;->getTLFCacheFileMaxBytesSize()J

    move-result-wide v6

    .line 254
    invoke-static {}, Lcom/tl/uic/TLFCache;->getTLFCacheFileMaxBytesSize()J

    move-result-wide v8

    invoke-static {}, Lcom/tl/uic/TLFCache;->getBufferPercent()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    .line 253
    sub-long v1, v6, v8

    .line 255
    .local v1, idealSize:J
    sget-wide v6, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    cmp-long v6, v6, v1

    if-lez v6, :cond_1

    .line 256
    invoke-static {}, Lcom/tl/uic/TLFCache;->getHasToPersistLocalCache()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 257
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lcom/tl/uic/TLFCache;->saveToCache(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 269
    .end local v1           #idealSize:J
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    if-eqz v6, :cond_2

    .line 270
    sget-object v6, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7}, Lcom/tl/uic/model/Session;->setMessages(Ljava/util/List;)V

    .line 273
    :cond_2
    invoke-static {p0}, Lcom/tl/uic/TLFCache;->sizeOfObject(Ljava/lang/Object;)J

    move-result-wide v4

    .line 274
    .local v4, messageBytesSize:J
    invoke-virtual {p0, v4, v5}, Lcom/tl/uic/model/JSONMessage;->setSize(J)V

    .line 277
    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 279
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v6, "Added:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 280
    .local v3, logMessage:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/tl/uic/model/JSONMessage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    .line 282
    const/4 v3, 0x0

    .line 284
    sget-wide v6, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    add-long/2addr v6, v4

    sput-wide v6, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    .line 287
    return-object v0

    .line 262
    .end local v3           #logMessage:Ljava/lang/StringBuffer;
    .end local v4           #messageBytesSize:J
    .restart local v1       #idealSize:J
    :cond_3
    sget-wide v7, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tl/uic/model/JSONMessage;

    invoke-virtual {v6}, Lcom/tl/uic/model/JSONMessage;->getSize()J

    move-result-wide v9

    sub-long v6, v7, v9

    sput-wide v6, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    .line 263
    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 259
    :cond_4
    sget-wide v6, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    cmp-long v6, v6, v1

    if-gtz v6, :cond_3

    goto :goto_0
.end method

.method public static addMessage(Lcom/tl/uic/model/ClientMessageHeader;)Ljava/lang/Boolean;
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 213
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tl/uic/util/JsonUtil;->testMessageType(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 218
    :goto_0
    return-object v1

    .line 217
    :cond_0
    new-instance v0, Lcom/tl/uic/model/JSONMessage;

    invoke-direct {v0, p0}, Lcom/tl/uic/model/JSONMessage;-><init>(Lcom/tl/uic/model/ClientMessageHeader;)V

    .line 218
    .local v0, jsonMessage:Lcom/tl/uic/model/JSONMessage;
    invoke-static {v0}, Lcom/tl/uic/TLFCache;->addJSONMessage(Lcom/tl/uic/model/JSONMessage;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static addMessage(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "bridgeMessage"

    .prologue
    const/4 v2, 0x0

    .line 228
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tl/uic/util/JsonUtil;->testMessageType(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    .line 232
    :cond_0
    new-instance v0, Lcom/tl/uic/model/JSONMessage;

    invoke-direct {v0}, Lcom/tl/uic/model/JSONMessage;-><init>()V

    .line 233
    .local v0, jsonMessage:Lcom/tl/uic/model/JSONMessage;
    invoke-virtual {v0, p0}, Lcom/tl/uic/model/JSONMessage;->setJsonData(Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/JSONMessage;->setLogLevel(I)V

    .line 236
    invoke-static {v0}, Lcom/tl/uic/TLFCache;->addJSONMessage(Lcom/tl/uic/model/JSONMessage;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method private static cleanByCacheLevel()V
    .locals 6

    .prologue
    .line 294
    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 295
    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 303
    :cond_0
    return-void

    .line 296
    :cond_1
    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_2

    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tl/uic/model/JSONMessage;

    invoke-virtual {v1}, Lcom/tl/uic/model/JSONMessage;->getLogLevel()I

    move-result v1

    invoke-static {}, Lcom/tl/uic/TLFCache;->getCacheLevel()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 297
    sget-wide v2, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tl/uic/model/JSONMessage;

    invoke-virtual {v1}, Lcom/tl/uic/model/JSONMessage;->getSize()J

    move-result-wide v4

    sub-long v1, v2, v4

    sput-wide v1, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "removed message byte size: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tl/uic/model/JSONMessage;

    invoke-virtual {v1}, Lcom/tl/uic/model/JSONMessage;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 295
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static closePostTask()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 366
    sget-object v0, Lcom/tl/uic/TLFCache;->_postTask:Lcom/tl/uic/util/PostTask;

    if-eqz v0, :cond_0

    .line 367
    sget-object v1, Lcom/tl/uic/TLFCache;->_postTask:Lcom/tl/uic/util/PostTask;

    monitor-enter v1

    .line 368
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/tl/uic/TLFCache;->_postTask:Lcom/tl/uic/util/PostTask;

    .line 367
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 367
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static createMessageFormat()Lcom/tl/uic/model/MessageFormat;
    .locals 3

    .prologue
    .line 491
    sget-object v1, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 492
    :cond_0
    const/4 v0, 0x0

    .line 503
    .local v0, messageFormat:Lcom/tl/uic/model/MessageFormat;
    :goto_0
    return-object v0

    .line 496
    .end local v0           #messageFormat:Lcom/tl/uic/model/MessageFormat;
    :cond_1
    new-instance v0, Lcom/tl/uic/model/MessageFormat;

    invoke-direct {v0}, Lcom/tl/uic/model/MessageFormat;-><init>()V

    .line 497
    .restart local v0       #messageFormat:Lcom/tl/uic/model/MessageFormat;
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getMessageVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/MessageFormat;->setMessageVersion(Ljava/lang/String;)V

    .line 498
    sget v1, Lcom/tl/uic/TLFCache;->_messageVersion:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/tl/uic/TLFCache;->_messageVersion:I

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/MessageFormat;->setSerialNumber(I)V

    .line 499
    sget-object v1, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    sget-object v2, Lcom/tl/uic/TLFCache;->environmentalData:Lcom/tl/uic/EnvironmentalData;

    invoke-virtual {v2}, Lcom/tl/uic/EnvironmentalData;->createClientEnvironment()Lcom/tl/uic/model/ClientEnvironment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tl/uic/model/Session;->setClientEnvironment(Lcom/tl/uic/model/ClientEnvironment;)V

    .line 502
    sget-object v1, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/MessageFormat;->setSession(Lcom/tl/uic/model/Session;)V

    goto :goto_0
.end method

.method private static createSessionId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 400
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 401
    .local v1, uuid:Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, id:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static flushPostTask()V
    .locals 2

    .prologue
    .line 378
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 380
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/tl/uic/TLFCache$2;

    invoke-direct {v1}, Lcom/tl/uic/TLFCache$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method public static getBufferLimit()I
    .locals 1

    .prologue
    .line 131
    const-string v0, "BufferLimit"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBufferPercent()I
    .locals 1

    .prologue
    .line 138
    const-string v0, "BufferPercent"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCacheLevel()I
    .locals 1

    .prologue
    .line 145
    const-string v0, "CachingLevel"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCachedFileMaxBytesSize()J
    .locals 2

    .prologue
    .line 152
    const-string v0, "CachedFileMaxBytesSize"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentBufferSize()J
    .locals 2

    .prologue
    .line 196
    sget-wide v0, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    return-wide v0
.end method

.method public static getCurrentSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/tl/uic/TLFCache;->currentSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/tl/uic/TLFCache;->environmentalData:Lcom/tl/uic/EnvironmentalData;

    return-object v0
.end method

.method public static getHasToPersistLocalCache()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 124
    const-string v0, "HasToPersistLocalCache"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tl/uic/TLFCache;
    .locals 3

    .prologue
    .line 51
    sget-object v1, Lcom/tl/uic/TLFCache;->_myInstance:Lcom/tl/uic/TLFCache;

    if-nez v1, :cond_0

    .line 52
    const-class v2, Lcom/tl/uic/TLFCache;

    monitor-enter v2

    .line 53
    :try_start_0
    new-instance v0, Lcom/tl/uic/TLFCache;

    invoke-direct {v0}, Lcom/tl/uic/TLFCache;-><init>()V

    .line 54
    .local v0, tlfCache:Lcom/tl/uic/TLFCache;
    sput-object v0, Lcom/tl/uic/TLFCache;->_myInstance:Lcom/tl/uic/TLFCache;

    .line 52
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    sget-object v1, Lcom/tl/uic/TLFCache;->_myInstance:Lcom/tl/uic/TLFCache;

    return-object v1

    .line 52
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 181
    sget v0, Lcom/tl/uic/TLFCache;->logLevel:I

    return v0
.end method

.method public static getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tl/uic/model/JSONMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    sget-object v0, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    invoke-virtual {v0}, Lcom/tl/uic/model/Session;->getMessages()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPostMessageMaxBytesSize()J
    .locals 2

    .prologue
    .line 159
    const-string v0, "PostMessageMaxBytesSize"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTLFCacheFileMaxBytesSize()J
    .locals 4

    .prologue
    .line 166
    invoke-static {}, Lcom/tl/uic/TLFCache;->getCachedFileMaxBytesSize()J

    move-result-wide v0

    invoke-static {}, Lcom/tl/uic/TLFCache;->getPostMessageMaxBytesSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/tl/uic/TLFCache;->getPostMessageMaxBytesSize()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 167
    :cond_0
    invoke-static {}, Lcom/tl/uic/TLFCache;->getCachedFileMaxBytesSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static messageFormats()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tl/uic/model/TLFCacheFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v1, objects:Ljava/util/List;,"Ljava/util/List<Lcom/tl/uic/model/TLFCacheFile;>;"
    invoke-static {}, Lcom/tl/uic/TLFCache;->getHasToPersistLocalCache()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    const-string v3, "TLFCache"

    invoke-static {v3}, Lcom/tl/uic/util/FileUtil;->getObjects(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 516
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 517
    invoke-static {}, Lcom/tl/uic/TLFCache;->createMessageFormat()Lcom/tl/uic/model/MessageFormat;

    move-result-object v0

    .line 518
    .local v0, messageFormat:Lcom/tl/uic/model/MessageFormat;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tl/uic/model/MessageFormat;->getSession()Lcom/tl/uic/model/Session;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 519
    invoke-virtual {v0}, Lcom/tl/uic/model/MessageFormat;->getSession()Lcom/tl/uic/model/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tl/uic/model/Session;->getSessionID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 520
    new-instance v2, Lcom/tl/uic/model/TLFCacheFile;

    invoke-virtual {v0}, Lcom/tl/uic/model/MessageFormat;->getSession()Lcom/tl/uic/model/Session;

    move-result-object v3

    .line 521
    invoke-virtual {v3}, Lcom/tl/uic/model/Session;->getSessionID()Ljava/lang/String;

    move-result-object v3

    .line 520
    invoke-direct {v2, v0, v3}, Lcom/tl/uic/model/TLFCacheFile;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    .local v2, tlfCacheFile:Lcom/tl/uic/model/TLFCacheFile;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    .end local v0           #messageFormat:Lcom/tl/uic/model/MessageFormat;
    .end local v2           #tlfCacheFile:Lcom/tl/uic/model/TLFCacheFile;
    :cond_1
    return-object v1
.end method

.method public static onPause()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/tl/uic/TLFCache;->environmentalData:Lcom/tl/uic/EnvironmentalData;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/tl/uic/TLFCache;->environmentalData:Lcom/tl/uic/EnvironmentalData;

    invoke-virtual {v0}, Lcom/tl/uic/EnvironmentalData;->onPause()Ljava/lang/Boolean;

    .line 77
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static onResume()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/tl/uic/TLFCache;->environmentalData:Lcom/tl/uic/EnvironmentalData;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/tl/uic/TLFCache;->environmentalData:Lcom/tl/uic/EnvironmentalData;

    invoke-virtual {v0}, Lcom/tl/uic/EnvironmentalData;->onResume()Ljava/lang/Boolean;

    .line 91
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static saveToCache(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 10
    .parameter "toFlush"

    .prologue
    const/4 v7, 0x1

    .line 448
    move-object v3, p0

    .line 449
    .local v3, hasFlushed:Ljava/lang/Boolean;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 451
    .local v2, hasBeenSaved:Ljava/lang/Boolean;
    invoke-static {}, Lcom/tl/uic/TLFCache;->createMessageFormat()Lcom/tl/uic/model/MessageFormat;

    move-result-object v4

    .line 452
    .local v4, messageFormat:Lcom/tl/uic/model/MessageFormat;
    if-eqz v4, :cond_0

    .line 453
    invoke-static {}, Lcom/tl/uic/TLFCache;->getHasToPersistLocalCache()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 454
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 455
    .local v0, currentDate:Ljava/util/Date;
    new-instance v5, Lcom/tl/uic/model/TLFCacheFile;

    invoke-virtual {v4}, Lcom/tl/uic/model/MessageFormat;->getSession()Lcom/tl/uic/model/Session;

    move-result-object v6

    .line 456
    invoke-virtual {v6}, Lcom/tl/uic/model/Session;->getSessionID()Ljava/lang/String;

    move-result-object v6

    .line 455
    invoke-direct {v5, v4, v6}, Lcom/tl/uic/model/TLFCacheFile;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    .local v5, tlfCacheFile:Lcom/tl/uic/model/TLFCacheFile;
    const-string v6, "TLFCache"

    .line 458
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cache_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 457
    invoke-static {v5, v6, v7}, Lcom/tl/uic/util/FileUtil;->saveObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 464
    .end local v0           #currentDate:Ljava/util/Date;
    .end local v5           #tlfCacheFile:Lcom/tl/uic/model/TLFCacheFile;
    :cond_0
    :goto_0
    sget-object v6, Lcom/tl/uic/TLFCache;->_postTimerTask:Ljava/util/TimerTask;

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 466
    :try_start_0
    sget-object v6, Lcom/tl/uic/TLFCache;->_postTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v6}, Ljava/util/TimerTask;->cancel()Z

    .line 467
    invoke-static {}, Lcom/tl/uic/TLFCache;->flushPostTask()V

    .line 468
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 474
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 476
    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 477
    const-wide/16 v6, 0x0

    sput-wide v6, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    .line 480
    :cond_2
    return-object v2

    .line 460
    :cond_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static setCurrentLogLevel(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "hasConnection"
    .parameter "isWifi"
    .parameter "isMobile"

    .prologue
    .line 420
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    const-string v0, "PostMessageLevelWiFi"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tl/uic/TLFCache;->logLevel:I

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "PostMessageLevelCellular"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tl/uic/TLFCache;->logLevel:I

    goto :goto_0

    .line 427
    :cond_2
    const-string v0, "LoggingLevel"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tl/uic/TLFCache;->logLevel:I

    goto :goto_0
.end method

.method private static setupPostTask()V
    .locals 7

    .prologue
    .line 338
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 339
    .local v6, handler:Landroid/os/Handler;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 341
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/tl/uic/TLFCache$1;

    invoke-direct {v1, v6}, Lcom/tl/uic/TLFCache$1;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/tl/uic/TLFCache;->_postTimerTask:Ljava/util/TimerTask;

    .line 359
    sget-object v1, Lcom/tl/uic/TLFCache;->_postTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-string v4, "PostMessageTimeIntervals"

    invoke-static {v4}, Lcom/tl/uic/util/ConfigurationUtil;->getLongMS(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 360
    return-void
.end method

.method public static sizeOfObject(Ljava/lang/Object;)J
    .locals 6
    .parameter "obj"

    .prologue
    .line 536
    const-wide/16 v3, 0x0

    .line 539
    .local v3, size:J
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 540
    .local v0, byteObject:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 541
    .local v2, objectOutputStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 542
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 543
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 544
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 546
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v5

    .line 550
    .end local v0           #byteObject:Ljava/io/ByteArrayOutputStream;
    .end local v2           #objectOutputStream:Ljava/io/ObjectOutputStream;
    :goto_0
    return-wide v3

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static startSession(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .parameter "sessionId"

    .prologue
    .line 312
    const-string v1, "ManualPostEnabled"

    invoke-static {v1}, Lcom/tl/uic/util/ConfigurationUtil;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 313
    .local v0, hasManualPost:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    invoke-static {}, Lcom/tl/uic/TLFCache;->setupPostTask()V

    .line 317
    :cond_0
    sget-object v1, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    if-eqz v1, :cond_1

    .line 318
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/tl/uic/TLFCache;->saveToCache(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 321
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sput-wide v1, Lcom/tl/uic/TLFCache;->_currentSessionStartedDate:J

    .line 322
    if-nez p0, :cond_2

    invoke-static {}, Lcom/tl/uic/TLFCache;->createSessionId()Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_2
    sput-object p0, Lcom/tl/uic/TLFCache;->currentSessionId:Ljava/lang/String;

    .line 323
    new-instance v1, Lcom/tl/uic/model/Session;

    invoke-direct {v1}, Lcom/tl/uic/model/Session;-><init>()V

    sput-object v1, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    .line 324
    sget-object v1, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    sget-object v2, Lcom/tl/uic/TLFCache;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tl/uic/model/Session;->setSessionID(Ljava/lang/String;)V

    .line 325
    sget-object v1, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    sget-wide v2, Lcom/tl/uic/TLFCache;->_currentSessionStartedDate:J

    invoke-virtual {v1, v2, v3}, Lcom/tl/uic/model/Session;->setSessionStartTime(J)V

    .line 327
    sget-object v1, Lcom/tl/uic/TLFCache;->environmentalData:Lcom/tl/uic/EnvironmentalData;

    if-nez v1, :cond_3

    .line 328
    new-instance v1, Lcom/tl/uic/EnvironmentalData;

    invoke-static {}, Lcom/tl/uic/Tealeaf;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tl/uic/EnvironmentalData;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/tl/uic/TLFCache;->environmentalData:Lcom/tl/uic/EnvironmentalData;

    .line 331
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static terminate()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    sput v2, Lcom/tl/uic/TLFCache;->_messageVersion:I

    .line 104
    sget-object v0, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    invoke-virtual {v0}, Lcom/tl/uic/model/Session;->clean()Ljava/lang/Boolean;

    .line 105
    sput-object v1, Lcom/tl/uic/TLFCache;->_currentSession:Lcom/tl/uic/model/Session;

    .line 106
    sput-wide v3, Lcom/tl/uic/TLFCache;->_currentSessionStartedDate:J

    .line 107
    sget-object v0, Lcom/tl/uic/TLFCache;->environmentalData:Lcom/tl/uic/EnvironmentalData;

    invoke-virtual {v0}, Lcom/tl/uic/EnvironmentalData;->terminate()Ljava/lang/Boolean;

    .line 108
    sput-object v1, Lcom/tl/uic/TLFCache;->environmentalData:Lcom/tl/uic/EnvironmentalData;

    .line 109
    sput v2, Lcom/tl/uic/TLFCache;->logLevel:I

    .line 110
    sput-wide v3, Lcom/tl/uic/TLFCache;->currentBufferSize:J

    .line 112
    sget-object v0, Lcom/tl/uic/TLFCache;->_postTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/tl/uic/TLFCache;->_postTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 114
    invoke-static {}, Lcom/tl/uic/TLFCache;->flushPostTask()V

    .line 115
    sput-object v1, Lcom/tl/uic/TLFCache;->_postTimerTask:Ljava/util/TimerTask;

    .line 117
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static timestampFromSession()J
    .locals 4

    .prologue
    .line 437
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/tl/uic/TLFCache;->_currentSessionStartedDate:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
