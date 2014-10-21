.class public Lcom/worklight/common/security/WLDeviceAuthManager;
.super Ljava/lang/Object;
.source "WLDeviceAuthManager.java"


# static fields
.field private static final ALG:Ljava/lang/String; = "alg"

.field private static final APPLICATION:Ljava/lang/String; = "application"

.field private static final EXP:Ljava/lang/String; = "exp"

.field private static final JPK:Ljava/lang/String; = "jpk"

.field private static final KEYSTORE_FILENAME:Ljava/lang/String; = ".keystore"

.field private static final MOD:Ljava/lang/String; = "mod"

.field private static final RSA:Ljava/lang/String; = "RSA"

.field private static final X5C:Ljava/lang/String; = "x5c"

.field private static instance:Lcom/worklight/common/security/WLDeviceAuthManager;

.field private static keyStorePassword:[C


# instance fields
.field private context:Landroid/content/Context;

.field private deviceUuid:Ljava/lang/String;

.field private keyPairHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation
.end field

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->keyPairHash:Ljava/util/HashMap;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/worklight/common/security/WLDeviceAuthManager;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private getAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "provisioningEntity"

    .prologue
    .line 144
    const-string v0, "application"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/worklight/androidgap/WLDroidGap;->getWLConfig()Lcom/worklight/common/WLConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/worklight/common/WLConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    .end local p1
    :cond_0
    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/worklight/common/security/WLDeviceAuthManager;
    .locals 2

    .prologue
    .line 81
    const-class v1, Lcom/worklight/common/security/WLDeviceAuthManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/worklight/common/security/WLDeviceAuthManager;->instance:Lcom/worklight/common/security/WLDeviceAuthManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/worklight/common/security/WLDeviceAuthManager;

    invoke-direct {v0}, Lcom/worklight/common/security/WLDeviceAuthManager;-><init>()V

    sput-object v0, Lcom/worklight/common/security/WLDeviceAuthManager;->instance:Lcom/worklight/common/security/WLDeviceAuthManager;

    .line 84
    :cond_0
    sget-object v0, Lcom/worklight/common/security/WLDeviceAuthManager;->instance:Lcom/worklight/common/security/WLDeviceAuthManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private signCsrData(Ljava/lang/String;Ljava/security/PrivateKey;)[B
    .locals 2
    .parameter "csrJSONData"
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 160
    const-string v1, "SHA256withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 161
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 163
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1
.end method

.method private signData(Ljava/lang/String;Ljava/security/PrivateKey;)[B
    .locals 2
    .parameter "data"
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 343
    const-string v1, "SHA256withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 344
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 346
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public csrCertificateRecieveFailed(Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"

    .prologue
    .line 442
    invoke-static {p1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->context:Landroid/content/Context;

    check-cast v0, Lcom/worklight/androidgap/WLDroidGap;

    new-instance v1, Lcom/worklight/common/security/WLDeviceAuthManager$1;

    invoke-direct {v1, p0}, Lcom/worklight/common/security/WLDeviceAuthManager$1;-><init>(Lcom/worklight/common/security/WLDeviceAuthManager;)V

    invoke-virtual {v0, v1}, Lcom/worklight/androidgap/WLDroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 449
    return-void
.end method

.method public generateKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 4
    .parameter "provisioningEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 100
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 101
    .local v1, kpg:Ljava/security/KeyPairGenerator;
    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 102
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 103
    .local v0, keyPair:Ljava/security/KeyPair;
    iget-object v2, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->keyPairHash:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/worklight/common/security/WLDeviceAuthManager;->getAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-object v0
.end method

.method public getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 457
    iget-object v5, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->deviceUuid:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, macAddr:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 460
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const-string v5, "android.hardware.wifi"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 461
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 462
    .local v3, wfManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 463
    .local v4, wifiinfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 465
    .end local v3           #wfManager:Landroid/net/wifi/WifiManager;
    .end local v4           #wifiinfo:Landroid/net/wifi/WifiInfo;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, uuid:Ljava/lang/String;
    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->deviceUuid:Ljava/lang/String;

    .line 471
    .end local v0           #macAddr:Ljava/lang/String;
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    .end local v2           #uuid:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->deviceUuid:Ljava/lang/String;

    return-object v5
.end method

.method protected getPrivateKeyEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;
    .locals 25
    .parameter "provisioningEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v17

    .line 365
    .local v17, myKeyStore:Ljava/security/KeyStore;
    new-instance v18, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/common/security/WLDeviceAuthManager;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".keystore"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v18, myKeyStoreFile:Ljava/io/File;
    invoke-direct/range {p0 .. p1}, Lcom/worklight/common/security/WLDeviceAuthManager;->getAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, alias:Ljava/lang/String;
    const/4 v15, 0x0

    .line 368
    .local v15, myFis:Ljava/io/FileInputStream;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 370
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v15           #myFis:Ljava/io/FileInputStream;
    .local v16, myFis:Ljava/io/FileInputStream;
    :try_start_1
    sget-object v22, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 372
    new-instance v22, Ljava/security/KeyStore$PasswordProtection;

    sget-object v23, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    invoke-direct/range {v22 .. v23}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v21

    check-cast v21, Ljava/security/KeyStore$PrivateKeyEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 373
    .local v21, pke:Ljava/security/KeyStore$PrivateKeyEntry;
    if-eqz v21, :cond_2

    .line 384
    if-eqz v16, :cond_0

    .line 385
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    :cond_0
    move-object/from16 v15, v16

    .line 434
    .end local v16           #myFis:Ljava/io/FileInputStream;
    .end local v21           #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local v15       #myFis:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-object v21

    .line 377
    .end local v15           #myFis:Ljava/io/FileInputStream;
    .restart local v16       #myFis:Ljava/io/FileInputStream;
    .restart local v21       #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    :cond_2
    :try_start_2
    const-string v22, "application"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v22

    if-eqz v22, :cond_4

    .line 378
    const/16 v21, 0x0

    .line 384
    if-eqz v16, :cond_3

    .line 385
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    :cond_3
    move-object/from16 v15, v16

    .end local v16           #myFis:Ljava/io/FileInputStream;
    .restart local v15       #myFis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 384
    .end local v15           #myFis:Ljava/io/FileInputStream;
    .restart local v16       #myFis:Ljava/io/FileInputStream;
    :cond_4
    if-eqz v16, :cond_12

    .line 385
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    move-object/from16 v15, v16

    .line 399
    .end local v16           #myFis:Ljava/io/FileInputStream;
    .end local v21           #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local v15       #myFis:Ljava/io/FileInputStream;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/common/security/WLDeviceAuthManager;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/common/security/WLDeviceAuthManager;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    .line 400
    .local v20, packages:[Ljava/lang/String;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v12

    .line 401
    .local v12, keyStore:Ljava/security/KeyStore;
    move-object/from16 v5, v20

    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v14, :cond_10

    aget-object v19, v5, v11

    .line 402
    .local v19, packageName:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/common/security/WLDeviceAuthManager;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".keystore"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .local v13, keyStoreFile:Ljava/io/File;
    const/4 v7, 0x0

    .line 404
    .local v7, fis:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 405
    .local v9, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 407
    :try_start_3
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 408
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_4
    sget-object v22, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    move-object/from16 v0, v22

    invoke-virtual {v12, v8, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 409
    new-instance v22, Ljava/security/KeyStore$PasswordProtection;

    sget-object v23, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    invoke-direct/range {v22 .. v23}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v4, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v21

    check-cast v21, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 410
    .restart local v21       #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    if-nez v21, :cond_b

    .line 411
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 424
    if-eqz v8, :cond_6

    .line 425
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 427
    :cond_6
    if-eqz v9, :cond_11

    .line 428
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    move-object v7, v8

    .line 401
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v21           #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :cond_7
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 381
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #i$:I
    .end local v12           #keyStore:Ljava/security/KeyStore;
    .end local v13           #keyStoreFile:Ljava/io/File;
    .end local v14           #len$:I
    .end local v19           #packageName:Ljava/lang/String;
    .end local v20           #packages:[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 382
    .local v6, e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed to determine the existence of certificate for device authentication with "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 384
    if-eqz v15, :cond_5

    .line 385
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_1

    .line 384
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v22

    :goto_5
    if-eqz v15, :cond_8

    .line 385
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    :cond_8
    throw v22

    .line 390
    :cond_9
    const-string v22, "application"

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 391
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 394
    :cond_a
    const/16 v22, 0x0

    sget-object v23, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto/16 :goto_1

    .line 415
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #i$:I
    .restart local v12       #keyStore:Ljava/security/KeyStore;
    .restart local v13       #keyStoreFile:Ljava/io/File;
    .restart local v14       #len$:I
    .restart local v19       #packageName:Ljava/lang/String;
    .restart local v20       #packages:[Ljava/lang/String;
    .restart local v21       #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    :cond_b
    :try_start_6
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 416
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v22

    sget-object v23, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    invoke-virtual/range {v21 .. v21}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v4, v1, v2, v3}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 417
    sget-object v22, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 418
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 419
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 424
    if-eqz v8, :cond_c

    .line 425
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 427
    :cond_c
    if-eqz v10, :cond_1

    .line 428
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .line 421
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v21           #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 422
    .restart local v6       #e:Ljava/io/IOException;
    :goto_6
    :try_start_8
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Failed copying certificate for device authentication with "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " , device authentication certificate will recreate."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v0, v6}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 424
    if-eqz v7, :cond_d

    .line 425
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 427
    :cond_d
    if-eqz v9, :cond_7

    .line 428
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_3

    .line 424
    .end local v6           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v22

    :goto_7
    if-eqz v7, :cond_e

    .line 425
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 427
    :cond_e
    if-eqz v9, :cond_f

    .line 428
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    :cond_f
    throw v22

    .line 434
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v13           #keyStoreFile:Ljava/io/File;
    .end local v19           #packageName:Ljava/lang/String;
    :cond_10
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 424
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v13       #keyStoreFile:Ljava/io/File;
    .restart local v19       #packageName:Ljava/lang/String;
    :catchall_2
    move-exception v22

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v21       #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    :catchall_3
    move-exception v22

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_7

    .line 421
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v21           #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v21       #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_3
    move-exception v6

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 384
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #i$:I
    .end local v12           #keyStore:Ljava/security/KeyStore;
    .end local v13           #keyStoreFile:Ljava/io/File;
    .end local v14           #len$:I
    .end local v15           #myFis:Ljava/io/FileInputStream;
    .end local v19           #packageName:Ljava/lang/String;
    .end local v20           #packages:[Ljava/lang/String;
    .end local v21           #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    .restart local v16       #myFis:Ljava/io/FileInputStream;
    :catchall_4
    move-exception v22

    move-object/from16 v15, v16

    .end local v16           #myFis:Ljava/io/FileInputStream;
    .restart local v15       #myFis:Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 381
    .end local v15           #myFis:Ljava/io/FileInputStream;
    .restart local v16       #myFis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    move-object/from16 v15, v16

    .end local v16           #myFis:Ljava/io/FileInputStream;
    .restart local v15       #myFis:Ljava/io/FileInputStream;
    goto/16 :goto_4

    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #i$:I
    .restart local v12       #keyStore:Ljava/security/KeyStore;
    .restart local v13       #keyStoreFile:Ljava/io/File;
    .restart local v14       #len$:I
    .restart local v19       #packageName:Ljava/lang/String;
    .restart local v20       #packages:[Ljava/lang/String;
    .restart local v21       #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    :cond_11
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #i$:I
    .end local v12           #keyStore:Ljava/security/KeyStore;
    .end local v13           #keyStoreFile:Ljava/io/File;
    .end local v14           #len$:I
    .end local v15           #myFis:Ljava/io/FileInputStream;
    .end local v19           #packageName:Ljava/lang/String;
    .end local v20           #packages:[Ljava/lang/String;
    .restart local v16       #myFis:Ljava/io/FileInputStream;
    :cond_12
    move-object/from16 v15, v16

    .end local v16           #myFis:Ljava/io/FileInputStream;
    .restart local v15       #myFis:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method public init(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "ctx"
    .parameter "webView"

    .prologue
    .line 113
    iput-object p2, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->webView:Landroid/webkit/WebView;

    .line 114
    iput-object p1, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->context:Landroid/content/Context;

    .line 115
    return-void
.end method

.method public isCertificateExists(Ljava/lang/String;)Z
    .locals 5
    .parameter "provisioningEntity"

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v3, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 136
    :goto_0
    return v2

    .line 128
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/worklight/common/security/WLDeviceAuthManager;->getPrivateKeyEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    .local v1, pke:Ljava/security/KeyStore$PrivateKeyEntry;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 130
    .local v2, ret:Z
    :cond_1
    const/4 v1, 0x0

    .line 131
    goto :goto_0

    .line 133
    .end local v1           #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v2           #ret:Z
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to determine the existence of certificate for device authentication with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "provisioningEntity"
    .parameter "certString"
    .parameter "realm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    if-nez p2, :cond_0

    .line 274
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "cannot save null certificate"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/worklight/utils/Base64;->decode([B)[B

    move-result-object v2

    .line 278
    .local v2, encodedCert:[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 279
    .local v3, inStream:Ljava/io/InputStream;
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 280
    .local v1, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 281
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 283
    invoke-virtual {p0, p1, v0, p3}, Lcom/worklight/common/security/WLDeviceAuthManager;->saveCertificate(Ljava/lang/String;Ljava/security/cert/Certificate;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public saveCertificate(Ljava/lang/String;Ljava/security/cert/Certificate;Ljava/lang/String;)V
    .locals 14
    .parameter "provisioningEntity"
    .parameter "certificate"
    .parameter "realm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/worklight/common/security/WLDeviceAuthManager;->isCertificateExists(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 295
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Error - Got a new Certificate, but an older one already exists, exiting process"

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    .line 298
    :cond_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 299
    .local v7, keyStore:Ljava/security/KeyStore;
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".keystore"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v8, keyStoreFile:Ljava/io/File;
    const/4 v3, 0x0

    .line 301
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 303
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 304
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    sget-object v10, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    invoke-virtual {v7, v4, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 306
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 310
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/worklight/common/security/WLDeviceAuthManager;->getAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, alias:Ljava/lang/String;
    iget-object v10, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->keyPairHash:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/worklight/common/security/WLDeviceAuthManager;->getAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/KeyPair;

    .line 312
    .local v9, keypair:Ljava/security/KeyPair;
    invoke-virtual {v9}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v10

    sget-object v11, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/security/cert/Certificate;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    invoke-virtual {v7, v1, v10, v11, v12}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 313
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 314
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_3
    sget-object v10, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    invoke-virtual {v7, v6, v10}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 317
    iget-object v10, p0, Lcom/worklight/common/security/WLDeviceAuthManager;->keyPairHash:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 323
    if-eqz v6, :cond_1

    .line 324
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 326
    :cond_1
    if-eqz v3, :cond_7

    .line 327
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-object v5, v6

    .line 330
    .end local v1           #alias:Ljava/lang/String;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v9           #keypair:Ljava/security/KeyPair;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 308
    :cond_3
    const/4 v10, 0x0

    :try_start_4
    sget-object v11, Lcom/worklight/common/security/WLDeviceAuthManager;->keyStorePassword:[C

    invoke-virtual {v7, v10, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v2

    .line 321
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Certificate for device authentication could not be saved with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 323
    if-eqz v5, :cond_4

    .line 324
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 326
    :cond_4
    if-eqz v3, :cond_2

    .line 327
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 323
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v5, :cond_5

    .line 324
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 326
    :cond_5
    if-eqz v3, :cond_6

    .line 327
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_6
    throw v10

    .line 323
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #alias:Ljava/lang/String;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #keypair:Ljava/security/KeyPair;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 320
    .end local v1           #alias:Ljava/lang/String;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v9           #keypair:Ljava/security/KeyPair;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #alias:Ljava/lang/String;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #keypair:Ljava/security/KeyPair;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :cond_7
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public signCsr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "csrJSON"
    .parameter "provisioningEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    const-string v3, ""

    .line 181
    .local v3, csrHeader:Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .local v5, csrHeaderJson:Lorg/json/JSONObject;
    const-string v14, "alg"

    const-string v15, "RS256"

    invoke-virtual {v5, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 186
    .local v12, publicKeyDataJson:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/worklight/common/security/WLDeviceAuthManager;->getAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, alias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/worklight/common/security/WLDeviceAuthManager;->keyPairHash:Ljava/util/HashMap;

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/KeyPair;

    .line 189
    .local v8, keyPair:Ljava/security/KeyPair;
    invoke-virtual {v8}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v11

    check-cast v11, Ljava/security/interfaces/RSAPublicKey;

    .line 190
    .local v11, publicKey:Ljava/security/interfaces/RSAPublicKey;
    const-string v14, "alg"

    const-string v15, "RSA"

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    invoke-interface {v11}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-static {v14, v15}, Lcom/worklight/utils/Base64;->encodeUrlSafe([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 193
    .local v9, mod:Ljava/lang/String;
    const-string v14, "mod"

    invoke-virtual {v12, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    invoke-interface {v11}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-static {v14, v15}, Lcom/worklight/utils/Base64;->encodeUrlSafe([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, exp:Ljava/lang/String;
    const-string v14, "exp"

    invoke-virtual {v12, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v14, "jpk"

    invoke-virtual {v5, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, payload:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Lcom/worklight/utils/Base64;->encodeUrlSafe([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Lcom/worklight/utils/Base64;->encodeUrlSafe([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, csrHeaderAndPayload:Ljava/lang/String;
    const/4 v7, 0x0

    .line 208
    .local v7, jwsSignature:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/worklight/common/security/WLDeviceAuthManager;->signCsrData(Ljava/lang/String;Ljava/security/PrivateKey;)[B

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-static {v14, v15}, Lcom/worklight/utils/Base64;->encodeUrlSafe([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 211
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 212
    .local v13, result:Ljava/lang/String;
    return-object v13
.end method

.method public signDeviceAuth(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .parameter "payloadJSON"
    .parameter "provisioningEntity"
    .parameter "isProvisioningEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    const-string v1, ""

    .line 229
    .local v1, jwsHeader:Ljava/lang/String;
    const-string v6, ""

    .line 231
    .local v6, result:Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/worklight/common/security/WLDeviceAuthManager;->isCertificateExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 234
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 235
    .local v3, jwsHeaderJson:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 237
    .local v5, pke:Ljava/security/KeyStore$PrivateKeyEntry;
    const-string v8, "alg"

    const-string v9, "RS256"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    invoke-virtual {p0, p2}, Lcom/worklight/common/security/WLDeviceAuthManager;->getPrivateKeyEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v5

    .line 239
    invoke-virtual {v5}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 240
    .local v0, cert:[B
    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Lcom/worklight/utils/Base64;->encodeUrlSafe([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, x5cValue:Ljava/lang/String;
    const-string v8, "x5c"

    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Lcom/worklight/utils/Base64;->encodeUrlSafe([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Lcom/worklight/utils/Base64;->encodeUrlSafe([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, jwsHeaderAndPayload:Ljava/lang/String;
    const/4 v4, 0x0

    .line 250
    .local v4, jwsSignature:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lcom/worklight/common/security/WLDeviceAuthManager;->signData(Ljava/lang/String;Ljava/security/PrivateKey;)[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Lcom/worklight/utils/Base64;->encodeUrlSafe([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 253
    const/4 v5, 0x0

    .line 256
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 262
    .end local v0           #cert:[B
    .end local v2           #jwsHeaderAndPayload:Ljava/lang/String;
    .end local v3           #jwsHeaderJson:Lorg/json/JSONObject;
    .end local v4           #jwsSignature:Ljava/lang/String;
    .end local v5           #pke:Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v7           #x5cValue:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 259
    :cond_0
    move-object v6, p1

    goto :goto_0
.end method
