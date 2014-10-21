.class public Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "DeviceAuthPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$1;,
        Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;
    }
.end annotation


# static fields
.field private static final RESULT_ERROR:Ljava/lang/String; = "result:error"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 27
    return-void
.end method

.method private callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 2
    .parameter "result"
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    .line 75
    const-string v0, "result:error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v0}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 80
    :goto_0
    return v1

    .line 79
    :cond_0
    invoke-virtual {p2, p1}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDeviceUUID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lcom/worklight/common/security/WLDeviceAuthManager;->getInstance()Lcom/worklight/common/security/WLDeviceAuthManager;

    move-result-object v1

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/worklight/common/security/WLDeviceAuthManager;->getDeviceUUID(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authentication with Worklight server failed, because device provisioning is unable to get device UUID with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    const-string v1, "result:error"

    goto :goto_0
.end method

.method private init(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 3
    .parameter "args"

    .prologue
    .line 120
    invoke-static {}, Lcom/worklight/common/security/WLDeviceAuthManager;->getInstance()Lcom/worklight/common/security/WLDeviceAuthManager;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, v1, v2}, Lcom/worklight/common/security/WLDeviceAuthManager;->init(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 122
    sget-object v0, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v0}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isIfCertificateExists(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 5
    .parameter "args"

    .prologue
    .line 170
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, provisioningEntity:Ljava/lang/String;
    invoke-static {}, Lcom/worklight/common/security/WLDeviceAuthManager;->getInstance()Lcom/worklight/common/security/WLDeviceAuthManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/worklight/common/security/WLDeviceAuthManager;->isCertificateExists(Ljava/lang/String;)Z

    move-result v0

    .line 173
    .local v0, certificateExists:Z
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 178
    .end local v0           #certificateExists:Z
    .end local v2           #provisioningEntity:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication with Worklight server failed, because failed to check if the required certificate exists on the device with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    const-string v3, "result:error"

    goto :goto_0
.end method

.method private saveCertificate(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 6
    .parameter "args"

    .prologue
    .line 86
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, provisioningEntity:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, certString:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, realm:Ljava/lang/String;
    invoke-static {}, Lcom/worklight/common/security/WLDeviceAuthManager;->getInstance()Lcom/worklight/common/security/WLDeviceAuthManager;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v3}, Lcom/worklight/common/security/WLDeviceAuthManager;->saveCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v4}, Lorg/apache/cordova/api/PluginResult$Status;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 96
    .end local v0           #certString:Ljava/lang/String;
    .end local v2           #provisioningEntity:Ljava/lang/String;
    .end local v3           #realm:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication with Worklight server failed, because device provisioning is unable to save required certificate with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const-string v4, "result:error"

    goto :goto_0
.end method

.method private signCsr(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 5
    .parameter "args"

    .prologue
    .line 127
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 128
    .local v0, csrData:Lorg/json/JSONObject;
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, provisioningEntity:Ljava/lang/String;
    invoke-static {}, Lcom/worklight/common/security/WLDeviceAuthManager;->getInstance()Lcom/worklight/common/security/WLDeviceAuthManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/worklight/common/security/WLDeviceAuthManager;->generateKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;

    .line 131
    invoke-static {}, Lcom/worklight/common/security/WLDeviceAuthManager;->getInstance()Lcom/worklight/common/security/WLDeviceAuthManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/worklight/common/security/WLDeviceAuthManager;->signCsr(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 137
    .end local v0           #csrData:Lorg/json/JSONObject;
    .end local v2           #provisioningEntity:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication with Work light server failed, because device provisioning is unable sign CSR with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    const-string v3, "result:error"

    goto :goto_0
.end method

.method private signDeviceAuth(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 6
    .parameter "args"

    .prologue
    .line 148
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, payloadJson:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, provisioningEntity:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v1

    .line 151
    .local v1, isProvisioningEnabled:Z
    invoke-static {}, Lcom/worklight/common/security/WLDeviceAuthManager;->getInstance()Lcom/worklight/common/security/WLDeviceAuthManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lcom/worklight/common/security/WLDeviceAuthManager;->signDeviceAuth(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 157
    .end local v1           #isProvisioningEnabled:Z
    .end local v2           #payloadJson:Ljava/lang/String;
    .end local v3           #provisioningEntity:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication with Worklight server failed, because device provisioning is unable to sign with current certificate with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    const-string v4, "result:error"

    goto :goto_0
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
    const/4 v1, 0x1

    .line 42
    invoke-static {p1}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;

    move-result-object v0

    .line 43
    .local v0, actionE:Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;
    if-eqz v0, :cond_0

    .line 44
    sget-object v2, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$1;->$SwitchMap$com$worklight$androidgap$plugin$DeviceAuthPlugin$ACTION:[I

    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin$ACTION;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 64
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

    .line 70
    :goto_0
    return v1

    .line 46
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->init(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->isIfCertificateExists(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto :goto_0

    .line 52
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->signDeviceAuth(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto :goto_0

    .line 55
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->signCsr(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto :goto_0

    .line 58
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->saveCertificate(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto :goto_0

    .line 61
    :pswitch_5
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->getDeviceUUID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lcom/worklight/androidgap/plugin/DeviceAuthPlugin;->callback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)Z

    move-result v1

    goto :goto_0

    .line 69
    :cond_0
    const-string v2, "Null action"

    invoke-virtual {p3, v2}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
