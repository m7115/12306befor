.class public Lcom/tl/uic/EnvironmentalData;
.super Ljava/lang/Object;
.source "EnvironmentalData.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$tl$uic$model$StorageType:[I = null

.field private static final IP_BIT_16:I = 0x10

.field private static final IP_BIT_24:I = 0x18

.field private static final IP_BIT_8:I = 0x8

.field private static final SET_BITS_TO_CHAR:I = 0xff

.field private static _clientStateTask:Lcom/tl/uic/util/ClientStateTask;


# instance fields
.field private _application:Landroid/app/Application;

.field private applicationName:Ljava/lang/String;

.field private applicationPackageName:Ljava/lang/String;

.field private applicationVersion:Ljava/lang/String;

.field private batteryReceiver:Lcom/tl/uic/util/BatteryReceiver;

.field private clientStateTimerTask:Ljava/util/TimerTask;

.field private connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

.field private prevClientState:Lcom/tl/uic/model/ClientState;

.field private screenReceiver:Lcom/tl/uic/util/ScreenReceiver;


# direct methods
.method static synthetic $SWITCH_TABLE$com$tl$uic$model$StorageType()[I
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/tl/uic/EnvironmentalData;->$SWITCH_TABLE$com$tl$uic$model$StorageType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tl/uic/model/StorageType;->values()[Lcom/tl/uic/model/StorageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tl/uic/model/StorageType;->PHONE_FREE:Lcom/tl/uic/model/StorageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tl/uic/model/StorageType;->PHONE_TOTAL:Lcom/tl/uic/model/StorageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tl/uic/model/StorageType;->PHONE_USED:Lcom/tl/uic/model/StorageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/tl/uic/model/StorageType;->SD_CARD_FREE:Lcom/tl/uic/model/StorageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/tl/uic/model/StorageType;->SD_CARD_TOTAL:Lcom/tl/uic/model/StorageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/tl/uic/model/StorageType;->SD_CARD_USED:Lcom/tl/uic/model/StorageType;

    invoke-virtual {v1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/tl/uic/EnvironmentalData;->$SWITCH_TABLE$com$tl$uic$model$StorageType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .parameter "application"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    .line 71
    invoke-direct {p0}, Lcom/tl/uic/EnvironmentalData;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$1()Lcom/tl/uic/util/ClientStateTask;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/tl/uic/EnvironmentalData;->_clientStateTask:Lcom/tl/uic/util/ClientStateTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tl/uic/util/ClientStateTask;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    sput-object p0, Lcom/tl/uic/EnvironmentalData;->_clientStateTask:Lcom/tl/uic/util/ClientStateTask;

    return-void
.end method

.method public static final closeClientStateTask()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 651
    sget-object v1, Lcom/tl/uic/EnvironmentalData;->_clientStateTask:Lcom/tl/uic/util/ClientStateTask;

    monitor-enter v1

    .line 652
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/tl/uic/EnvironmentalData;->_clientStateTask:Lcom/tl/uic/util/ClientStateTask;

    .line 651
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 651
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->enableBatteryManager()V

    .line 79
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->enableConnectionListener()V

    .line 80
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->getApplicationData()V

    .line 81
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->enableClientStateTask()V

    .line 82
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->enableScreenReceiver()V

    .line 83
    return-void
.end method

.method private isNotApplicationContextNull()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 554
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private isNotApplicationResourcesNull()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final createClientEnvironment()Lcom/tl/uic/model/ClientEnvironment;
    .locals 5

    .prologue
    .line 213
    new-instance v1, Lcom/tl/uic/model/ClientEnvironment;

    invoke-direct {v1}, Lcom/tl/uic/model/ClientEnvironment;-><init>()V

    .line 214
    .local v1, clientEnvironment:Lcom/tl/uic/model/ClientEnvironment;
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tl/uic/model/ClientEnvironment;->setOsVersion(Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    if-nez v3, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->hasClientStateChanged()Ljava/lang/Boolean;

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    invoke-virtual {v3}, Lcom/tl/uic/util/ScreenReceiver;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tl/uic/model/ClientEnvironment;->setHeight(I)V

    .line 220
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    invoke-virtual {v3}, Lcom/tl/uic/util/ScreenReceiver;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tl/uic/model/ClientEnvironment;->setWidth(I)V

    .line 222
    new-instance v2, Lcom/tl/uic/model/MobileEnvironment;

    invoke-direct {v2}, Lcom/tl/uic/model/MobileEnvironment;-><init>()V

    .line 223
    .local v2, mobileEnvironment:Lcom/tl/uic/model/MobileEnvironment;
    sget-object v3, Lcom/tl/uic/model/StorageType;->PHONE_TOTAL:Lcom/tl/uic/model/StorageType;

    invoke-virtual {p0, v3}, Lcom/tl/uic/EnvironmentalData;->getStorage(Lcom/tl/uic/model/StorageType;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tl/uic/model/MobileEnvironment;->setTotalStorage(J)V

    .line 224
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->getAvailableMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tl/uic/model/MobileEnvironment;->setTotalMemory(J)V

    .line 225
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileEnvironment;->setLocale(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileEnvironment;->setLanguage(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileEnvironment;->setManufacturer(Ljava/lang/String;)V

    .line 228
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileEnvironment;->setDeviceModel(Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->applicationName:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileEnvironment;->setAppName(Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->applicationVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileEnvironment;->setAppVersion(Ljava/lang/String;)V

    .line 231
    sget-object v3, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileEnvironment;->setUserID(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->getOrientationType()Lcom/tl/uic/model/OrientationType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileEnvironment;->setOrientationType(Lcom/tl/uic/model/OrientationType;)V

    .line 234
    new-instance v0, Lcom/tl/uic/model/AndroidArray;

    invoke-direct {v0}, Lcom/tl/uic/model/AndroidArray;-><init>()V

    .line 235
    .local v0, androidArray:Lcom/tl/uic/model/AndroidArray;
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tl/uic/model/AndroidArray;->setBrand(Ljava/lang/String;)V

    .line 236
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tl/uic/model/AndroidArray;->setFingerPrint(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->getKeyboardType()Lcom/tl/uic/model/KeyboardType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tl/uic/model/AndroidArray;->setKeyboardType(Lcom/tl/uic/model/KeyboardType;)V

    .line 239
    invoke-virtual {v2, v0}, Lcom/tl/uic/model/MobileEnvironment;->setAndroidArray(Lcom/tl/uic/model/AndroidArray;)V

    .line 240
    invoke-virtual {v1, v2}, Lcom/tl/uic/model/ClientEnvironment;->setMobileEnvironment(Lcom/tl/uic/model/MobileEnvironment;)V

    .line 242
    return-object v1

    .line 229
    .end local v0           #androidArray:Lcom/tl/uic/model/AndroidArray;
    :cond_1
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->applicationName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final createClientState()Lcom/tl/uic/model/ClientState;
    .locals 5

    .prologue
    .line 271
    new-instance v1, Lcom/tl/uic/model/ClientState;

    invoke-direct {v1}, Lcom/tl/uic/model/ClientState;-><init>()V

    .line 273
    .local v1, clientState:Lcom/tl/uic/model/ClientState;
    new-instance v2, Lcom/tl/uic/model/MobileState;

    invoke-direct {v2}, Lcom/tl/uic/model/MobileState;-><init>()V

    .line 274
    .local v2, mobileState:Lcom/tl/uic/model/MobileState;
    sget-object v3, Lcom/tl/uic/model/StorageType;->PHONE_FREE:Lcom/tl/uic/model/StorageType;

    invoke-virtual {p0, v3}, Lcom/tl/uic/EnvironmentalData;->getStorage(Lcom/tl/uic/model/StorageType;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tl/uic/model/MobileState;->setFreeStorage(J)V

    .line 275
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->getAvailableMemory()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tl/uic/model/MobileState;->setFreeMemory(J)V

    .line 277
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->batteryReceiver:Lcom/tl/uic/util/BatteryReceiver;

    if-eqz v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->batteryReceiver:Lcom/tl/uic/util/BatteryReceiver;

    invoke-virtual {v3}, Lcom/tl/uic/util/BatteryReceiver;->getValue()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/tl/uic/model/MobileState;->setBattery(D)V

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileState;->setIp(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileState;->setCarrier(Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    if-eqz v3, :cond_1

    .line 285
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    invoke-virtual {v3}, Lcom/tl/uic/util/ScreenReceiver;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileState;->setOrientation(I)V

    .line 288
    :cond_1
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

    if-eqz v3, :cond_2

    .line 289
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

    invoke-virtual {v3}, Lcom/tl/uic/util/ConnectionReceiver;->getConnectionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileState;->setConnectionType(Ljava/lang/String;)V

    .line 290
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

    invoke-virtual {v3}, Lcom/tl/uic/util/ConnectionReceiver;->getNetworkReachability()Lcom/tl/uic/model/ReachabilityType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/MobileState;->setNetworkReachability(Lcom/tl/uic/model/ReachabilityType;)V

    .line 293
    :cond_2
    new-instance v0, Lcom/tl/uic/model/AndroidState;

    invoke-direct {v0}, Lcom/tl/uic/model/AndroidState;-><init>()V

    .line 294
    .local v0, androidState:Lcom/tl/uic/model/AndroidState;
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->getKeyboardStateType()Lcom/tl/uic/model/KeyboardStateType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tl/uic/model/AndroidState;->setKeyboardStateType(Lcom/tl/uic/model/KeyboardStateType;)V

    .line 295
    invoke-virtual {v2, v0}, Lcom/tl/uic/model/MobileState;->setAndroidState(Lcom/tl/uic/model/AndroidState;)V

    .line 296
    invoke-virtual {v1, v2}, Lcom/tl/uic/model/ClientState;->setMobileState(Lcom/tl/uic/model/MobileState;)V

    .line 298
    return-object v1
.end method

.method public final disableBatteryManager()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->batteryReceiver:Lcom/tl/uic/util/BatteryReceiver;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tl/uic/EnvironmentalData;->isNotApplicationContextNull()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tl/uic/EnvironmentalData;->batteryReceiver:Lcom/tl/uic/util/BatteryReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tl/uic/EnvironmentalData;->batteryReceiver:Lcom/tl/uic/util/BatteryReceiver;

    .line 576
    :cond_0
    return-void
.end method

.method public final disableClientStateTask()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->clientStateTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->clientStateTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tl/uic/EnvironmentalData;->clientStateTimerTask:Ljava/util/TimerTask;

    .line 616
    :cond_0
    return-void
.end method

.method public final disableConnectionListener()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tl/uic/EnvironmentalData;->isNotApplicationContextNull()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tl/uic/EnvironmentalData;->connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tl/uic/EnvironmentalData;->connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

    .line 597
    :cond_0
    return-void
.end method

.method public final disableScreenReceiver()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tl/uic/EnvironmentalData;->isNotApplicationContextNull()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    .line 676
    :cond_0
    return-void
.end method

.method public final enableBatteryManager()V
    .locals 3

    .prologue
    .line 561
    iget-object v1, p0, Lcom/tl/uic/EnvironmentalData;->batteryReceiver:Lcom/tl/uic/util/BatteryReceiver;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/tl/uic/EnvironmentalData;->isNotApplicationContextNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    new-instance v1, Lcom/tl/uic/util/BatteryReceiver;

    invoke-direct {v1}, Lcom/tl/uic/util/BatteryReceiver;-><init>()V

    iput-object v1, p0, Lcom/tl/uic/EnvironmentalData;->batteryReceiver:Lcom/tl/uic/util/BatteryReceiver;

    .line 563
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 564
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tl/uic/EnvironmentalData;->batteryReceiver:Lcom/tl/uic/util/BatteryReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 566
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public final enableClientStateTask()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->clientStateTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->setupClientStateTask()V

    .line 606
    :cond_0
    return-void
.end method

.method public final enableConnectionListener()V
    .locals 3

    .prologue
    .line 582
    iget-object v1, p0, Lcom/tl/uic/EnvironmentalData;->connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/tl/uic/EnvironmentalData;->isNotApplicationContextNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    new-instance v1, Lcom/tl/uic/util/ConnectionReceiver;

    invoke-direct {v1}, Lcom/tl/uic/util/ConnectionReceiver;-><init>()V

    iput-object v1, p0, Lcom/tl/uic/EnvironmentalData;->connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

    .line 584
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tl/uic/EnvironmentalData;->connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 587
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public final enableScreenReceiver()V
    .locals 3

    .prologue
    .line 661
    iget-object v1, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/tl/uic/EnvironmentalData;->isNotApplicationContextNull()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    new-instance v1, Lcom/tl/uic/util/ScreenReceiver;

    invoke-direct {v1}, Lcom/tl/uic/util/ScreenReceiver;-><init>()V

    iput-object v1, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    .line 663
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 666
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public final getApplicationData()V
    .locals 5

    .prologue
    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 369
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 370
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/tl/uic/EnvironmentalData;->applicationName:Ljava/lang/String;

    .line 371
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/tl/uic/EnvironmentalData;->applicationVersion:Ljava/lang/String;

    .line 372
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/tl/uic/EnvironmentalData;->applicationPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->applicationPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->applicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvailableMemory()J
    .locals 7

    .prologue
    .line 305
    const-wide/16 v1, 0x0

    .line 307
    .local v1, availableMemoryBytes:J
    :try_start_0
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 308
    .local v4, memoryInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v5, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 309
    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 308
    check-cast v0, Landroid/app/ActivityManager;

    .line 310
    .local v0, activityManager:Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 313
    :cond_0
    iget-wide v1, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v4           #memoryInfo:Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    return-wide v1

    .line 314
    :catch_0
    move-exception v3

    .line 315
    .local v3, e:Ljava/lang/Exception;
    invoke-static {v3}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getBatteryReceiver()Lcom/tl/uic/util/BatteryReceiver;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->batteryReceiver:Lcom/tl/uic/util/BatteryReceiver;

    return-object v0
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 5

    .prologue
    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, carrierName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 387
    const-string v4, "phone"

    .line 386
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 388
    .local v2, manager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 394
    .end local v2           #manager:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v0

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getClientStateTimerTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->clientStateTimerTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method public final getConnectionReceiver()Lcom/tl/uic/util/ConnectionReceiver;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

    return-object v0
.end method

.method public final getHttpXTealeafProperty()Ljava/lang/String;
    .locals 5

    .prologue
    .line 185
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->applicationVersion:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 186
    .local v0, appVersions:[Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v1, applicationVersionMajorMinor:Ljava/lang/StringBuilder;
    if-nez v0, :cond_2

    const-string v3, ""

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 189
    :cond_0
    const-string v3, ""

    .line 188
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v2, value:Ljava/lang/StringBuilder;
    const-string v3, "TLT_BROWSER="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->applicationName:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, ""

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v3, "Native;TLT_BROWSER_VERSION="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v3, ";TLT_BRAND="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v3, ";TLT_MODEL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v3, ";TLT_SCREEN_HEIGHT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    invoke-virtual {v3}, Lcom/tl/uic/util/ScreenReceiver;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    const-string v3, ";TLT_SCREEN_WIDTH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    invoke-virtual {v3}, Lcom/tl/uic/util/ScreenReceiver;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 185
    .end local v0           #appVersions:[Ljava/lang/String;
    .end local v1           #applicationVersionMajorMinor:Ljava/lang/StringBuilder;
    .end local v2           #value:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->applicationVersion:Ljava/lang/String;

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 187
    .restart local v0       #appVersions:[Ljava/lang/String;
    .restart local v1       #applicationVersionMajorMinor:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v0, v3

    goto :goto_1

    .line 189
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 193
    .restart local v2       #value:Ljava/lang/StringBuilder;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tl/uic/EnvironmentalData;->applicationName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public final getIpAddress()Ljava/lang/String;
    .locals 10

    .prologue
    .line 404
    const-string v1, ""

    .line 406
    .local v1, ip:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 407
    const-string v6, "wifi"

    .line 406
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 408
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 409
    .local v3, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    .line 410
    .local v2, ipAddress:I
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d.%d.%d.%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 411
    and-int/lit16 v9, v2, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 412
    shr-int/lit8 v9, v2, 0x8

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 413
    shr-int/lit8 v9, v2, 0x10

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 414
    shr-int/lit8 v9, v2, 0x18

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 410
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 418
    .end local v2           #ipAddress:I
    .end local v3           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getKeyboardStateType()Lcom/tl/uic/model/KeyboardStateType;
    .locals 4

    .prologue
    .line 492
    sget-object v2, Lcom/tl/uic/model/KeyboardStateType;->UNDEFINED:Lcom/tl/uic/model/KeyboardStateType;

    .line 495
    .local v2, keyboardStateType:Lcom/tl/uic/model/KeyboardStateType;
    :try_start_0
    invoke-direct {p0}, Lcom/tl/uic/EnvironmentalData;->isNotApplicationResourcesNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 498
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v3, :pswitch_data_0

    .line 512
    .end local v0           #configuration:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-object v2

    .line 500
    .restart local v0       #configuration:Landroid/content/res/Configuration;
    :pswitch_0
    sget-object v2, Lcom/tl/uic/model/KeyboardStateType;->HIDDEN_FALSE:Lcom/tl/uic/model/KeyboardStateType;

    .line 501
    goto :goto_0

    .line 503
    :pswitch_1
    sget-object v2, Lcom/tl/uic/model/KeyboardStateType;->HIDDEN_TRUE:Lcom/tl/uic/model/KeyboardStateType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    goto :goto_0

    .line 509
    .end local v0           #configuration:Landroid/content/res/Configuration;
    :catch_0
    move-exception v1

    .line 510
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getKeyboardType()Lcom/tl/uic/model/KeyboardType;
    .locals 4

    .prologue
    .line 460
    sget-object v2, Lcom/tl/uic/model/KeyboardType;->UNDEFINED:Lcom/tl/uic/model/KeyboardType;

    .line 463
    .local v2, keyboardType:Lcom/tl/uic/model/KeyboardType;
    :try_start_0
    invoke-direct {p0}, Lcom/tl/uic/EnvironmentalData;->isNotApplicationResourcesNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 466
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v3, :pswitch_data_0

    .line 483
    .end local v0           #configuration:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-object v2

    .line 468
    .restart local v0       #configuration:Landroid/content/res/Configuration;
    :pswitch_0
    sget-object v2, Lcom/tl/uic/model/KeyboardType;->NO_KEYS:Lcom/tl/uic/model/KeyboardType;

    .line 469
    goto :goto_0

    .line 471
    :pswitch_1
    sget-object v2, Lcom/tl/uic/model/KeyboardType;->QWERTY:Lcom/tl/uic/model/KeyboardType;

    .line 472
    goto :goto_0

    .line 474
    :pswitch_2
    sget-object v2, Lcom/tl/uic/model/KeyboardType;->TWELVE_KEYS:Lcom/tl/uic/model/KeyboardType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    goto :goto_0

    .line 480
    .end local v0           #configuration:Landroid/content/res/Configuration;
    :catch_0
    move-exception v1

    .line 481
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getManufacturer()Ljava/lang/String;
    .locals 7

    .prologue
    .line 427
    const-string v3, ""

    .line 430
    .local v3, myManufacturer:Ljava/lang/String;
    :try_start_0
    const-string v5, "1.5"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v3

    .line 441
    .end local v3           #myManufacturer:Ljava/lang/String;
    .local v4, myManufacturer:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 434
    .end local v4           #myManufacturer:Ljava/lang/String;
    .restart local v3       #myManufacturer:Ljava/lang/String;
    :cond_0
    const-class v5, Landroid/os/Build;

    const-string v6, "MANUFACTURER"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 435
    .local v2, manufacturer:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 436
    const-class v5, Landroid/os/Build;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #manufacturer:Ljava/lang/reflect/Field;
    :goto_1
    move-object v4, v3

    .line 441
    .end local v3           #myManufacturer:Ljava/lang/String;
    .restart local v4       #myManufacturer:Ljava/lang/String;
    goto :goto_0

    .line 438
    .end local v4           #myManufacturer:Ljava/lang/String;
    .restart local v3       #myManufacturer:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 439
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final getOrientationType()Lcom/tl/uic/model/OrientationType;
    .locals 4

    .prologue
    .line 521
    sget-object v2, Lcom/tl/uic/model/OrientationType;->UNDEFINED:Lcom/tl/uic/model/OrientationType;

    .line 524
    .local v2, orientationType:Lcom/tl/uic/model/OrientationType;
    :try_start_0
    invoke-direct {p0}, Lcom/tl/uic/EnvironmentalData;->isNotApplicationResourcesNull()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 527
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v3, :pswitch_data_0

    .line 544
    .end local v0           #configuration:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-object v2

    .line 529
    .restart local v0       #configuration:Landroid/content/res/Configuration;
    :pswitch_0
    sget-object v2, Lcom/tl/uic/model/OrientationType;->LANDSCAPE:Lcom/tl/uic/model/OrientationType;

    .line 530
    goto :goto_0

    .line 532
    :pswitch_1
    sget-object v2, Lcom/tl/uic/model/OrientationType;->PORTRAIT:Lcom/tl/uic/model/OrientationType;

    .line 533
    goto :goto_0

    .line 535
    :pswitch_2
    sget-object v2, Lcom/tl/uic/model/OrientationType;->SQUARE:Lcom/tl/uic/model/OrientationType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    goto :goto_0

    .line 541
    .end local v0           #configuration:Landroid/content/res/Configuration;
    :catch_0
    move-exception v1

    .line 542
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final getScreenReceiver()Lcom/tl/uic/util/ScreenReceiver;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    return-object v0
.end method

.method public final getStorage(Lcom/tl/uic/model/StorageType;)J
    .locals 9
    .parameter "storageType"

    .prologue
    .line 327
    const-wide/16 v1, 0x0

    .line 330
    .local v1, memoryInBytes:J
    const/4 v3, 0x0

    .line 331
    .local v3, path:Ljava/io/File;
    :try_start_0
    sget-object v5, Lcom/tl/uic/model/StorageType;->PHONE_FREE:Lcom/tl/uic/model/StorageType;

    if-eq p1, v5, :cond_0

    sget-object v5, Lcom/tl/uic/model/StorageType;->PHONE_USED:Lcom/tl/uic/model/StorageType;

    if-eq p1, v5, :cond_0

    .line 332
    sget-object v5, Lcom/tl/uic/model/StorageType;->PHONE_TOTAL:Lcom/tl/uic/model/StorageType;

    if-ne p1, v5, :cond_1

    .line 333
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 338
    :goto_0
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 340
    .local v4, statFs:Landroid/os/StatFs;
    invoke-static {}, Lcom/tl/uic/EnvironmentalData;->$SWITCH_TABLE$com$tl$uic$model$StorageType()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/tl/uic/model/StorageType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 360
    .end local v4           #statFs:Landroid/os/StatFs;
    :goto_1
    return-wide v1

    .line 335
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 343
    .restart local v4       #statFs:Landroid/os/StatFs;
    :pswitch_0
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v1, v5, v7

    .line 344
    goto :goto_1

    .line 347
    :pswitch_1
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    sub-long v1, v5, v7

    .line 348
    goto :goto_1

    .line 351
    :pswitch_2
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-long v7, v7

    sub-long v1, v5, v7

    .line 352
    goto :goto_1

    .line 356
    .end local v4           #statFs:Landroid/os/StatFs;
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final hasClientStateChanged()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 249
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 251
    .local v1, hasChanged:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/tl/uic/EnvironmentalData;->batteryReceiver:Lcom/tl/uic/util/BatteryReceiver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tl/uic/EnvironmentalData;->connectionReceiver:Lcom/tl/uic/util/ConnectionReceiver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tl/uic/EnvironmentalData;->screenReceiver:Lcom/tl/uic/util/ScreenReceiver;

    if-nez v2, :cond_1

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->onResume()Ljava/lang/Boolean;

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->createClientState()Lcom/tl/uic/model/ClientState;

    move-result-object v0

    .line 256
    .local v0, currentClientState:Lcom/tl/uic/model/ClientState;
    iget-object v2, p0, Lcom/tl/uic/EnvironmentalData;->prevClientState:Lcom/tl/uic/model/ClientState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tl/uic/EnvironmentalData;->prevClientState:Lcom/tl/uic/model/ClientState;

    invoke-virtual {v2, v0}, Lcom/tl/uic/model/ClientState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 257
    :cond_2
    iput-object v0, p0, Lcom/tl/uic/EnvironmentalData;->prevClientState:Lcom/tl/uic/model/ClientState;

    .line 258
    iget-object v2, p0, Lcom/tl/uic/EnvironmentalData;->prevClientState:Lcom/tl/uic/model/ClientState;

    invoke-static {v2}, Lcom/tl/uic/TLFCache;->addMessage(Lcom/tl/uic/model/ClientMessageHeader;)Ljava/lang/Boolean;

    .line 259
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 262
    :cond_3
    return-object v1
.end method

.method public final onPause()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->disableBatteryManager()V

    .line 93
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->disableClientStateTask()V

    .line 94
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->disableConnectionListener()V

    .line 95
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->disableScreenReceiver()V

    .line 96
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final onResume()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->enableBatteryManager()V

    .line 107
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->enableClientStateTask()V

    .line 108
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->enableConnectionListener()V

    .line 109
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->enableScreenReceiver()V

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final setupClientStateTask()V
    .locals 7

    .prologue
    .line 622
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 623
    .local v6, handler:Landroid/os/Handler;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 625
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/tl/uic/EnvironmentalData$1;

    invoke-direct {v1, p0, v6}, Lcom/tl/uic/EnvironmentalData$1;-><init>(Lcom/tl/uic/EnvironmentalData;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/tl/uic/EnvironmentalData;->clientStateTimerTask:Ljava/util/TimerTask;

    .line 643
    iget-object v1, p0, Lcom/tl/uic/EnvironmentalData;->clientStateTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    .line 644
    const-string v4, "TimeIntervalBetweenSnapshots"

    invoke-static {v4}, Lcom/tl/uic/util/ConfigurationUtil;->getLongMS(Ljava/lang/String;)J

    move-result-wide v4

    .line 643
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 645
    return-void
.end method

.method public final terminate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->disableBatteryManager()V

    .line 121
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->disableConnectionListener()V

    .line 122
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->disableClientStateTask()V

    .line 123
    invoke-virtual {p0}, Lcom/tl/uic/EnvironmentalData;->disableScreenReceiver()V

    .line 124
    iput-object v0, p0, Lcom/tl/uic/EnvironmentalData;->_application:Landroid/app/Application;

    .line 125
    iput-object v0, p0, Lcom/tl/uic/EnvironmentalData;->applicationName:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/tl/uic/EnvironmentalData;->applicationVersion:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/tl/uic/EnvironmentalData;->applicationPackageName:Ljava/lang/String;

    .line 129
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
