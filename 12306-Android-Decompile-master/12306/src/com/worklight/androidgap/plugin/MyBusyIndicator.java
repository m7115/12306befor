package com.worklight.androidgap.plugin;

import android.app.Activity;
import android.app.ProgressDialog;
import org.apache.cordova.api.CordovaInterface;

public class MyBusyIndicator extends BusyIndicator
{
  private boolean isShowing = false;
  private ProgressDialog spinnerDialog = null;

  public void hide()
  {
    if (this.spinnerDialog != null)
    {
      this.spinnerDialog.dismiss();
      this.spinnerDialog = null;
    }
    this.isShowing = false;
  }

  public boolean isShowing()
  {
    return this.isShowing;
  }

  public void show(final String paramString)
  {
    if (this.spinnerDialog != null)
    {
      this.spinnerDialog.dismiss();
      this.spinnerDialog = null;
    }
    Runnable local1 = new Runnable()
    {
      public void run()
      {
        MyBusyIndicator.this.spinnerDialog = new ProgressDialog(MyBusyIndicator.this.cordova.getActivity());
        MyBusyIndicator.this.spinnerDialog.setCancelable(true);
        MyBusyIndicator.this.spinnerDialog.setCanceledOnTouchOutside(false);
        MyBusyIndicator.this.spinnerDialog.setIndeterminate(true);
        MyBusyIndicator.this.spinnerDialog.setMessage(paramString + " ");
        MyBusyIndicator.this.spinnerDialog.show();
        MyBusyIndicator.this.isShowing = true;
      }
    };
    this.cordova.getActivity().runOnUiThread(local1);
  }
}

 