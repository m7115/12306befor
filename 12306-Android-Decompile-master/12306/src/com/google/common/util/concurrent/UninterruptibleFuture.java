package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Beta
public abstract interface UninterruptibleFuture<V> extends Future<V>
{
  public abstract V get()
    throws ExecutionException;

  public abstract V get(long paramLong, TimeUnit paramTimeUnit)
    throws ExecutionException, TimeoutException;
}

 