package com.worklight.androidgap.plugin;

import android.location.LocationManager;

public class WLNetworkListener extends WLLocationListener
{
  public WLNetworkListener(LocationManager paramLocationManager, WLGeolocationPlugin paramWLGeolocationPlugin)
  {
    super(paramLocationManager, paramWLGeolocationPlugin, "network");
  }
}

 