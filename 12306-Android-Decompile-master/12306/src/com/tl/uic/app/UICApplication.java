package com.tl.uic.app;

import android.app.Application;
import com.tl.uic.Tealeaf;

public class UICApplication extends Application
{
  private Tealeaf tealeaf;

  public final Tealeaf getTealeaf()
  {
    return this.tealeaf;
  }

  public void onCreate()
  {
    super.onCreate();
    this.tealeaf = new Tealeaf(this);
  }

  public void onLowMemory()
  {
    Tealeaf.onLowMemory();
    super.onLowMemory();
  }

  public void onTerminate()
  {
    Tealeaf.disable();
    super.onTerminate();
  }
}

 