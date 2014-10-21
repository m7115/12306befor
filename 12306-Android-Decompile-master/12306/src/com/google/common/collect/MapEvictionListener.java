package com.google.common.collect;

import com.google.common.annotations.Beta;
import javax.annotation.Nullable;

@Beta
public abstract interface MapEvictionListener<K, V>
{
  public abstract void onEviction(@Nullable K paramK, @Nullable V paramV);
}

 