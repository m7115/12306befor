package com.worklight.wlclient;

import com.worklight.wlclient.api.WLFailResponse;
import com.worklight.wlclient.api.WLResponse;

public abstract interface WLRequestListener
{
  public abstract void onFailure(WLFailResponse paramWLFailResponse);

  public abstract void onSuccess(WLResponse paramWLResponse);
}

 