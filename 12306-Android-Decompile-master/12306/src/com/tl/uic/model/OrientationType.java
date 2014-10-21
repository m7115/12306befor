package com.tl.uic.model;

import java.io.Serializable;

public enum OrientationType
  implements Serializable
{
  private int value;

  static
  {
    OrientationType[] arrayOfOrientationType = new OrientationType[4];
    arrayOfOrientationType[0] = LANDSCAPE;
    arrayOfOrientationType[1] = PORTRAIT;
    arrayOfOrientationType[2] = SQUARE;
    arrayOfOrientationType[3] = UNDEFINED;
  }

  private OrientationType(int arg3)
  {
    int j;
    this.value = j;
  }

  public int getValue()
  {
    return this.value;
  }
}

 