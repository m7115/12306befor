package com.tl.uic.util;

import android.os.AsyncTask;
import com.tl.uic.EnvironmentalData;
import com.tl.uic.TLFCache;
import com.tl.uic.Tealeaf;

public class ClientStateTask extends AsyncTask<Void, Void, Boolean>
{
  protected final Boolean doInBackground(Void[] paramArrayOfVoid)
  {
    Object localObject = Boolean.valueOf(false);
    try
    {
      if (TLFCache.getEnvironmentalData() == null);
      Boolean localBoolean;
      for (localObject = Boolean.valueOf(false); ; localObject = localBoolean)
      {
        LogInternal.log("Did Client State change?: " + localObject);
        if (!Tealeaf.isApplicationInBackground().booleanValue())
          break;
        Tealeaf.onPauseNoActivityInForeground();
        return localObject;
        TLFCache.getEnvironmentalData().onResume();
        localBoolean = TLFCache.getEnvironmentalData().hasClientStateChanged();
      }
    }
    catch (Exception localException)
    {
      LogInternal.logException(localException);
    }
    return localObject;
  }
}

 