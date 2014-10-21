package org.apache.cordova;

import android.os.Bundle;

public class StandAlone extends DroidGap
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    super.loadUrl("file:///android_asset/www/index.html");
  }
}

 