package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
public abstract interface Equivalence<T>
{
  public abstract boolean equivalent(@Nullable T paramT1, @Nullable T paramT2);

  public abstract int hash(@Nullable T paramT);
}

 