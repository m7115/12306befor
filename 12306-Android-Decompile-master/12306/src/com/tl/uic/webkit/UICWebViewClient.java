package com.tl.uic.webkit;

import android.webkit.WebView;
import android.webkit.WebViewClient;

public class UICWebViewClient extends WebViewClient
{
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    return true;
  }
}

 