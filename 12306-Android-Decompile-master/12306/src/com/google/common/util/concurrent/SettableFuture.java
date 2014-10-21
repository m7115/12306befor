package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import javax.annotation.Nullable;

@Beta
public final class SettableFuture<V> extends AbstractListenableFuture<V>
{
  public static <V> SettableFuture<V> create()
  {
    return new SettableFuture();
  }

  public boolean cancel(boolean paramBoolean)
  {
    return super.cancel();
  }

  public boolean set(@Nullable V paramV)
  {
    return super.set(paramV);
  }

  public boolean setException(Throwable paramThrowable)
  {
    return super.setException(paramThrowable);
  }
}

 