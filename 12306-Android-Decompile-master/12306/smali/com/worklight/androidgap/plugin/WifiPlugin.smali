.class public Lcom/worklight/androidgap/plugin/WifiPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "WifiPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/WifiPlugin$2;,
        Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;,
        Lcom/worklight/androidgap/plugin/WifiPlugin$Action;
    }
.end annotation


# static fields
.field private static final MACArray:[Ljava/lang/String; = null

.field private static final SSIDArray:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "Wifi"

.field private static final randomGenerator:Ljava/util/Random;


# instance fields
.field private ctx:Landroid/content/Context;

.field wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin;->randomGenerator:Ljava/util/Random;

    .line 74
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "foo"

    aput-object v1, v0, v2

    const-string v1, "spam"

    aput-object v1, v0, v3

    const-string v1, "last"

    aput-object v1, v0, v4

    sput-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin;->SSIDArray:[Ljava/lang/String;

    .line 75
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "egg"

    aput-object v1, v0, v2

    const-string v1, "bar"

    aput-object v1, v0, v3

    const-string v1, "least"

    aput-object v1, v0, v4

    sput-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin;->MACArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/worklight/androidgap/plugin/WifiPlugin;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WifiPlugin;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/worklight/androidgap/plugin/WifiPlugin;->isEmulator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/util/Random;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin;->randomGenerator:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin;->SSIDArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin;->MACArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/ScanResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/worklight/androidgap/plugin/WifiPlugin;->createScanResult(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/worklight/androidgap/plugin/WifiPlugin;Ljava/lang/Iterable;)Lorg/json/JSONArray;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/WifiPlugin;->resultToJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private static createScanResult(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/ScanResult;
    .locals 6
    .parameter "ssid"
    .parameter "mac"
    .parameter "level"

    .prologue
    .line 275
    :try_start_0
    const-class v3, Landroid/net/wifi/ScanResult;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 277
    .local v0, ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/net/wifi/ScanResult;>;"
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 279
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "foo"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "bar"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, ""

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/16 v5, -0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 280
    .local v2, sr:Landroid/net/wifi/ScanResult;
    iput-object p0, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 281
    iput-object p1, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 282
    iput p2, v2, Landroid/net/wifi/ScanResult;->level:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    return-object v2

    .line 284
    .end local v0           #ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Landroid/net/wifi/ScanResult;>;"
    .end local v2           #sr:Landroid/net/wifi/ScanResult;
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private getCurrentSsid(Landroid/content/Context;)Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    .line 123
    const/4 v5, 0x0

    .line 124
    .local v5, ssid:Ljava/lang/String;
    const/4 v3, 0x0

    .line 125
    .local v3, mac:Ljava/lang/String;
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 126
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 127
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    iget-object v6, p0, Lcom/worklight/androidgap/plugin/WifiPlugin;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 129
    .local v1, connectionInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 130
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    .line 132
    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 135
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 136
    .local v2, length:I
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 138
    .end local v2           #length:I
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    .line 142
    .end local v1           #connectionInfo:Landroid/net/wifi/WifiInfo;
    :cond_1
    new-instance v6, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;

    invoke-direct {v6, p0, v5, v3}, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;-><init>(Lcom/worklight/androidgap/plugin/WifiPlugin;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private static getStrength(Landroid/net/wifi/ScanResult;)I
    .locals 8
    .parameter "sr"

    .prologue
    const/16 v5, 0x64

    .line 246
    invoke-static {}, Lcom/worklight/androidgap/plugin/WifiPlugin;->isEmulator()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 248
    iget v5, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 266
    :cond_0
    :goto_0
    return v5

    .line 251
    :cond_1
    const/16 v1, -0x64

    .line 252
    .local v1, MIN_RSSI:I
    const/16 v0, -0x37

    .line 253
    .local v0, MAX_RSSI:I
    const/16 v3, 0x65

    .line 255
    .local v3, levels:I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_2

    .line 256
    iget v5, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v5, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v5

    goto :goto_0

    .line 259
    :cond_2
    iget v6, p0, Landroid/net/wifi/ScanResult;->level:I

    if-gt v6, v1, :cond_3

    .line 260
    const/4 v5, 0x0

    goto :goto_0

    .line 261
    :cond_3
    iget v6, p0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v6, v0, :cond_0

    .line 264
    const/16 v6, 0x2d

    int-to-float v2, v6

    .line 265
    .local v2, inputRange:F
    int-to-float v4, v5

    .line 266
    .local v4, outputRange:F
    iget v5, p0, Landroid/net/wifi/ScanResult;->level:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v5, v4

    div-float/2addr v5, v2

    float-to-int v5, v5

    goto :goto_0
.end method

.method private static isEmulator()Z
    .locals 2

    .prologue
    .line 293
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk_x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resultToJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, scans:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/net/wifi/ScanResult;>;"
    iget-object v8, p0, Lcom/worklight/androidgap/plugin/WifiPlugin;->ctx:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/worklight/androidgap/plugin/WifiPlugin;->getCurrentSsid(Landroid/content/Context;)Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;

    move-result-object v2

    .line 221
    .local v2, connectionInfo:Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;
    invoke-virtual {v2}, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, connectedSSID:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->getMAC()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, connectedMAC:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 226
    .local v6, result:Lorg/json/JSONArray;
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 227
    .local v7, scan:Landroid/net/wifi/ScanResult;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 229
    .local v5, jsonScan:Lorg/json/JSONObject;
    const-string v8, "MAC"

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v8, "SSID"

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v8, "strength"

    invoke-static {v7}, Lcom/worklight/androidgap/plugin/WifiPlugin;->getStrength(Landroid/net/wifi/ScanResult;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    iget-object v8, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 235
    const-string v8, "connected"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 237
    :cond_0
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #jsonScan:Lorg/json/JSONObject;
    .end local v7           #scan:Landroid/net/wifi/ScanResult;
    :catch_0
    move-exception v3

    .line 241
    .local v3, e:Lorg/json/JSONException;
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 239
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    return-object v6
.end method

.method private scanWifi(Lorg/apache/cordova/api/CallbackContext;)V
    .locals 7
    .parameter "callbackContext"

    .prologue
    .line 146
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WifiPlugin;->ctx:Landroid/content/Context;

    new-instance v4, Lcom/worklight/androidgap/plugin/WifiPlugin$1;

    invoke-direct {v4, p0, p1}, Lcom/worklight/androidgap/plugin/WifiPlugin$1;-><init>(Lcom/worklight/androidgap/plugin/WifiPlugin;Lorg/apache/cordova/api/CallbackContext;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    invoke-static {}, Lcom/worklight/androidgap/plugin/WifiPlugin;->isEmulator()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WifiPlugin;->ctx:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 211
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WifiPlugin;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 189
    const-string v3, "Wifi"

    const-string v4, "failed to start wifi scan, wifi is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/apache/cordova/api/CallbackContext;->error(I)V

    goto :goto_0

    .line 195
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WifiPlugin;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v2

    .line 196
    .local v2, result:Z
    if-nez v2, :cond_0

    .line 198
    const-string v3, "Wifi"

    const-string v4, "failed to start wifi scan"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lorg/apache/cordova/api/CallbackContext;->error(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v2           #result:Z
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Wifi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiPlugin : Error initiating scan, reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/apache/cordova/api/CallbackContext;->error(I)V

    goto :goto_0
.end method

.method private static toAllCaps(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "camelcase"

    .prologue
    .line 83
    const-string v1, "[A-Z]?[a-z]*"

    .line 84
    .local v1, pattern:Ljava/lang/String;
    const-string v3, "[A-Z]?[a-z]*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 85
    .local v0, m:Ljava/util/regex/Matcher;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v2, sb:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 6
    .parameter "action"
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WifiPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/worklight/androidgap/plugin/WifiPlugin;->ctx:Landroid/content/Context;

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WifiPlugin;->ctx:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/worklight/androidgap/plugin/WifiPlugin;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 102
    invoke-static {p1}, Lcom/worklight/androidgap/plugin/WifiPlugin;->toAllCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;->valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

    move-result-object v0

    .line 103
    .local v0, act:Lcom/worklight/androidgap/plugin/WifiPlugin$Action;
    const-string v2, "Wifi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiPlugin called with action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v2, Lcom/worklight/androidgap/plugin/WifiPlugin$2;->$SwitchMap$com$worklight$androidgap$plugin$WifiPlugin$Action:[I

    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 113
    .end local v0           #act:Lcom/worklight/androidgap/plugin/WifiPlugin$Action;
    :goto_0
    return v2

    .line 106
    .restart local v0       #act:Lcom/worklight/androidgap/plugin/WifiPlugin$Action;
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/worklight/androidgap/plugin/WifiPlugin;->scanWifi(Lorg/apache/cordova/api/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/4 v2, 0x1

    goto :goto_0

    .line 111
    .end local v0           #act:Lcom/worklight/androidgap/plugin/WifiPlugin$Action;
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Wifi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error initializing WIFI scanning, reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 113
    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
