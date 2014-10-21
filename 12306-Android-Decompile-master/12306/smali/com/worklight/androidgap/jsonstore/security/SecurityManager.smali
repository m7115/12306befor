.class public Lcom/worklight/androidgap/jsonstore/security/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field private static final IV_NUM_BYTES:I = 0x10

.field private static final LOCAL_KEY_NUM_BYTES:I = 0x20

.field private static instance:Lcom/worklight/androidgap/jsonstore/security/SecurityManager;


# instance fields
.field private keychain:Lcom/worklight/androidgap/jsonstore/security/Keychain;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/worklight/androidgap/jsonstore/security/Keychain;

    invoke-direct {v0, p1}, Lcom/worklight/androidgap/jsonstore/security/Keychain;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->keychain:Lcom/worklight/androidgap/jsonstore/security/Keychain;

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/worklight/androidgap/jsonstore/security/SecurityManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    const-class v1, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->instance:Lcom/worklight/androidgap/jsonstore/security/SecurityManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;

    invoke-direct {v0, p0}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->instance:Lcom/worklight/androidgap/jsonstore/security/SecurityManager;

    .line 34
    :cond_0
    sget-object v0, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->instance:Lcom/worklight/androidgap/jsonstore/security/SecurityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public destroyKeychain()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->keychain:Lcom/worklight/androidgap/jsonstore/security/Keychain;

    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/security/Keychain;->destroy()V

    .line 68
    return-void
.end method

.method public getDPK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "password"
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v3, p0, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->keychain:Lcom/worklight/androidgap/jsonstore/security/Keychain;

    invoke-virtual {v3, p2}, Lcom/worklight/androidgap/jsonstore/security/Keychain;->getDPKBean(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/security/DPKBean;

    move-result-object v1

    .line 40
    .local v1, dpkBean:Lcom/worklight/androidgap/jsonstore/security/DPKBean;
    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->getSalt()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-static {v3}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->encodeKeyAsHexString(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, pwKey:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->getEncryptedDPK()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 48
    .local v0, decodedDPK:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->getIV()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public getSalt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->keychain:Lcom/worklight/androidgap/jsonstore/security/Keychain;

    invoke-virtual {v1, p1}, Lcom/worklight/androidgap/jsonstore/security/Keychain;->getDPKBean(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/security/DPKBean;

    move-result-object v0

    .line 55
    .local v0, dpkBean:Lcom/worklight/androidgap/jsonstore/security/DPKBean;
    if-nez v0, :cond_0

    .line 56
    const/4 v1, 0x0

    .line 59
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->getSalt()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isDPKAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "username"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->keychain:Lcom/worklight/androidgap/jsonstore/security/Keychain;

    invoke-virtual {v0, p1}, Lcom/worklight/androidgap/jsonstore/security/Keychain;->isDPKAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public storeDPK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 7
    .parameter "password"
    .parameter "username"
    .parameter "clearDPK"
    .parameter "salt"
    .parameter "isUpdate"
    .parameter "isLocalKeyGen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 73
    move-object v0, p3

    .line 80
    .local v0, dpk:Ljava/lang/String;
    if-eqz p6, :cond_1

    .line 81
    const/16 v5, 0x20

    invoke-static {v5}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->generateLocalKey(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->encodeBytesAsHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_0
    :goto_0
    const/16 v5, 0x10

    invoke-static {v5}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->generateIV(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->encodeBytesAsHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, iv:Ljava/lang/String;
    invoke-static {p1, p4}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-static {v5}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->encodeKeyAsHexString(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, pwKey:Ljava/lang/String;
    invoke-static {v4, v0, v3}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->encodeBytesAsHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, encryptedDPK:Ljava/lang/String;
    new-instance v1, Lcom/worklight/androidgap/jsonstore/security/DPKBean;

    const/16 v5, 0x2710

    invoke-direct {v1, v2, v3, p4, v5}, Lcom/worklight/androidgap/jsonstore/security/DPKBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    .local v1, dpkBean:Lcom/worklight/androidgap/jsonstore/security/DPKBean;
    iget-object v5, p0, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->keychain:Lcom/worklight/androidgap/jsonstore/security/Keychain;

    invoke-virtual {v5, p2, v1}, Lcom/worklight/androidgap/jsonstore/security/Keychain;->setDPKBean(Ljava/lang/String;Lcom/worklight/androidgap/jsonstore/security/DPKBean;)V

    .line 110
    return v6

    .line 83
    .end local v1           #dpkBean:Lcom/worklight/androidgap/jsonstore/security/DPKBean;
    .end local v2           #encryptedDPK:Ljava/lang/String;
    .end local v3           #iv:Ljava/lang/String;
    .end local v4           #pwKey:Ljava/lang/String;
    :cond_1
    if-nez p5, :cond_0

    .line 87
    invoke-static {p3, p4}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-static {v5}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->encodeKeyAsHexString(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
