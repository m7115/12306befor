.class public Lcom/tl/uic/util/PostTask;
.super Landroid/os/AsyncTask;
.source "PostTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x28


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private logResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "sessionId"
    .parameter "secondMessage"
    .parameter "isImage"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 106
    .local v0, logMessage:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 109
    :cond_0
    const-string v1, "PostTask with session id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lt v1, v3, :cond_1

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 117
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    const-string v1, "PostTask image:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    .line 126
    return-void

    .line 120
    :cond_2
    const-string v1, "PostTask JSON:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private sendMessageFormat()Ljava/lang/Boolean;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 41
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 43
    .local v3, result:Ljava/lang/Boolean;
    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 44
    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tl/uic/EnvironmentalData;->getConnectionReceiver()Lcom/tl/uic/util/ConnectionReceiver;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 45
    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tl/uic/EnvironmentalData;->getConnectionReceiver()Lcom/tl/uic/util/ConnectionReceiver;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tl/uic/util/ConnectionReceiver;->isOnline()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 46
    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/tl/uic/TLFCache;->getMessages()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 47
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v4, v3

    .line 93
    .end local v3           #result:Ljava/lang/Boolean;
    .local v4, result:Ljava/lang/Boolean;
    :goto_0
    return-object v4

    .line 51
    .end local v4           #result:Ljava/lang/Boolean;
    .restart local v3       #result:Ljava/lang/Boolean;
    :cond_0
    const-string v7, "CompressPostMessage"

    invoke-static {v7}, Lcom/tl/uic/util/ConfigurationUtil;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 52
    .local v1, isGZipped:Ljava/lang/Boolean;
    const-string v7, "PostMessageUrl"

    invoke-static {v7}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, url:Ljava/lang/String;
    invoke-static {}, Lcom/tl/uic/TLFCache;->messageFormats()Ljava/util/List;

    move-result-object v2

    .line 55
    .local v2, messageFormats:Ljava/util/List;,"Ljava/util/List<Lcom/tl/uic/model/TLFCacheFile;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 56
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 58
    .local v0, currentDate:Ljava/util/Date;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 89
    .end local v0           #currentDate:Ljava/util/Date;
    :cond_2
    const/4 v1, 0x0

    .line 90
    const/4 v6, 0x0

    .line 91
    invoke-static {v2}, Lcom/tl/uic/util/GCUtil;->clean(Ljava/util/List;)Ljava/lang/Boolean;

    .line 92
    const/4 v2, 0x0

    move-object v4, v3

    .line 93
    .end local v3           #result:Ljava/lang/Boolean;
    .restart local v4       #result:Ljava/lang/Boolean;
    goto :goto_0

    .line 58
    .end local v4           #result:Ljava/lang/Boolean;
    .restart local v0       #currentDate:Ljava/util/Date;
    .restart local v3       #result:Ljava/lang/Boolean;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tl/uic/model/TLFCacheFile;

    .line 60
    .local v5, tlfCacheFile:Lcom/tl/uic/model/TLFCacheFile;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->isImage()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 61
    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getDirectory()Ljava/lang/String;

    move-result-object v9

    .line 62
    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    .line 61
    invoke-static {v6, v7, v9, v10}, Lcom/tl/uic/util/HTTPUtil;->sendHttpImagePost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 64
    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getSessionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {p0, v7, v9, v10}, Lcom/tl/uic/util/PostTask;->logResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 65
    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/tl/uic/util/FileUtil;->deleteFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 79
    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    .line 80
    const-string v7, "HasToPersistLocalCache"

    invoke-static {v7}, Lcom/tl/uic/util/ConfigurationUtil;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 81
    const-string v7, "TLFCache"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cache_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v7, v9}, Lcom/tl/uic/util/FileUtil;->saveObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 82
    const-string v7, "Saving to device."

    invoke-static {v7}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    .line 84
    :cond_5
    const-string v7, "Could not send message."

    invoke-static {v7}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 68
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tl/uic/model/MessageFormat;

    if-eqz v7, :cond_4

    .line 69
    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tl/uic/model/MessageFormat;

    invoke-virtual {v7}, Lcom/tl/uic/model/MessageFormat;->getSession()Lcom/tl/uic/model/Session;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 70
    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tl/uic/model/MessageFormat;

    invoke-virtual {v7}, Lcom/tl/uic/model/MessageFormat;->getSession()Lcom/tl/uic/model/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tl/uic/model/Session;->getMessages()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 71
    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tl/uic/model/MessageFormat;

    invoke-virtual {v7}, Lcom/tl/uic/model/MessageFormat;->getSession()Lcom/tl/uic/model/Session;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tl/uic/model/Session;->getMessages()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 72
    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getSessionId()Ljava/lang/String;

    move-result-object v9

    .line 73
    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tl/uic/model/MessageFormat;

    invoke-virtual {v7}, Lcom/tl/uic/model/MessageFormat;->getJSON()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 72
    invoke-static {v6, v9, v7, v1}, Lcom/tl/uic/util/HTTPUtil;->sendHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    .line 75
    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getSessionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/tl/uic/model/TLFCacheFile;->getData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tl/uic/model/MessageFormat;

    invoke-virtual {v7}, Lcom/tl/uic/model/MessageFormat;->getJSON()Lorg/json/JSONObject;

    move-result-object v7

    .line 76
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 75
    invoke-direct {p0, v9, v7, v10}, Lcom/tl/uic/util/PostTask;->logResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "args"

    .prologue
    .line 25
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 28
    .local v1, result:Ljava/lang/Boolean;
    :try_start_0
    invoke-direct {p0}, Lcom/tl/uic/util/PostTask;->sendMessageFormat()Ljava/lang/Boolean;

    move-result-object v1

    .line 29
    invoke-static {}, Lcom/tl/uic/TLFCache;->closePostTask()Ljava/lang/Boolean;

    .line 30
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 34
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tl/uic/util/PostTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final flush()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/tl/uic/util/PostTask;->sendMessageFormat()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
