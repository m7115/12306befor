package com.tl.uic.model;

import java.io.Serializable;

public enum ScreenviewType
  implements Serializable
{
  private int value;

  static
  {
    ScreenviewType[] arrayOfScreenviewType = new ScreenviewType[2];
    arrayOfScreenviewType[0] = LOAD;
    arrayOfScreenviewType[1] = UNLOAD;
  }

  private ScreenviewType(int arg3)
  {
    int j;
    this.value = j;
  }

  public int getValue()
  {
    return this.value;
  }
}

 