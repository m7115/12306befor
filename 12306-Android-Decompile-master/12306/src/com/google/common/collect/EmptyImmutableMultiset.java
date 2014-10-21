package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible(serializable=true)
final class EmptyImmutableMultiset extends ImmutableMultiset<Object>
{
  static final EmptyImmutableMultiset INSTANCE = new EmptyImmutableMultiset();
  private static final long serialVersionUID;

  private EmptyImmutableMultiset()
  {
    super(ImmutableMap.of(), 0);
  }

  Object readResolve()
  {
    return INSTANCE;
  }
}

 