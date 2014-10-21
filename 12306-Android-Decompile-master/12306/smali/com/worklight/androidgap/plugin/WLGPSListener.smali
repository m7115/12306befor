.class public Lcom/worklight/androidgap/plugin/WLGPSListener;
.super Lcom/worklight/androidgap/plugin/WLLocationListener;
.source "WLGPSListener.java"


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;)V
    .locals 1
    .parameter "locationManager"
    .parameter "m"

    .prologue
    .line 42
    const-string v0, "gps"

    invoke-direct {p0, p1, p2, v0}, Lcom/worklight/androidgap/plugin/WLLocationListener;-><init>(Landroid/location/LocationManager;Lcom/worklight/androidgap/plugin/WLGeolocationPlugin;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected start()V
    .locals 6

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLGPSListener;->running:Z

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLGPSListener;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLGPSListener;->running:Z

    .line 55
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLGPSListener;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget v2, p0, Lcom/worklight/androidgap/plugin/WLGPSListener;->minChangeTime:I

    int-to-long v2, v2

    iget v4, p0, Lcom/worklight/androidgap/plugin/WLGPSListener;->minChangeDistance:I

    int-to-float v4, v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    sget v0, Lcom/worklight/androidgap/plugin/WLLocationListener;->POSITION_UNAVAILABLE:I

    const-string v1, "GPS provider is not available."

    invoke-virtual {p0, v0, v1}, Lcom/worklight/androidgap/plugin/WLGPSListener;->fail(ILjava/lang/String;)V

    goto :goto_0
.end method
