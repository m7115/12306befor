package com.MobileTicket;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class WebPayActivity extends Activity
{
  private static boolean callJSFlag = false;

  public static boolean isCallJSFlag()
  {
    return callJSFlag;
  }

  public static void setCallJSFlag(boolean paramBoolean)
  {
    callJSFlag = paramBoolean;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = new Intent(this, MobileTicket.class);
    setCallJSFlag(true);
    super.startActivity(localIntent);
  }
}
