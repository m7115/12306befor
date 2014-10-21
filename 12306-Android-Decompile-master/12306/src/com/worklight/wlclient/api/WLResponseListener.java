package com.worklight.wlclient.api;

public abstract interface WLResponseListener
{
  public abstract void onFailure(WLFailResponse paramWLFailResponse);

  public abstract void onSuccess(WLResponse paramWLResponse);
}

 