package com.worklight.androidgap.plugin;

import android.location.LocationManager;

public class WLGPSListener extends WLLocationListener
{
  public WLGPSListener(LocationManager paramLocationManager, WLGeolocationPlugin paramWLGeolocationPlugin)
  {
    super(paramLocationManager, paramWLGeolocationPlugin, "gps");
  }

  protected void start()
  {
    if (!this.running)
    {
      if (this.locationManager.getProvider("gps") != null)
      {
        this.running = true;
        this.locationManager.requestLocationUpdates("gps", this.minChangeTime, this.minChangeDistance, this);
      }
    }
    else
      return;
    fail(WLLocationListener.POSITION_UNAVAILABLE, "GPS provider is not available.");
  }
}

 