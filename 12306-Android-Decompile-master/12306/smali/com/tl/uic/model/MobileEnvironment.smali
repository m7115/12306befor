.class public Lcom/tl/uic/model/MobileEnvironment;
.super Ljava/lang/Object;
.source "MobileEnvironment.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x40b98931475f8aebL


# instance fields
.field private androidArray:Lcom/tl/uic/model/AndroidArray;

.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private orientationType:Lcom/tl/uic/model/OrientationType;

.field private totalMemory:J

.field private totalStorage:J

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 211
    iput-wide v2, p0, Lcom/tl/uic/model/MobileEnvironment;->totalStorage:J

    .line 212
    iput-wide v2, p0, Lcom/tl/uic/model/MobileEnvironment;->totalMemory:J

    .line 213
    iput-object v1, p0, Lcom/tl/uic/model/MobileEnvironment;->locale:Ljava/lang/String;

    .line 214
    iput-object v1, p0, Lcom/tl/uic/model/MobileEnvironment;->language:Ljava/lang/String;

    .line 215
    iput-object v1, p0, Lcom/tl/uic/model/MobileEnvironment;->manufacturer:Ljava/lang/String;

    .line 216
    iput-object v1, p0, Lcom/tl/uic/model/MobileEnvironment;->deviceModel:Ljava/lang/String;

    .line 217
    iput-object v1, p0, Lcom/tl/uic/model/MobileEnvironment;->appName:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lcom/tl/uic/model/MobileEnvironment;->appVersion:Ljava/lang/String;

    .line 219
    iput-object v1, p0, Lcom/tl/uic/model/MobileEnvironment;->userID:Ljava/lang/String;

    .line 220
    iput-object v1, p0, Lcom/tl/uic/model/MobileEnvironment;->orientationType:Lcom/tl/uic/model/OrientationType;

    .line 221
    iget-object v0, p0, Lcom/tl/uic/model/MobileEnvironment;->androidArray:Lcom/tl/uic/model/AndroidArray;

    invoke-virtual {v0}, Lcom/tl/uic/model/AndroidArray;->clean()Ljava/lang/Boolean;

    .line 222
    iput-object v1, p0, Lcom/tl/uic/model/MobileEnvironment;->androidArray:Lcom/tl/uic/model/AndroidArray;

    .line 223
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getAndroidArray()Lcom/tl/uic/model/AndroidArray;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tl/uic/model/MobileEnvironment;->androidArray:Lcom/tl/uic/model/AndroidArray;

    return-object v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tl/uic/model/MobileEnvironment;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tl/uic/model/MobileEnvironment;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tl/uic/model/MobileEnvironment;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 187
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 189
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "totalStorage"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileEnvironment;->getTotalStorage()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 190
    const-string v2, "totalMemory"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileEnvironment;->getTotalMemory()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 191
    const-string v2, "locale"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileEnvironment;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v2, "language"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileEnvironment;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string v2, "manufacturer"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileEnvironment;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v2, "deviceModel"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileEnvironment;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v2, "appName"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileEnvironment;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v2, "appVersion"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileEnvironment;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v2, "userId"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileEnvironment;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v2, "orientationType"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileEnvironment;->getOrientationType()Lcom/tl/uic/model/OrientationType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v2, "android"

    invoke-virtual {p0}, Lcom/tl/uic/model/MobileEnvironment;->getAndroidArray()Lcom/tl/uic/model/AndroidArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tl/uic/model/AndroidArray;->getJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-object v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tl/uic/model/MobileEnvironment;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tl/uic/model/MobileEnvironment;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public final getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tl/uic/model/MobileEnvironment;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrientationType()Lcom/tl/uic/model/OrientationType;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tl/uic/model/MobileEnvironment;->orientationType:Lcom/tl/uic/model/OrientationType;

    return-object v0
.end method

.method public final getTotalMemory()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/tl/uic/model/MobileEnvironment;->totalMemory:J

    return-wide v0
.end method

.method public final getTotalStorage()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/tl/uic/model/MobileEnvironment;->totalStorage:J

    return-wide v0
.end method

.method public final getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/tl/uic/model/MobileEnvironment;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public final setAndroidArray(Lcom/tl/uic/model/AndroidArray;)V
    .locals 0
    .parameter "androidArray"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/tl/uic/model/MobileEnvironment;->androidArray:Lcom/tl/uic/model/AndroidArray;

    .line 181
    return-void
.end method

.method public final setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/tl/uic/model/MobileEnvironment;->appName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "appVersion"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/tl/uic/model/MobileEnvironment;->appVersion:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public final setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceModel"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tl/uic/model/MobileEnvironment;->deviceModel:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tl/uic/model/MobileEnvironment;->language:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public final setLocale(Ljava/lang/String;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tl/uic/model/MobileEnvironment;->locale:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public final setManufacturer(Ljava/lang/String;)V
    .locals 0
    .parameter "manufacturer"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tl/uic/model/MobileEnvironment;->manufacturer:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public final setOrientationType(Lcom/tl/uic/model/OrientationType;)V
    .locals 0
    .parameter "orientationType"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/tl/uic/model/MobileEnvironment;->orientationType:Lcom/tl/uic/model/OrientationType;

    .line 167
    return-void
.end method

.method public final setTotalMemory(J)V
    .locals 0
    .parameter "availableMegs"

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/tl/uic/model/MobileEnvironment;->totalMemory:J

    .line 55
    return-void
.end method

.method public final setTotalStorage(J)V
    .locals 0
    .parameter "totalStorage"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/tl/uic/model/MobileEnvironment;->totalStorage:J

    .line 41
    return-void
.end method

.method public final setUserID(Ljava/lang/String;)V
    .locals 0
    .parameter "userID"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/tl/uic/model/MobileEnvironment;->userID:Ljava/lang/String;

    .line 153
    return-void
.end method
