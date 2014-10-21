package com.worklight.wlclient.push;

import android.content.Context;
import com.google.android.gcm.GCMBroadcastReceiver;

public class WLBroadcastReceiver extends GCMBroadcastReceiver
{
  private static final String INTENT_SERVICE = "com.worklight.wlclient.push.GCMIntentService";

  protected String getGCMIntentServiceClassName(Context paramContext)
  {
    return "com.worklight.wlclient.push.GCMIntentService";
  }
}

 