.class public final Lcom/tl/uic/util/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# static fields
.field private static _messageTypes:Ljava/lang/String;

.field private static _messageTypesSet:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile _myInstance:Lcom/tl/uic/util/JsonUtil;

.field private static _pattern:Ljava/lang/String;

.field private static final pattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tl/uic/util/JsonUtil;->_messageTypesSet:Ljava/util/Hashtable;

    .line 23
    const-string v0, "type(\"|\'):[\\d]+"

    sput-object v0, Lcom/tl/uic/util/JsonUtil;->_pattern:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/tl/uic/util/JsonUtil;->_pattern:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tl/uic/util/JsonUtil;->pattern:Ljava/util/regex/Pattern;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static getAddMessageTypeHeader()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    const-string v0, "AddMessageTypeHeader"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static getFilterMessageTypes()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 76
    const-string v0, "FilterMessageTypes"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getHashValues(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 56
    .local v2, json:Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v3, v2

    .line 69
    .end local v2           #json:Lorg/json/JSONObject;
    .local v3, json:Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 60
    .end local v3           #json:Lorg/json/JSONObject;
    .restart local v2       #json:Lorg/json/JSONObject;
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    .end local v2           #json:Lorg/json/JSONObject;
    .restart local v3       #json:Lorg/json/JSONObject;
    :try_start_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v2, v3

    .end local v3           #json:Lorg/json/JSONObject;
    .restart local v2       #json:Lorg/json/JSONObject;
    :goto_2
    move-object v3, v2

    .line 69
    .end local v2           #json:Lorg/json/JSONObject;
    .restart local v3       #json:Lorg/json/JSONObject;
    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/tl/uic/util/ValueUtil;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 65
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 66
    .end local v3           #json:Lorg/json/JSONObject;
    .local v0, e:Lorg/json/JSONException;
    .restart local v2       #json:Lorg/json/JSONObject;
    :goto_3
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 65
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public static getInstance()Lcom/tl/uic/util/JsonUtil;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/tl/uic/util/JsonUtil;->_myInstance:Lcom/tl/uic/util/JsonUtil;

    if-nez v0, :cond_0

    .line 38
    const-class v1, Lcom/tl/uic/util/JsonUtil;

    monitor-enter v1

    .line 39
    :try_start_0
    new-instance v0, Lcom/tl/uic/util/JsonUtil;

    invoke-direct {v0}, Lcom/tl/uic/util/JsonUtil;-><init>()V

    sput-object v0, Lcom/tl/uic/util/JsonUtil;->_myInstance:Lcom/tl/uic/util/JsonUtil;

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    sget-object v0, Lcom/tl/uic/util/JsonUtil;->_myInstance:Lcom/tl/uic/util/JsonUtil;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static testMessageType(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 9
    .parameter "message"
    .parameter "fromPost"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    if-nez p0, :cond_0

    .line 95
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 123
    .end local p0
    :goto_0
    return-object v5

    .line 98
    .restart local p0
    :cond_0
    invoke-static {}, Lcom/tl/uic/util/JsonUtil;->getFilterMessageTypes()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    :cond_1
    invoke-static {}, Lcom/tl/uic/util/JsonUtil;->getAddMessageTypeHeader()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 100
    :cond_2
    sget-object v5, Lcom/tl/uic/util/JsonUtil;->_messageTypes:Ljava/lang/String;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/tl/uic/util/JsonUtil;->_messageTypes:Ljava/lang/String;

    const-string v6, "MessageTypes"

    invoke-static {v6}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 101
    :cond_3
    const-string v5, "MessageTypes"

    invoke-static {v5}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/tl/uic/util/JsonUtil;->_messageTypes:Ljava/lang/String;

    .line 102
    sget-object v5, Lcom/tl/uic/util/JsonUtil;->_messageTypesSet:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 103
    sget-object v5, Lcom/tl/uic/util/JsonUtil;->_messageTypes:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, mtypes:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v3

    if-lt v0, v5, :cond_5

    .line 110
    .end local v0           #i:I
    .end local v3           #mtypes:[Ljava/lang/String;
    :cond_4
    instance-of v5, p0, Lcom/tl/uic/model/ClientMessageHeader;

    if-eqz v5, :cond_6

    sget-object v6, Lcom/tl/uic/util/JsonUtil;->_messageTypesSet:Ljava/util/Hashtable;

    move-object v5, p0

    check-cast v5, Lcom/tl/uic/model/ClientMessageHeader;

    invoke-virtual {v5}, Lcom/tl/uic/model/ClientMessageHeader;->getMessageType()Lcom/tl/uic/model/MessageType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tl/uic/model/MessageType;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 111
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 105
    .restart local v0       #i:I
    .restart local v3       #mtypes:[Ljava/lang/String;
    :cond_5
    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 106
    .local v1, integer:Ljava/lang/Integer;
    sget-object v5, Lcom/tl/uic/util/JsonUtil;->_messageTypesSet:Ljava/util/Hashtable;

    invoke-virtual {v5, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    .end local v0           #i:I
    .end local v1           #integer:Ljava/lang/Integer;
    .end local v3           #mtypes:[Ljava/lang/String;
    :cond_6
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 113
    sget-object v5, Lcom/tl/uic/util/JsonUtil;->pattern:Ljava/util/regex/Pattern;

    check-cast p0, Ljava/lang/CharSequence;

    .end local p0
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 114
    .local v2, matcher:Ljava/util/regex/Matcher;
    :cond_7
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_8

    .line 120
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0

    .line 115
    :cond_8
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, type:[Ljava/lang/String;
    sget-object v5, Lcom/tl/uic/util/JsonUtil;->_messageTypesSet:Ljava/util/Hashtable;

    aget-object v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 117
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0

    .line 123
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v4           #type:[Ljava/lang/String;
    .restart local p0
    :cond_9
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0
.end method
