package com.tl.uic.model;

import org.json.JSONObject;

public abstract interface JsonBase extends ModelBase
{
  public static final int BIT_32 = 32;
  public static final int PRIME = 31;

  public abstract JSONObject getJSON();
}

 