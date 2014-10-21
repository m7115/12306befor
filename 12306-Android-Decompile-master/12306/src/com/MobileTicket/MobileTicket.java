package com.MobileTicket;

import android.os.Build.VERSION;
import android.os.Bundle;
import com.worklight.androidgap.SSLWLWebView;
import com.worklight.androidgap.WLDroidGap;
import org.apache.cordova.CordovaChromeClient;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.CordovaWebViewClient;
import org.apache.cordova.IceCreamCordovaWebViewClient;
import org.apache.cordova.api.PluginManager;

public class MobileTicket extends WLDroidGap
{
  public static final int HONEYCOMB = 11;

  protected void bindBrowser(CordovaWebView paramCordovaWebView, boolean paramBoolean)
  {
    super.bindBrowser(paramCordovaWebView, paramBoolean);
    paramCordovaWebView.pluginManager.addService("WebResourcesDownloader", "com.worklight.androidgap.plugin.SSLWebResourcesDownloaderPlugin");
    paramCordovaWebView.pluginManager.addService("NativeBusyIndicator", "com.worklight.androidgap.plugin.MyBusyIndicator");
  }

  public void init()
  {
    SSLWLWebView localSSLWLWebView = new SSLWLWebView(this);
    if (Build.VERSION.SDK_INT < 11);
    for (Object localObject = new CordovaWebViewClient(this, localSSLWLWebView); ; localObject = new IceCreamCordovaWebViewClient(this, localSSLWLWebView))
    {
      super.init(localSSLWLWebView, (CordovaWebViewClient)localObject, new CordovaChromeClient(this, localSSLWLWebView));
      return;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onRestart()
  {
    super.onRestart();
    if (WebPayActivity.isCallJSFlag())
    {
      this.appView.loadUrl("javascript:orderComplete()");
      WebPayActivity.setCallJSFlag(false);
    }
  }

  public void onWLInitCompleted(Bundle paramBundle)
  {
    super.setIntegerProperty("splashscreen", 2130837513);
    super.loadUrl(getWebMainFilePath());
  }
}
