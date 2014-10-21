.class public final Lcom/tl/uic/util/ConfigurationUtil;
.super Ljava/lang/Object;
.source "ConfigurationUtil.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final EXCEPTION_LOG_TITLE:Ljava/lang/String; = "Key was "

.field private static final MILLISECOND_CONVERTER:I = 0x3e8

.field private static final MINIMUM_BOOLEAN_SIZE:I = 0x3

.field private static volatile _myInstance:Lcom/tl/uic/util/ConfigurationUtil;

.field private static application:Landroid/app/Application;

.field private static configurableItems:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .parameter "key"

    .prologue
    .line 149
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 152
    .local v0, booleanValue:Ljava/lang/Boolean;
    :try_start_0
    invoke-static {p0}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    .line 154
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Key was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static getConfigurationSettings(Ljava/lang/String;)Ljava/util/Properties;
    .locals 7
    .parameter "propertiesFileName"

    .prologue
    .line 169
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 171
    .local v3, properties:Ljava/util/Properties;
    sget-object v5, Lcom/tl/uic/util/ConfigurationUtil;->application:Landroid/app/Application;

    if-nez v5, :cond_0

    .line 185
    :goto_0
    return-object v3

    .line 177
    :cond_0
    :try_start_0
    sget-object v5, Lcom/tl/uic/util/ConfigurationUtil;->application:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 178
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 179
    .local v0, assetManager:Landroid/content/res/AssetManager;
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 180
    .local v2, inputStream:Ljava/io/InputStream;
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v0           #assetManager:Landroid/content/res/AssetManager;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v4           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 182
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Trying to load properties file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static getInstance()Lcom/tl/uic/util/ConfigurationUtil;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/tl/uic/util/ConfigurationUtil;->_myInstance:Lcom/tl/uic/util/ConfigurationUtil;

    if-nez v0, :cond_0

    .line 39
    const-class v1, Lcom/tl/uic/util/ConfigurationUtil;

    monitor-enter v1

    .line 40
    :try_start_0
    new-instance v0, Lcom/tl/uic/util/ConfigurationUtil;

    invoke-direct {v0}, Lcom/tl/uic/util/ConfigurationUtil;-><init>()V

    sput-object v0, Lcom/tl/uic/util/ConfigurationUtil;->_myInstance:Lcom/tl/uic/util/ConfigurationUtil;

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    sget-object v0, Lcom/tl/uic/util/ConfigurationUtil;->_myInstance:Lcom/tl/uic/util/ConfigurationUtil;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    .line 101
    const/4 v1, -0x1

    .line 104
    .local v1, intValue:I
    :try_start_0
    invoke-static {p0}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Key was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static getIntMS(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 90
    invoke-static {p0}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public static getLong(Ljava/lang/String;)J
    .locals 6
    .parameter "key"

    .prologue
    .line 130
    const-wide/16 v1, -0x1

    .line 133
    .local v1, longValue:J
    :try_start_0
    invoke-static {p0}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 138
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Key was "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static getLongMS(Ljava/lang/String;)J
    .locals 4
    .parameter "key"

    .prologue
    .line 119
    invoke-static {p0}, Lcom/tl/uic/util/ConfigurationUtil;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 73
    const-string v1, ""

    .line 76
    .local v1, value:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/tl/uic/util/ConfigurationUtil;->configurableItems:Ljava/util/Properties;

    const-string v3, ""

    invoke-virtual {v2, p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Key was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 52
    sput-object p0, Lcom/tl/uic/util/ConfigurationUtil;->application:Landroid/app/Application;

    .line 53
    const-string v0, "TLFConfigurableItems.properties"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getConfigurationSettings(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    sput-object v0, Lcom/tl/uic/util/ConfigurationUtil;->configurableItems:Ljava/util/Properties;

    .line 55
    sget-object v0, Lcom/tl/uic/util/ConfigurationUtil;->configurableItems:Ljava/util/Properties;

    if-eqz v0, :cond_0

    .line 56
    const-string v0, "DisplayLogging"

    invoke-static {v0}, Lcom/tl/uic/util/ConfigurationUtil;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->setIsDEBUG(Z)V

    .line 57
    sget-object v0, Lcom/tl/uic/util/ConfigurationUtil;->configurableItems:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    .line 60
    :cond_0
    sget-object v0, Lcom/tl/uic/util/ConfigurationUtil;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 61
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 62
    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 197
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 199
    .local v0, hasUpdated:Ljava/lang/Boolean;
    sget-object v1, Lcom/tl/uic/util/ConfigurationUtil;->configurableItems:Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    sget-object v1, Lcom/tl/uic/util/ConfigurationUtil;->configurableItems:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 204
    :cond_0
    return-object v0
.end method
