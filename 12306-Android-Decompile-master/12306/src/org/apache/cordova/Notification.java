package org.apache.cordova;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Vibrator;
import android.widget.EditText;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Notification extends CordovaPlugin
{
  public int confirmResult = -1;
  public ProgressDialog progressDialog = null;
  public ProgressDialog spinnerDialog = null;

  public void activityStart(final String paramString1, final String paramString2)
  {
    try
    {
      if (this.spinnerDialog != null)
      {
        this.spinnerDialog.dismiss();
        this.spinnerDialog = null;
      }
      Runnable local4 = new Runnable()
      {
        public void run()
        {
          Notification.this.spinnerDialog = ProgressDialog.show(this.val$cordova.getActivity(), paramString1, paramString2, true, true, new DialogInterface.OnCancelListener()
          {
            public void onCancel(DialogInterface paramAnonymous2DialogInterface)
            {
              Notification.this.spinnerDialog = null;
            }
          });
        }
      };
      this.cordova.getActivity().runOnUiThread(local4);
      return;
    }
    finally
    {
    }
  }

  public void activityStop()
  {
    try
    {
      if (this.spinnerDialog != null)
      {
        this.spinnerDialog.dismiss();
        this.spinnerDialog = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void alert(final String paramString1, final String paramString2, final String paramString3, final CallbackContext paramCallbackContext)
  {
    try
    {
      Runnable local1 = new Runnable()
      {
        public void run()
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.val$cordova.getActivity());
          localBuilder.setMessage(paramString1);
          localBuilder.setTitle(paramString2);
          localBuilder.setCancelable(true);
          localBuilder.setPositiveButton(paramString3, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              paramAnonymous2DialogInterface.dismiss();
              Notification.1.this.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 0));
            }
          });
          localBuilder.setOnCancelListener(new DialogInterface.OnCancelListener()
          {
            public void onCancel(DialogInterface paramAnonymous2DialogInterface)
            {
              paramAnonymous2DialogInterface.dismiss();
              Notification.1.this.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 0));
            }
          });
          localBuilder.create();
          localBuilder.show();
        }
      };
      this.cordova.getActivity().runOnUiThread(local1);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void beep(long paramLong)
  {
    Uri localUri = RingtoneManager.getDefaultUri(2);
    Ringtone localRingtone = RingtoneManager.getRingtone(this.cordova.getActivity().getBaseContext(), localUri);
    if (localRingtone != null)
      for (long l1 = 0L; l1 < paramLong; l1 += 1L)
      {
        localRingtone.play();
        long l2 = 5000L;
        while ((localRingtone.isPlaying()) && (l2 > 0L))
        {
          l2 -= 100L;
          try
          {
            Thread.sleep(100L);
          }
          catch (InterruptedException localInterruptedException)
          {
          }
        }
      }
  }

  public void confirm(final String paramString1, final String paramString2, final JSONArray paramJSONArray, final CallbackContext paramCallbackContext)
  {
    try
    {
      Runnable local2 = new Runnable()
      {
        public void run()
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.val$cordova.getActivity());
          localBuilder.setMessage(paramString1);
          localBuilder.setTitle(paramString2);
          localBuilder.setCancelable(true);
          if (paramJSONArray.length() > 0);
          try
          {
            localBuilder.setNegativeButton(paramJSONArray.getString(0), new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                paramAnonymous2DialogInterface.dismiss();
                Notification.2.this.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 1));
              }
            });
            label72: if (paramJSONArray.length() > 1);
            try
            {
              localBuilder.setNeutralButton(paramJSONArray.getString(1), new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  paramAnonymous2DialogInterface.dismiss();
                  Notification.2.this.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 2));
                }
              });
              label104: if (paramJSONArray.length() > 2);
              try
              {
                localBuilder.setPositiveButton(paramJSONArray.getString(2), new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                  {
                    paramAnonymous2DialogInterface.dismiss();
                    Notification.2.this.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 3));
                  }
                });
                label136: localBuilder.setOnCancelListener(new DialogInterface.OnCancelListener()
                {
                  public void onCancel(DialogInterface paramAnonymous2DialogInterface)
                  {
                    paramAnonymous2DialogInterface.dismiss();
                    Notification.2.this.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, 0));
                  }
                });
                localBuilder.create();
                localBuilder.show();
                return;
              }
              catch (JSONException localJSONException1)
              {
                break label136;
              }
            }
            catch (JSONException localJSONException2)
            {
              break label104;
            }
          }
          catch (JSONException localJSONException3)
          {
            break label72;
          }
        }
      };
      this.cordova.getActivity().runOnUiThread(local2);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    if (paramString.equals("beep"))
      beep(paramJSONArray.getLong(0));
    while (true)
    {
      paramCallbackContext.success();
      return true;
      if (paramString.equals("vibrate"))
      {
        vibrate(paramJSONArray.getLong(0));
      }
      else
      {
        if (paramString.equals("alert"))
        {
          alert(paramJSONArray.getString(0), paramJSONArray.getString(1), paramJSONArray.getString(2), paramCallbackContext);
          return true;
        }
        if (paramString.equals("confirm"))
        {
          confirm(paramJSONArray.getString(0), paramJSONArray.getString(1), paramJSONArray.getJSONArray(2), paramCallbackContext);
          return true;
        }
        if (paramString.equals("prompt"))
        {
          prompt(paramJSONArray.getString(0), paramJSONArray.getString(1), paramJSONArray.getJSONArray(2), paramCallbackContext);
          return true;
        }
        if (paramString.equals("activityStart"))
        {
          activityStart(paramJSONArray.getString(0), paramJSONArray.getString(1));
        }
        else if (paramString.equals("activityStop"))
        {
          activityStop();
        }
        else if (paramString.equals("progressStart"))
        {
          progressStart(paramJSONArray.getString(0), paramJSONArray.getString(1));
        }
        else if (paramString.equals("progressValue"))
        {
          progressValue(paramJSONArray.getInt(0));
        }
        else
        {
          if (!paramString.equals("progressStop"))
            break;
          progressStop();
        }
      }
    }
    return false;
  }

  public void progressStart(final String paramString1, final String paramString2)
  {
    try
    {
      if (this.progressDialog != null)
      {
        this.progressDialog.dismiss();
        this.progressDialog = null;
      }
      Runnable local5 = new Runnable()
      {
        public void run()
        {
          jdField_this.progressDialog = new ProgressDialog(this.val$cordova.getActivity());
          jdField_this.progressDialog.setProgressStyle(1);
          jdField_this.progressDialog.setTitle(paramString1);
          jdField_this.progressDialog.setMessage(paramString2);
          jdField_this.progressDialog.setCancelable(true);
          jdField_this.progressDialog.setMax(100);
          jdField_this.progressDialog.setProgress(0);
          jdField_this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener()
          {
            public void onCancel(DialogInterface paramAnonymous2DialogInterface)
            {
              Notification.5.this.val$notification.progressDialog = null;
            }
          });
          jdField_this.progressDialog.show();
        }
      };
      this.cordova.getActivity().runOnUiThread(local5);
      return;
    }
    finally
    {
    }
  }

  public void progressStop()
  {
    try
    {
      if (this.progressDialog != null)
      {
        this.progressDialog.dismiss();
        this.progressDialog = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void progressValue(int paramInt)
  {
    try
    {
      if (this.progressDialog != null)
        this.progressDialog.setProgress(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void prompt(final String paramString1, final String paramString2, final JSONArray paramJSONArray, final CallbackContext paramCallbackContext)
  {
    try
    {
      final CordovaInterface localCordovaInterface = this.cordova;
      Runnable local3 = new Runnable()
      {
        public void run()
        {
          AlertDialog.Builder localBuilder = new AlertDialog.Builder(localCordovaInterface.getActivity());
          localBuilder.setMessage(paramString1);
          localBuilder.setTitle(paramString2);
          localBuilder.setCancelable(true);
          localBuilder.setView(this.val$promptInput);
          final JSONObject localJSONObject = new JSONObject();
          if (paramJSONArray.length() > 0);
          try
          {
            localBuilder.setNegativeButton(paramJSONArray.getString(0), new DialogInterface.OnClickListener()
            {
              public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                paramAnonymous2DialogInterface.dismiss();
                try
                {
                  localJSONObject.put("buttonIndex", 1);
                  localJSONObject.put("input1", Notification.3.this.val$promptInput.getText());
                  Notification.3.this.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, localJSONObject));
                  return;
                }
                catch (JSONException localJSONException)
                {
                  while (true)
                    localJSONException.printStackTrace();
                }
              }
            });
            label92: if (paramJSONArray.length() > 1);
            try
            {
              localBuilder.setNeutralButton(paramJSONArray.getString(1), new DialogInterface.OnClickListener()
              {
                public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  paramAnonymous2DialogInterface.dismiss();
                  try
                  {
                    localJSONObject.put("buttonIndex", 2);
                    localJSONObject.put("input1", Notification.3.this.val$promptInput.getText());
                    Notification.3.this.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, localJSONObject));
                    return;
                  }
                  catch (JSONException localJSONException)
                  {
                    while (true)
                      localJSONException.printStackTrace();
                  }
                }
              });
              label126: if (paramJSONArray.length() > 2);
              try
              {
                localBuilder.setPositiveButton(paramJSONArray.getString(2), new DialogInterface.OnClickListener()
                {
                  public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                  {
                    paramAnonymous2DialogInterface.dismiss();
                    try
                    {
                      localJSONObject.put("buttonIndex", 3);
                      localJSONObject.put("input1", Notification.3.this.val$promptInput.getText());
                      Notification.3.this.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, localJSONObject));
                      return;
                    }
                    catch (JSONException localJSONException)
                    {
                      while (true)
                        localJSONException.printStackTrace();
                    }
                  }
                });
                label160: localBuilder.setOnCancelListener(new DialogInterface.OnCancelListener()
                {
                  public void onCancel(DialogInterface paramAnonymous2DialogInterface)
                  {
                    paramAnonymous2DialogInterface.dismiss();
                    try
                    {
                      localJSONObject.put("buttonIndex", 0);
                      localJSONObject.put("input1", Notification.3.this.val$promptInput.getText());
                      Notification.3.this.val$callbackContext.sendPluginResult(new PluginResult(PluginResult.Status.OK, localJSONObject));
                      return;
                    }
                    catch (JSONException localJSONException)
                    {
                      while (true)
                        localJSONException.printStackTrace();
                    }
                  }
                });
                localBuilder.create();
                localBuilder.show();
                return;
              }
              catch (JSONException localJSONException1)
              {
                break label160;
              }
            }
            catch (JSONException localJSONException2)
            {
              break label126;
            }
          }
          catch (JSONException localJSONException3)
          {
            break label92;
          }
        }
      };
      this.cordova.getActivity().runOnUiThread(local3);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void vibrate(long paramLong)
  {
    if (paramLong == 0L)
      paramLong = 500L;
    ((Vibrator)this.cordova.getActivity().getSystemService("vibrator")).vibrate(paramLong);
  }
}

 