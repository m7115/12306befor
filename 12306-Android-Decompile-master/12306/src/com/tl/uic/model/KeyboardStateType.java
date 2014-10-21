package com.tl.uic.model;

import java.io.Serializable;

public enum KeyboardStateType
  implements Serializable
{
  private int value;

  static
  {
    KeyboardStateType[] arrayOfKeyboardStateType = new KeyboardStateType[3];
    arrayOfKeyboardStateType[0] = HIDDEN_FALSE;
    arrayOfKeyboardStateType[1] = HIDDEN_TRUE;
    arrayOfKeyboardStateType[2] = UNDEFINED;
  }

  private KeyboardStateType(int arg3)
  {
    int j;
    this.value = j;
  }

  public int getValue()
  {
    return this.value;
  }
}

 