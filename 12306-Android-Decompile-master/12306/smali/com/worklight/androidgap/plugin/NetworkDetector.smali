.class public Lcom/worklight/androidgap/plugin/NetworkDetector;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "NetworkDetector.java"


# static fields
.field public static final ACTION_GET_NETWORK_INFO:Ljava/lang/String; = "getNetworkInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method private getAllIpAddresses()[Lorg/json/JSONObject;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 165
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .local v7, ipv4Addresses:Lorg/json/JSONObject;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 168
    .local v8, ipv6Addresses:Lorg/json/JSONObject;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v9, translations:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "en0"

    const-string v11, "wifiAddress"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v10, "en1"

    const-string v11, "wifiAddress"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v10, "eth0"

    const-string v11, "wifiAddress"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v10, "pdp_ip0"

    const-string v11, "3GAddress"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v10, "rmnet0"

    const-string v11, "3GAddress"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 177
    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 178
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 179
    .local v5, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 180
    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 181
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 182
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v10

    if-nez v10, :cond_1

    .line 183
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, ipAddress:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 187
    .local v4, interfaceName:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 188
    const-string v4, "3GAddress"

    .line 190
    :cond_2
    const-string v10, "%"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 191
    .local v2, index:I
    const/4 v10, -0x1

    if-eq v2, v10, :cond_3

    .line 192
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 195
    :cond_3
    instance-of v10, v3, Ljava/net/Inet4Address;

    if-eqz v10, :cond_5

    .line 196
    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v2           #index:I
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #interfaceName:Ljava/lang/String;
    .end local v5           #intf:Ljava/net/NetworkInterface;
    .end local v6           #ipAddress:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 211
    :cond_4
    const/4 v10, 0x2

    new-array v10, v10, [Lorg/json/JSONObject;

    aput-object v7, v10, v12

    const/4 v11, 0x1

    aput-object v8, v10, v11

    return-object v10

    .line 199
    .restart local v0       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v1       #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v2       #index:I
    .restart local v3       #inetAddress:Ljava/net/InetAddress;
    .restart local v4       #interfaceName:Ljava/lang/String;
    .restart local v5       #intf:Ljava/net/NetworkInterface;
    .restart local v6       #ipAddress:Ljava/lang/String;
    :cond_5
    :try_start_1
    instance-of v10, v3, Ljava/net/Inet6Address;

    if-eqz v10, :cond_1

    .line 200
    invoke-virtual {v8, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getPrimaryAddress([Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .parameter "ipArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 222
    const-string v4, ""

    .line 223
    .local v4, primaryAddress:Ljava/lang/String;
    const/4 v1, 0x0

    .line 224
    .local v1, ip_wifiAddress:Ljava/lang/String;
    const/4 v0, 0x0

    .line 226
    .local v0, ip_3GAddress:Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v2, p0, v5

    .line 227
    .local v2, ipv4Addresses:Lorg/json/JSONObject;
    const/4 v5, 0x1

    aget-object v3, p0, v5

    .line 230
    .local v3, ipv6Addresses:Lorg/json/JSONObject;
    const-string v5, "wifiAddress"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    const-string v5, "wifiAddress"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_0
    const-string v5, "3GAddress"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    const-string v5, "3GAddress"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_1
    if-eqz v1, :cond_6

    move-object v4, v1

    .line 238
    :goto_0
    if-eqz v4, :cond_2

    const-string v5, ""

    if-ne v4, v5, :cond_5

    .line 239
    :cond_2
    const-string v5, "wifiAddress"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 240
    const-string v5, "wifiAddress"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    :cond_3
    const-string v5, "3GAddress"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 242
    const-string v5, "3GAddress"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_4
    if-eqz v1, :cond_7

    move-object v4, v1

    .line 247
    :cond_5
    :goto_1
    return-object v4

    :cond_6
    move-object v4, v0

    .line 234
    goto :goto_0

    :cond_7
    move-object v4, v0

    .line 243
    goto :goto_1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 4
    .parameter "action"
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 45
    const-string v1, "getNetworkInfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/NetworkDetector;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/worklight/androidgap/plugin/NetworkDetector;->getNetworkData(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 47
    .local v0, networkInfo:Lorg/json/JSONObject;
    invoke-virtual {p3, v0}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 51
    .end local v0           #networkInfo:Lorg/json/JSONObject;
    :goto_0
    return v3

    .line 50
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNetworkData(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 20
    .parameter "ctx"

    .prologue
    .line 56
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v12, response:Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "false"

    .line 59
    .local v7, isNetworkConnected:Ljava/lang/String;
    const-string v6, "false"

    .line 60
    .local v6, isAirplaneMode:Ljava/lang/String;
    const-string v8, "false"

    .line 61
    .local v8, isRoaming:Ljava/lang/String;
    const-string v9, ""

    .line 62
    .local v9, networkConnectionTypeName:Ljava/lang/String;
    const-string v16, ""

    .line 63
    .local v16, wifiName:Ljava/lang/String;
    const-string v13, ""

    .line 64
    .local v13, telephonyNetworkType:Ljava/lang/String;
    const-string v3, ""

    .line 67
    .local v3, carrierName:Ljava/lang/String;
    const-string v17, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 68
    .local v4, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 70
    .local v11, ni:Landroid/net/NetworkInfo;
    if-eqz v11, :cond_0

    .line 71
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    .line 72
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v8

    .line 73
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 75
    :try_start_1
    const-string v17, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiManager;

    .line 76
    .local v15, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 86
    .end local v15           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    :try_start_2
    const-string v17, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 87
    .local v14, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 122
    const-string v13, "UNDETECTABLE"

    .line 127
    :goto_1
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    :cond_1
    const-string v10, ""

    .line 130
    .local v10, networkOperator:Ljava/lang/String;
    :goto_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "airplane_mode_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_3

    const/16 v17, 0x1

    :goto_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/worklight/androidgap/plugin/NetworkDetector;->getAllIpAddresses()[Lorg/json/JSONObject;

    move-result-object v2

    .line 141
    .local v2, addresses:[Lorg/json/JSONObject;
    const-string v17, "isNetworkConnected"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v17, "isAirplaneMode"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v17, "isRoaming"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v17, "networkConnectionType"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v17, "wifiName"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v17, "telephonyNetworkType"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v17, "carrierName"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v17, "ipv4Addresses"

    const/16 v18, 0x0

    aget-object v18, v2, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v17, "ipv6Addresses"

    const/16 v18, 0x1

    aget-object v18, v2, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v17, "ipAddress"

    invoke-static {v2}, Lcom/worklight/androidgap/plugin/NetworkDetector;->getPrimaryAddress([Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    .end local v2           #addresses:[Lorg/json/JSONObject;
    .end local v3           #carrierName:Ljava/lang/String;
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v6           #isAirplaneMode:Ljava/lang/String;
    .end local v7           #isNetworkConnected:Ljava/lang/String;
    .end local v8           #isRoaming:Ljava/lang/String;
    .end local v9           #networkConnectionTypeName:Ljava/lang/String;
    .end local v10           #networkOperator:Ljava/lang/String;
    .end local v11           #ni:Landroid/net/NetworkInfo;
    .end local v13           #telephonyNetworkType:Ljava/lang/String;
    .end local v14           #tm:Landroid/telephony/TelephonyManager;
    .end local v16           #wifiName:Ljava/lang/String;
    :goto_4
    return-object v12

    .line 77
    .restart local v3       #carrierName:Ljava/lang/String;
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    .restart local v6       #isAirplaneMode:Ljava/lang/String;
    .restart local v7       #isNetworkConnected:Ljava/lang/String;
    .restart local v8       #isRoaming:Ljava/lang/String;
    .restart local v9       #networkConnectionTypeName:Ljava/lang/String;
    .restart local v11       #ni:Landroid/net/NetworkInfo;
    .restart local v13       #telephonyNetworkType:Ljava/lang/String;
    .restart local v16       #wifiName:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 78
    .local v5, e:Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Diagnostics information is missing Wi-Fi info with "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".  Ensure application permission ACCESS_WIFI_STATE in AndroidManifest.xml."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/worklight/common/WLUtils;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 151
    .end local v3           #carrierName:Ljava/lang/String;
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #isAirplaneMode:Ljava/lang/String;
    .end local v7           #isNetworkConnected:Ljava/lang/String;
    .end local v8           #isRoaming:Ljava/lang/String;
    .end local v9           #networkConnectionTypeName:Ljava/lang/String;
    .end local v11           #ni:Landroid/net/NetworkInfo;
    .end local v13           #telephonyNetworkType:Ljava/lang/String;
    .end local v16           #wifiName:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 152
    .restart local v5       #e:Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Diagnostics information is missing because of "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 89
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v3       #carrierName:Ljava/lang/String;
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    .restart local v6       #isAirplaneMode:Ljava/lang/String;
    .restart local v7       #isNetworkConnected:Ljava/lang/String;
    .restart local v8       #isRoaming:Ljava/lang/String;
    .restart local v9       #networkConnectionTypeName:Ljava/lang/String;
    .restart local v11       #ni:Landroid/net/NetworkInfo;
    .restart local v13       #telephonyNetworkType:Ljava/lang/String;
    .restart local v14       #tm:Landroid/telephony/TelephonyManager;
    .restart local v16       #wifiName:Ljava/lang/String;
    :pswitch_0
    :try_start_3
    const-string v13, "1xRTT"

    .line 90
    goto/16 :goto_1

    .line 92
    :pswitch_1
    const-string v13, "CDMA"

    .line 93
    goto/16 :goto_1

    .line 95
    :pswitch_2
    const-string v13, "EDGE"

    .line 96
    goto/16 :goto_1

    .line 98
    :pswitch_3
    const-string v13, "EVDO_0"

    .line 99
    goto/16 :goto_1

    .line 101
    :pswitch_4
    const-string v13, "EVDO_A"

    .line 102
    goto/16 :goto_1

    .line 104
    :pswitch_5
    const-string v13, "GPRS"

    .line 105
    goto/16 :goto_1

    .line 107
    :pswitch_6
    const-string v13, "UMTS"

    .line 108
    goto/16 :goto_1

    .line 110
    :pswitch_7
    const-string v13, ""

    .line 111
    goto/16 :goto_1

    .line 113
    :pswitch_8
    const-string v13, "HSDPA"

    .line 114
    goto/16 :goto_1

    .line 116
    :pswitch_9
    const-string v13, "HSPA"

    .line 117
    goto/16 :goto_1

    .line 119
    :pswitch_a
    const-string v13, "HSUPA"

    .line 120
    goto/16 :goto_1

    .line 127
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    goto/16 :goto_2

    .line 133
    .restart local v10       #networkOperator:Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
