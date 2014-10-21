package com.worklight.androidgap;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;

public class WLForegroundService extends Service
{
  public IBinder onBind(Intent paramIntent)
  {
    return new ForegroundBinder();
  }

  public void onDestroy()
  {
    super.onDestroy();
    Log.i("WLKeepAlive", "WLKeepAliveService destroyed");
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    Log.i("WLKeepAlive", "WLKeepAliveService started");
    return 1;
  }

  public class ForegroundBinder extends Binder
  {
    public ForegroundBinder()
    {
    }

    public void makeForeground(int paramInt, Notification paramNotification)
    {
      WLForegroundService.this.startForeground(paramInt, paramNotification);
    }
  }
}

 