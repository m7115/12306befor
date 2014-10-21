package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import javax.annotation.Nullable;

@Beta
@GwtCompatible
public final class Equivalences
{
  public static Equivalence<Object> equals()
  {
    return Impl.EQUALS;
  }

  public static Equivalence<Object> identity()
  {
    return Impl.IDENTITY;
  }

  @GwtCompatible(serializable=true)
  public static <T> Equivalence<Iterable<T>> pairwise(Equivalence<? super T> paramEquivalence)
  {
    return new PairwiseEquivalence(paramEquivalence);
  }

  private static abstract enum Impl
    implements Equivalence<Object>
  {
    static
    {
      Impl[] arrayOfImpl = new Impl[2];
      arrayOfImpl[0] = EQUALS;
      arrayOfImpl[1] = IDENTITY;
    }
  }
}

 