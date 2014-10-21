package com.tl.uic.model;

import java.io.Serializable;

public enum ReachabilityType
  implements Serializable
{
  private int value;

  static
  {
    NotReachable = new ReachabilityType("NotReachable", 1, 1);
    ReachableViaWIFI = new ReachabilityType("ReachableViaWIFI", 2, 2);
    ReachableViaWWAN = new ReachabilityType("ReachableViaWWAN", 3, 3);
    ReachabilityType[] arrayOfReachabilityType = new ReachabilityType[4];
    arrayOfReachabilityType[0] = Unknown;
    arrayOfReachabilityType[1] = NotReachable;
    arrayOfReachabilityType[2] = ReachableViaWIFI;
    arrayOfReachabilityType[3] = ReachableViaWWAN;
  }

  private ReachabilityType(int arg3)
  {
    int j;
    this.value = j;
  }

  public int getValue()
  {
    return this.value;
  }
}

 