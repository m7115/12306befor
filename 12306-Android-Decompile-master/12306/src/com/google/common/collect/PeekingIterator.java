package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Iterator;

@GwtCompatible
public abstract interface PeekingIterator<E> extends Iterator<E>
{
  public abstract E next();

  public abstract E peek();

  public abstract void remove();
}

 