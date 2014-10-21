package org.apache.cordova;

import android.location.LocationManager;

public class NetworkListener extends CordovaLocationListener
{
  public NetworkListener(LocationManager paramLocationManager, GeoBroker paramGeoBroker)
  {
    super(paramLocationManager, paramGeoBroker, "[Cordova NetworkListener]");
  }
}

 