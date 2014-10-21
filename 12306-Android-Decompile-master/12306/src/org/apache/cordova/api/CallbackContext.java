package org.apache.cordova.api;

import android.util.Log;
import org.apache.cordova.CordovaWebView;
import org.json.JSONArray;
import org.json.JSONObject;

public class CallbackContext
{
  private static final String LOG_TAG = "CordovaPlugin";
  private String callbackId;
  private int changingThreads;
  private boolean finished;
  private CordovaWebView webView;

  public CallbackContext(String paramString, CordovaWebView paramCordovaWebView)
  {
    this.callbackId = paramString;
    this.webView = paramCordovaWebView;
  }

  public void error(int paramInt)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.ERROR, paramInt));
  }

  public void error(String paramString)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.ERROR, paramString));
  }

  public void error(JSONObject paramJSONObject)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.ERROR, paramJSONObject));
  }

  public String getCallbackId()
  {
    return this.callbackId;
  }

  public boolean isChangingThreads()
  {
    return this.changingThreads > 0;
  }

  public boolean isFinished()
  {
    return this.finished;
  }

  public void sendPluginResult(PluginResult paramPluginResult)
  {
    try
    {
      if (this.finished)
      {
        Log.w("CordovaPlugin", "Attempted to send a second callback for ID: " + this.callbackId + "\nResult was: " + paramPluginResult.getMessage());
        return;
      }
      if (!paramPluginResult.getKeepCallback());
      for (boolean bool = true; ; bool = false)
      {
        this.finished = bool;
        this.webView.sendPluginResult(paramPluginResult, this.callbackId);
        return;
      }
    }
    finally
    {
    }
  }

  public void success()
  {
    sendPluginResult(new PluginResult(PluginResult.Status.OK));
  }

  public void success(int paramInt)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.OK, paramInt));
  }

  public void success(String paramString)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.OK, paramString));
  }

  public void success(JSONArray paramJSONArray)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.OK, paramJSONArray));
  }

  public void success(JSONObject paramJSONObject)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.OK, paramJSONObject));
  }

  public void success(byte[] paramArrayOfByte)
  {
    sendPluginResult(new PluginResult(PluginResult.Status.OK, paramArrayOfByte));
  }
}

 