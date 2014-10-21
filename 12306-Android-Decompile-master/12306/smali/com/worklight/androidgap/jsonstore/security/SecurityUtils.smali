.class public Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# static fields
.field private static final KEY_SIZE_AES256:I = 0x20

.field protected static final PBKDF2_ITERATIONS:I = 0x2710


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "iv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p1}, Lcom/worklight/common/WLUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, p2, v1}, Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;->decryptAES(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, decryptedString:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 39
    :cond_0
    new-instance v1, Ljavax/crypto/BadPaddingException;

    const-string v2, "Decryption failed"

    invoke-direct {v1, v2}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static encodeBytesAsHexString([B)Ljava/lang/String;
    .locals 9
    .parameter "bytes"

    .prologue
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v4, result:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 48
    move-object v0, p0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 49
    .local v1, curByte:B
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v0           #arr$:[B
    .end local v1           #curByte:B
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static encodeKeyAsHexString(Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 57
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/worklight/androidgap/jsonstore/security/SecurityUtils;->encodeBytesAsHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "iv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0, p2, p1}, Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;->encryptAES(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 63
    .local v0, encryptedBytes:[B
    return-object v0
.end method

.method public static generateIV(I)[B
    .locals 2
    .parameter "numBytes"

    .prologue
    .line 67
    new-array v0, p0, [B

    .line 68
    .local v0, iv:[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 69
    return-object v0
.end method

.method public static generateKey(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 4
    .parameter "password"
    .parameter "salt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x2710

    const/16 v3, 0x20

    invoke-static {v0, v1, v2, v3}, Lcom/worklight/utils/SecurityUtils$PBKDF2;->genKey([C[BII)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public static generateLocalKey(I)[B
    .locals 2
    .parameter "numBytes"

    .prologue
    .line 84
    new-array v0, p0, [B

    .line 85
    .local v0, randBytes:[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 86
    return-object v0
.end method
