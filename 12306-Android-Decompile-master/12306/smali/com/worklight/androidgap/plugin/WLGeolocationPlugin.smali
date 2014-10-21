.class public Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "WLGeolocationPlugin.java"


# instance fields
.field private gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

.field private locationManager:Landroid/location/LocationManager;

.field private networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 62
    return-void
.end method

.method private addWatch(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 7
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 170
    const/4 v6, 0x2

    invoke-direct {p0, p1, v5, v6, p2}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->getListener(Lorg/json/JSONArray;IILorg/apache/cordova/api/CallbackContext;)Lcom/worklight/androidgap/plugin/WLLocationListener;

    move-result-object v1

    .line 171
    .local v1, listener:Lcom/worklight/androidgap/plugin/WLLocationListener;
    if-nez v1, :cond_0

    .line 180
    :goto_0
    return v4

    .line 175
    :cond_0
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, id:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 177
    .local v2, minChangeDistance:I
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 179
    .local v3, minChangeTime:I
    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/worklight/androidgap/plugin/WLLocationListener;->addWatch(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;II)V

    move v4, v5

    .line 180
    goto :goto_0
.end method

.method private clearWatch(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 2
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, id:Ljava/lang/String;
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

    iget-object v1, v1, Lcom/worklight/androidgap/plugin/WLGPSListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

    invoke-virtual {v1, v0}, Lcom/worklight/androidgap/plugin/WLGPSListener;->clearWatch(Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;

    iget-object v1, v1, Lcom/worklight/androidgap/plugin/WLNetworkListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;

    invoke-virtual {v1, v0}, Lcom/worklight/androidgap/plugin/WLNetworkListener;->clearWatch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getListener(Lorg/json/JSONArray;IILorg/apache/cordova/api/CallbackContext;)Lcom/worklight/androidgap/plugin/WLLocationListener;
    .locals 10
    .parameter "args"
    .parameter "enableHighAccuracyIndex"
    .parameter "desiredAccuracyIndex"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x3

    .line 131
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    .line 132
    .local v4, enableHighAccuracy:Z
    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    .line 134
    .local v2, criteria:Landroid/location/Criteria;
    if-eqz v4, :cond_2

    .line 135
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 136
    .local v3, desiredAccuracy:I
    const/16 v9, 0x64

    if-ge v3, v9, :cond_0

    move v1, v6

    .line 142
    .end local v3           #desiredAccuracy:I
    .local v1, accuracy:I
    :goto_0
    invoke-virtual {v2, v1}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 143
    iget-object v9, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v9, v2, v8}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, provider:Ljava/lang/String;
    if-ne v1, v6, :cond_3

    .line 147
    const-string v0, "ACCURACY_HIGH"

    .line 155
    .local v0, accName:Ljava/lang/String;
    :goto_1
    if-nez v5, :cond_5

    .line 156
    sget v6, Lcom/worklight/androidgap/plugin/WLLocationListener;->PERMISSION_DENIED:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Android couldn\'t find a location provider for accuracy level "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " according to permissions in the Manifest and provider enablements in the device settings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, p4, v8}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->fail(ILjava/lang/String;Lorg/apache/cordova/api/CallbackContext;Z)V

    .line 157
    const/4 v6, 0x0

    .line 166
    :goto_2
    return-object v6

    .line 136
    .end local v0           #accName:Ljava/lang/String;
    .end local v1           #accuracy:I
    .end local v5           #provider:Ljava/lang/String;
    .restart local v3       #desiredAccuracy:I
    :cond_0
    const/16 v9, 0x1f4

    if-gt v3, v9, :cond_1

    move v1, v7

    goto :goto_0

    :cond_1
    move v1, v8

    goto :goto_0

    .line 139
    .end local v3           #desiredAccuracy:I
    :cond_2
    const/4 v1, 0x1

    .restart local v1       #accuracy:I
    goto :goto_0

    .line 149
    .restart local v5       #provider:Ljava/lang/String;
    :cond_3
    if-ne v1, v7, :cond_4

    .line 150
    const-string v0, "ACCURACY_MEDIUM"

    .restart local v0       #accName:Ljava/lang/String;
    goto :goto_1

    .line 153
    .end local v0           #accName:Ljava/lang/String;
    :cond_4
    const-string v0, "ACCURACY_LOW"

    .restart local v0       #accName:Ljava/lang/String;
    goto :goto_1

    .line 160
    :cond_5
    const-string v7, "gps"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 161
    iget-object v6, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

    goto :goto_2

    .line 163
    :cond_6
    if-ne v1, v6, :cond_7

    .line 164
    const-string v6, "WL Geolocation Plugin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Network provider selected for accuracy level "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Check the manifest for the ACCESS_FINE_LOCATION permission"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_7
    iget-object v6, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;

    goto :goto_2
.end method

.method private getLocation(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 13
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 100
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    .line 102
    .local v5, maximumAge:I
    iget-object v9, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

    invoke-virtual {v9}, Lcom/worklight/androidgap/plugin/WLGPSListener;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v2

    .line 103
    .local v2, lastFromGPS:Landroid/location/Location;
    iget-object v9, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;

    invoke-virtual {v9}, Lcom/worklight/androidgap/plugin/WLNetworkListener;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v3

    .line 104
    .local v3, lastFromNetwork:Landroid/location/Location;
    const/4 v1, 0x0

    .line 105
    .local v1, last:Landroid/location/Location;
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-ltz v9, :cond_1

    move-object v1, v2

    .line 114
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    int-to-long v11, v5

    cmp-long v9, v9, v11

    if-gtz v9, :cond_4

    .line 115
    new-instance v6, Lorg/apache/cordova/api/PluginResult;

    sget-object v8, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {p0, v1}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->returnLocationJSON(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 116
    .local v6, result:Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {p2, v6}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 127
    .end local v6           #result:Lorg/apache/cordova/api/PluginResult;
    :goto_1
    return v7

    :cond_1
    move-object v1, v3

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    if-eqz v2, :cond_3

    .line 108
    move-object v1, v2

    goto :goto_0

    .line 109
    :cond_3
    if-eqz v3, :cond_0

    .line 110
    move-object v1, v3

    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, id:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-direct {p0, p1, v7, v9, p2}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->getListener(Lorg/json/JSONArray;IILorg/apache/cordova/api/CallbackContext;)Lcom/worklight/androidgap/plugin/WLLocationListener;

    move-result-object v4

    .line 123
    .local v4, listener:Lcom/worklight/androidgap/plugin/WLLocationListener;
    if-nez v4, :cond_5

    move v7, v8

    .line 124
    goto :goto_1

    .line 126
    :cond_5
    invoke-virtual {v4, v0, p2, v5}, Lcom/worklight/androidgap/plugin/WLLocationListener;->addCallback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;I)V

    goto :goto_1
.end method

.method private removeCallback(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 2
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, id:Ljava/lang/String;
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

    iget-object v1, v1, Lcom/worklight/androidgap/plugin/WLGPSListener;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

    invoke-virtual {v1, v0}, Lcom/worklight/androidgap/plugin/WLGPSListener;->removeCallback(Ljava/lang/String;)V

    .line 200
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;

    iget-object v1, v1, Lcom/worklight/androidgap/plugin/WLNetworkListener;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;

    invoke-virtual {v1, v0}, Lcom/worklight/androidgap/plugin/WLNetworkListener;->removeCallback(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 3
    .parameter "action"
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 76
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->locationManager:Landroid/location/LocationManager;

    .line 78
    new-instance v0, Lcom/worklight/androidgap/plugin/WLNetworkListener;

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->locationManager:Landroid/location/LocationManager;

    invoke-direct {v0, v2, p0}, Lcom/worklight/androidgap/plugin/WLNetworkListener;-><init>(Landroid/location/LocationManager;Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;)V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;

    .line 79
    new-instance v0, Lcom/worklight/androidgap/plugin/WLGPSListener;

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->locationManager:Landroid/location/LocationManager;

    invoke-direct {v0, v2, p0}, Lcom/worklight/androidgap/plugin/WLGPSListener;-><init>(Landroid/location/LocationManager;Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;)V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

    .line 82
    :cond_0
    const-string v0, "getLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-direct {p0, p2, p3}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->getLocation(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z

    move v0, v1

    .line 95
    :goto_0
    return v0

    .line 85
    :cond_1
    const-string v0, "addWatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    invoke-direct {p0, p2, p3}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->addWatch(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z

    move v0, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const-string v0, "clearWatch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-direct {p0, p2, p3}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->clearWatch(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z

    move v0, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const-string v0, "removeCallback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    invoke-direct {p0, p2, p3}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->removeCallback(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fail(ILjava/lang/String;Lorg/apache/cordova/api/CallbackContext;Z)V
    .locals 7
    .parameter "code"
    .parameter "msg"
    .parameter "callbackContext"
    .parameter "keepCallback"

    .prologue
    .line 259
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 260
    .local v2, obj:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 262
    .local v0, backup:Ljava/lang/String;
    :try_start_0
    const-string v4, "code"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 263
    const-string v4, "message"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    if-eqz v2, :cond_0

    .line 270
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 275
    .local v3, result:Lorg/apache/cordova/api/PluginResult;
    :goto_1
    invoke-virtual {v3, p4}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 276
    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 277
    return-void

    .line 264
    .end local v3           #result:Lorg/apache/cordova/api/PluginResult;
    :catch_0
    move-exception v1

    .line 265
    .local v1, e:Lorg/json/JSONException;
    const/4 v2, 0x0

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\'code\':"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'message\':\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    const-string v6, "\'"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .restart local v3       #result:Lorg/apache/cordova/api/PluginResult;
    goto :goto_1
.end method

.method public isGlobalListener(Lcom/worklight/androidgap/plugin/WLLocationListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 280
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 283
    :cond_1
    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;

    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/WLNetworkListener;->destroy()V

    .line 209
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->networkListener:Lcom/worklight/androidgap/plugin/WLNetworkListener;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/WLGPSListener;->destroy()V

    .line 213
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->gpsListener:Lcom/worklight/androidgap/plugin/WLGPSListener;

    .line 215
    :cond_1
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->onDestroy()V

    .line 222
    return-void
.end method

.method public returnLocationJSON(Landroid/location/Location;)Lorg/json/JSONObject;
    .locals 7
    .parameter "loc"

    .prologue
    const/4 v2, 0x0

    .line 225
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 228
    .local v1, o:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 229
    const-string v3, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 230
    const-string v4, "altitude"

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v3, "accuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 232
    const-string v3, "heading"

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v2, "velocity"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 234
    const-string v2, "timestamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_1
    return-object v1

    :cond_1
    move-object v3, v2

    .line 230
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public win(Landroid/location/Location;Lorg/apache/cordova/api/CallbackContext;Z)V
    .locals 3
    .parameter "loc"
    .parameter "callbackContext"
    .parameter "keepCallback"

    .prologue
    .line 244
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->returnLocationJSON(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 245
    .local v0, result:Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {v0, p3}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 246
    invoke-virtual {p2, v0}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 247
    return-void
.end method
