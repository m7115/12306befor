.class public abstract Lcom/worklight/androidgap/plugin/WLLocationListener;
.super Ljava/lang/Object;
.source "WLLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field public static PERMISSION_DENIED:I

.field public static POSITION_UNAVAILABLE:I

.field public static TIMEOUT:I


# instance fields
.field private TAG:Ljava/lang/String;

.field protected callbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/api/CallbackContext;",
            ">;"
        }
    .end annotation
.end field

.field protected locationManager:Landroid/location/LocationManager;

.field protected maximumAge:I

.field protected minChangeDistance:I

.field protected minChangeTime:I

.field private owner:Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;

.field protected provider:Ljava/lang/String;

.field protected running:Z

.field protected watches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/api/CallbackContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/worklight/androidgap/plugin/WLLocationListener;->PERMISSION_DENIED:I

    .line 47
    const/4 v0, 0x2

    sput v0, Lcom/worklight/androidgap/plugin/WLLocationListener;->POSITION_UNAVAILABLE:I

    .line 48
    const/4 v0, 0x3

    sput v0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationManager;Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;Ljava/lang/String;)V
    .locals 2
    .parameter "manager"
    .parameter "broker"
    .parameter "provider"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->running:Z

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->watches:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->callbacks:Ljava/util/HashMap;

    .line 57
    const-string v0, "[Worklight Location Listener]"

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TAG:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->maximumAge:I

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->minChangeDistance:I

    .line 60
    const v0, 0xea60

    iput v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->minChangeTime:I

    .line 64
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->locationManager:Landroid/location/LocationManager;

    .line 65
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->owner:Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Listener]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TAG:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->provider:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->running:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->running:Z

    .line 252
    :cond_0
    return-void
.end method

.method private win(Landroid/location/Location;)V
    .locals 7
    .parameter "loc"

    .prologue
    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 97
    .local v0, age:J
    iget v3, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->maximumAge:I

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Acquired location age: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " milliseconds. More than maximumAge of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->maximumAge:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " milliseconds. Ignoring."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 102
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/cordova/api/CallbackContext;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->owner:Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/cordova/api/CallbackContext;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v3, v5}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->win(Landroid/location/Location;Lorg/apache/cordova/api/CallbackContext;Z)V

    goto :goto_1

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->owner:Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;

    invoke-virtual {v3, p0}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->isGlobalListener(Lcom/worklight/androidgap/plugin/WLLocationListener;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 106
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TAG:Ljava/lang/String;

    const-string v4, "Stopping global listener"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WLLocationListener;->stop()V

    .line 109
    :cond_3
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 111
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 112
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    iget-object v4, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->owner:Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/cordova/api/CallbackContext;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v3, v5}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->win(Landroid/location/Location;Lorg/apache/cordova/api/CallbackContext;Z)V

    goto :goto_2

    .line 116
    :cond_4
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WLLocationListener;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;I)V
    .locals 2
    .parameter "timerId"
    .parameter "callbackContext"
    .parameter "maximumAge"

    .prologue
    .line 194
    iput p3, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->maximumAge:I

    .line 195
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {p0}, Lcom/worklight/androidgap/plugin/WLLocationListener;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/worklight/androidgap/plugin/WLLocationListener;->start()V

    .line 199
    :cond_0
    return-void
.end method

.method public addWatch(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;II)V
    .locals 1
    .parameter "timerId"
    .parameter "callbackContext"
    .parameter "minChangeDistance"
    .parameter "minChangeTime"

    .prologue
    .line 184
    iput p3, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->minChangeDistance:I

    .line 185
    iput p4, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->minChangeTime:I

    .line 186
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WLLocationListener;->stop()V

    .line 189
    invoke-virtual {p0}, Lcom/worklight/androidgap/plugin/WLLocationListener;->start()V

    .line 191
    return-void
.end method

.method public clearWatch(Ljava/lang/String;)V
    .locals 1
    .parameter "timerId"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {p0}, Lcom/worklight/androidgap/plugin/WLLocationListener;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WLLocationListener;->stop()V

    .line 206
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WLLocationListener;->stop()V

    .line 219
    return-void
.end method

.method protected fail(ILjava/lang/String;)V
    .locals 4
    .parameter "code"
    .parameter "message"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/cordova/api/CallbackContext;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->owner:Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/cordova/api/CallbackContext;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->fail(ILjava/lang/String;Lorg/apache/cordova/api/CallbackContext;Z)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->owner:Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;

    invoke-virtual {v1, p0}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->isGlobalListener(Lcom/worklight/androidgap/plugin/WLLocationListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TAG:Ljava/lang/String;

    const-string v2, "Stopping global listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WLLocationListener;->stop()V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 89
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->owner:Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/cordova/api/CallbackContext;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;->fail(ILjava/lang/String;Lorg/apache/cordova/api/CallbackContext;Z)V

    goto :goto_1

    .line 93
    :cond_2
    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TAG:Ljava/lang/String;

    const-string v1, "The location has been updated!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/WLLocationListener;->win(Landroid/location/Location;)V

    .line 174
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget v0, Lcom/worklight/androidgap/plugin/WLLocationListener;->POSITION_UNAVAILABLE:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provider disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/plugin/WLLocationListener;->fail(ILjava/lang/String;)V

    .line 133
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The status of the provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-nez p2, :cond_0

    .line 156
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is OUT OF SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget v0, Lcom/worklight/androidgap/plugin/WLLocationListener;->POSITION_UNAVAILABLE:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of service."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/plugin/WLLocationListener;->fail(ILjava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is AVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeCallback(Ljava/lang/String;)V
    .locals 1
    .parameter "timerId"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {p0}, Lcom/worklight/androidgap/plugin/WLLocationListener;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WLLocationListener;->stop()V

    .line 213
    :cond_0
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->watches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected start()V
    .locals 6

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->running:Z

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->running:Z

    .line 235
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget v2, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->minChangeTime:I

    int-to-long v2, v2

    iget v4, p0, Lcom/worklight/androidgap/plugin/WLLocationListener;->minChangeDistance:I

    int-to-float v4, v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    sget v0, Lcom/worklight/androidgap/plugin/WLLocationListener;->POSITION_UNAVAILABLE:I

    const-string v1, "Network provider is not available."

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/plugin/WLLocationListener;->fail(ILjava/lang/String;)V

    goto :goto_0
.end method
