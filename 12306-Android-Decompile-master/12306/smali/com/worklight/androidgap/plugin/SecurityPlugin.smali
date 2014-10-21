.class public Lcom/worklight/androidgap/plugin/SecurityPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "SecurityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/SecurityPlugin$1;,
        Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$100(Lorg/json/JSONArray;)[B
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/json/JSONException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/worklight/androidgap/plugin/SecurityPlugin;->generateKey(Lorg/json/JSONArray;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/worklight/androidgap/plugin/SecurityPlugin;->encrypt(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/json/JSONArray;)[B
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {p0}, Lcom/worklight/androidgap/plugin/SecurityPlugin;->decrypt(Lorg/json/JSONArray;)[B

    move-result-object v0

    return-object v0
.end method

.method private static decrypt(Lorg/json/JSONArray;)[B
    .locals 9
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 137
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, key:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, value:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, iv:Ljava/lang/String;
    invoke-static {v3}, Lcom/worklight/common/WLUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/worklight/androidgap/plugin/SecurityPlugin;->initCipher(I[B[B)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 145
    .local v1, cipher:Ljavax/crypto/Cipher;
    invoke-static {v5}, Lcom/worklight/common/WLUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 146
    .local v0, bytes:[B
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 147
    .local v4, original:[B
    return-object v4
.end method

.method private static encrypt(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 9
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Lorg/json/JSONException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 169
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, value:Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, iv:Ljava/lang/String;
    invoke-static {v4}, Lcom/worklight/common/WLUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v8, v6, v7}, Lcom/worklight/androidgap/plugin/SecurityPlugin;->initCipher(I[B[B)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 176
    .local v0, cipher:Ljavax/crypto/Cipher;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 178
    .local v1, encrypted:[B
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 179
    .local v3, json:Lorg/json/JSONObject;
    const-string v6, "ct"

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v6, "iv"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static generateKey(Lorg/json/JSONArray;)[B
    .locals 7
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/json/JSONException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, pass:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, salt:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, iter:I
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 204
    .local v2, len:I
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v5, v6, v1, v2}, Lcom/worklight/utils/SecurityUtils$PBKDF2;->genKey([C[BII)Ljava/security/Key;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 207
    .local v0, generatedKey:[B
    return-object v0
.end method

.method private static initCipher(I[B[B)Ljavax/crypto/Cipher;
    .locals 4
    .parameter "mode"
    .parameter "key"
    .parameter "iv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 217
    .local v1, ivspec:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 220
    .local v2, skeySpec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 221
    .local v0, cipher:Ljavax/crypto/Cipher;
    invoke-virtual {v0, p0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 223
    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 4
    .parameter "action"
    .parameter "args"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p1}, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    move-result-object v0

    .line 109
    .local v0, actionE:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
    if-eqz v0, :cond_1

    .line 110
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/SecurityPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/SecurityPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 111
    .local v1, androidCtx:Landroid/content/Context;
    :goto_0
    invoke-virtual {v0, p2, p3, v1}, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->execute(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;Landroid/content/Context;)Z

    move-result v2

    .line 114
    .end local v1           #androidCtx:Landroid/content/Context;
    :goto_1
    return v2

    .line 110
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 113
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 114
    const/4 v2, 0x1

    goto :goto_1
.end method
