package com.google.common.base;

import com.google.common.annotations.Beta;

@Beta
public abstract interface Ticker
{
  public abstract long read();
}

 