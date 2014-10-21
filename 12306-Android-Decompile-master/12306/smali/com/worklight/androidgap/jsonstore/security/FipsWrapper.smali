.class public Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;
.super Ljava/lang/Object;
.source "FipsWrapper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "openssl_fips"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _decryptAES([BI[BI[BI)[B
.end method

.method private static native _disableFips()I
.end method

.method private static native _enableFips()I
.end method

.method private static native _encryptAES([BI[BILjava/lang/String;I)[B
.end method

.method private static native _getFipsMode()I
.end method

.method private static native _setFips(I)I
.end method

.method public static decryptAES(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 11
    .parameter "key"
    .parameter "iv"
    .parameter "encryptedBytes"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/worklight/common/WLUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 59
    .local v0, keyByteArray:[B
    invoke-static {p1}, Lcom/worklight/common/WLUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 60
    .local v2, ivByteArray:[B
    array-length v1, v0

    array-length v3, v2

    array-length v5, p2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;->_decryptAES([BI[BI[BI)[B

    move-result-object v8

    .line 63
    .local v8, decryptedBytes:[B
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v7

    .line 64
    .local v7, charsetDecoder:Ljava/nio/charset/CharsetDecoder;
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 65
    .local v6, charBuffer:Ljava/nio/CharBuffer;
    new-instance v9, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v9, v8, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v6           #charBuffer:Ljava/nio/CharBuffer;
    .end local v7           #charsetDecoder:Ljava/nio/charset/CharsetDecoder;
    .local v9, decryptedText:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-static {v8, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 70
    return-object v9

    .line 66
    .end local v9           #decryptedText:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 67
    .local v10, t:Ljava/lang/Throwable;
    const/4 v9, 0x0

    .restart local v9       #decryptedText:Ljava/lang/String;
    goto :goto_0
.end method

.method public static disableFips()I
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;->_disableFips()I

    move-result v0

    return v0
.end method

.method public static enableFips()I
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;->_enableFips()I

    move-result v0

    return v0
.end method

.method public static encryptAES(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7
    .parameter "key"
    .parameter "iv"
    .parameter "clearText"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/worklight/common/WLUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    .local v0, keyByteArray:[B
    invoke-static {p1}, Lcom/worklight/common/WLUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 52
    .local v2, ivByteArray:[B
    array-length v1, v0

    array-length v3, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;->_encryptAES([BI[BILjava/lang/String;I)[B

    move-result-object v6

    .line 53
    .local v6, encBytes:[B
    return-object v6
.end method

.method public static getFipsMode()I
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;->_getFipsMode()I

    move-result v0

    return v0
.end method

.method public static setFips(I)I
    .locals 1
    .parameter "mode"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;->_setFips(I)I

    move-result v0

    return v0
.end method
