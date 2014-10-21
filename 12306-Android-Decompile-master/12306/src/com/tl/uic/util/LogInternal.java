package com.tl.uic.util;

import android.util.Log;
import com.tl.uic.Tealeaf;
import java.io.PrintWriter;
import java.io.StringWriter;

public final class LogInternal
{
  public static final int DEBUG = 2;
  public static final int ERROR = 1;
  public static final int INFO = 3;
  public static final int VERBOSE = 5;
  public static final int WARNING = 4;
  private static boolean _isDEBUG = false;
  private static volatile LogInternal _myInstance;

  public static String getExceptionMessage(Throwable paramThrowable, String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramString != null)
    {
      localStringBuffer.append(paramString);
      localStringBuffer.append('\t');
    }
    localStringBuffer.append(paramThrowable.getMessage());
    return localStringBuffer.toString();
  }

  public static String getExceptionString(Throwable paramThrowable, String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramString != null)
    {
      localStringBuffer.append(paramString);
      localStringBuffer.append('\t');
    }
    localStringBuffer.append(paramThrowable.getMessage());
    localStringBuffer.append(getStackTrace(paramThrowable));
    return localStringBuffer.toString();
  }

  public static LogInternal getInstance()
  {
    if (_myInstance == null);
    try
    {
      _myInstance = new LogInternal();
      return _myInstance;
    }
    finally
    {
    }
  }

  public static String getStackTrace(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    return localStringWriter.toString();
  }

  public static String getTLLibErrorExceptionMessage(Throwable paramThrowable, String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer(20);
    localStringBuffer.append("TL Library Error: ");
    if (paramString != null)
    {
      localStringBuffer.append(paramString);
      localStringBuffer.append('\t');
    }
    localStringBuffer.append(paramThrowable.getMessage());
    return localStringBuffer.toString();
  }

  public static String getTLLibErrorExceptionString(Throwable paramThrowable, String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer(20);
    localStringBuffer.append("TL Library Error: ");
    if (paramString != null)
    {
      localStringBuffer.append(paramString);
      localStringBuffer.append('\t');
    }
    localStringBuffer.append(paramThrowable.getMessage());
    localStringBuffer.append(getStackTrace(paramThrowable));
    return localStringBuffer.toString();
  }

  public static boolean isDEBUG()
  {
    return _isDEBUG;
  }

  public static void log(String paramString)
  {
    log(paramString, 3);
  }

  public static void log(String paramString, int paramInt)
  {
    if (isDEBUG())
    {
      if (paramInt != 2)
        break label31;
      Log.d("UICAndroid", paramString);
    }
    while (true)
    {
      if (paramInt == 1)
        Log.e("UICAndroid", paramString);
      return;
      label31: if (paramInt == 3)
        Log.i("UICAndroid", paramString);
      else if (paramInt == 4)
        Log.w("UICAndroid", paramString);
      else if (paramInt == 5)
        Log.v("UICAndroid", paramString);
    }
  }

  public static Boolean logException(Throwable paramThrowable, String paramString)
  {
    log(getTLLibErrorExceptionString(paramThrowable, paramString), 1);
    if (Tealeaf.isEnabled().booleanValue())
      Tealeaf.logTLLibErrorException(paramThrowable, paramString);
    return Boolean.valueOf(true);
  }

  public static void logException(Throwable paramThrowable)
  {
    logException(paramThrowable, null);
  }

  public static void setIsDEBUG(boolean paramBoolean)
  {
    _isDEBUG = paramBoolean;
  }
}

 