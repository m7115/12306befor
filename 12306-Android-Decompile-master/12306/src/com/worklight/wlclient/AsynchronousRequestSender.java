package com.worklight.wlclient;

import com.worklight.wlclient.api.WLResponseListener;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpRequestBase;

public class AsynchronousRequestSender
{
  private static final ExecutorService pool = Executors.newFixedThreadPool(6);
  private static AsynchronousRequestSender sender;

  public static HttpClient getHttpClient()
  {
    return HttpClientFactory.getInstance(null);
  }

  public static AsynchronousRequestSender getInstance()
  {
    try
    {
      if (sender != null);
      for (AsynchronousRequestSender localAsynchronousRequestSender = sender; ; localAsynchronousRequestSender = sender)
      {
        return localAsynchronousRequestSender;
        sender = new AsynchronousRequestSender();
      }
    }
    finally
    {
    }
  }

  public static void releaseHttpClient()
  {
    HttpClientFactory.releaseInstance();
  }

  public void sendCustomRequestAsync(HttpRequestBase paramHttpRequestBase, int paramInt, WLResponseListener paramWLResponseListener)
  {
    pool.execute(new InternalCustomRequestSender(paramHttpRequestBase, paramInt, paramWLResponseListener));
  }

  public void sendRequestAsync(WLRequest paramWLRequest)
  {
    pool.execute(new InternalRequestSender(paramWLRequest));
  }
}

 