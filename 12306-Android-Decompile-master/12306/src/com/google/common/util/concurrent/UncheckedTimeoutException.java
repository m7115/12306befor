package com.google.common.util.concurrent;

public class UncheckedTimeoutException extends RuntimeException
{
  private static final long serialVersionUID;

  public UncheckedTimeoutException()
  {
  }

  public UncheckedTimeoutException(String paramString)
  {
    super(paramString);
  }

  public UncheckedTimeoutException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public UncheckedTimeoutException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

 