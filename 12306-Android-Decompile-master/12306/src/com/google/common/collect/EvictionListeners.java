package com.google.common.collect;

import com.google.common.annotations.Beta;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

@Beta
public final class EvictionListeners
{
  public static <K, V> MapEvictionListener<K, V> asynchronous(final MapEvictionListener<K, V> paramMapEvictionListener, Executor paramExecutor)
  {
    return new MapEvictionListener()
    {
      public void onEviction(@Nullable final K paramAnonymousK, @Nullable final V paramAnonymousV)
      {
        this.val$executor.execute(new Runnable()
        {
          public void run()
          {
            EvictionListeners.1.this.val$listener.onEviction(paramAnonymousK, paramAnonymousV);
          }
        });
      }
    };
  }
}

 