package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;

@Beta
@GwtCompatible
public abstract interface Constraint<E>
{
  public abstract E checkElement(E paramE);

  public abstract String toString();
}

 