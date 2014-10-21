package com.tl.uic.http;

import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

public class TLDefaultHttpClient extends DefaultHttpClient
{
  public TLDefaultHttpClient()
  {
    init(null);
  }

  public TLDefaultHttpClient(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    super(paramClientConnectionManager, paramHttpParams);
    init(null);
  }

  public TLDefaultHttpClient(HttpParams paramHttpParams)
  {
    super(paramHttpParams);
    init(null);
  }

  public TLDefaultHttpClient(HttpParams paramHttpParams, String paramString)
  {
    super(paramHttpParams);
    init(paramString);
  }

  private void init(String paramString)
  {
    TLHttpRequestInterceptor localTLHttpRequestInterceptor = new TLHttpRequestInterceptor(paramString);
    addRequestInterceptor(localTLHttpRequestInterceptor);
    addResponseInterceptor(new TLHttpResponseInterceptor(localTLHttpRequestInterceptor));
  }
}

 