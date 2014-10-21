package com.MobileTicket;

public class CheckCodeUtil
{
  static
  {
    System.loadLibrary("checkcode");
  }

  public static String checkcode(String paramString)
  {
    return checkcode("", paramString);
  }

  public static native String checkcode(String paramString1, String paramString2);
}

