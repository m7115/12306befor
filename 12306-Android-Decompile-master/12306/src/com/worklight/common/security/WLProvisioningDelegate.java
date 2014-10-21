package com.worklight.common.security;

import android.content.Context;

public abstract interface WLProvisioningDelegate
{
  public abstract void sendCSR(String paramString, Context paramContext);
}

 