package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import javax.annotation.Nullable;

@GwtCompatible(serializable=true)
class ImmutableEntry<K, V> extends AbstractMapEntry<K, V>
  implements Serializable
{
  private static final long serialVersionUID;
  private final K key;
  private final V value;

  ImmutableEntry(@Nullable K paramK, @Nullable V paramV)
  {
    this.key = paramK;
    this.value = paramV;
  }

  public K getKey()
  {
    return this.key;
  }

  public V getValue()
  {
    return this.value;
  }

  public final V setValue(V paramV)
  {
    throw new UnsupportedOperationException();
  }
}

 