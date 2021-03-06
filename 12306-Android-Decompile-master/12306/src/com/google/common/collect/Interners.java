package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.base.FinalizableReferenceQueue;
import com.google.common.base.FinalizableWeakReference;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import java.util.concurrent.ConcurrentMap;

@Beta
public final class Interners
{
  public static <E> Function<E, E> asFunction(Interner<E> paramInterner)
  {
    return new InternerFunction((Interner)Preconditions.checkNotNull(paramInterner));
  }

  public static <E> Interner<E> newStrongInterner()
  {
    return new Interner()
    {
      public E intern(E paramAnonymousE)
      {
        Object localObject = this.val$map.putIfAbsent(Preconditions.checkNotNull(paramAnonymousE), paramAnonymousE);
        if (localObject == null)
          return paramAnonymousE;
        return localObject;
      }
    };
  }

  public static <E> Interner<E> newWeakInterner()
  {
    return new WeakInterner(null);
  }

  private static class InternerFunction<E>
    implements Function<E, E>
  {
    private final Interner<E> interner;

    public InternerFunction(Interner<E> paramInterner)
    {
      this.interner = paramInterner;
    }

    public E apply(E paramE)
    {
      return this.interner.intern(paramE);
    }

    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof InternerFunction))
      {
        InternerFunction localInternerFunction = (InternerFunction)paramObject;
        return this.interner.equals(localInternerFunction.interner);
      }
      return false;
    }

    public int hashCode()
    {
      return this.interner.hashCode();
    }
  }

  private static class WeakInterner<E>
    implements Interner<E>
  {
    private static final FinalizableReferenceQueue frq = new FinalizableReferenceQueue();
    private final ConcurrentMap<WeakInterner<E>.InternReference, WeakInterner<E>.InternReference> map = new MapMaker().makeMap();

    public E intern(final E paramE)
    {
      final int i = paramE.hashCode();
      Object local1 = new Object()
      {
        public boolean equals(Object paramAnonymousObject)
        {
          if (paramAnonymousObject.hashCode() != i)
            return false;
          Interners.WeakInterner.InternReference localInternReference = (Interners.WeakInterner.InternReference)paramAnonymousObject;
          return paramE.equals(localInternReference.get());
        }

        public int hashCode()
        {
          return i;
        }
      };
      InternReference localInternReference1 = (InternReference)this.map.get(local1);
      if (localInternReference1 != null)
      {
        Object localObject2 = localInternReference1.get();
        if (localObject2 != null)
          return localObject2;
      }
      InternReference localInternReference2 = new InternReference(paramE, i);
      Object localObject1;
      do
      {
        InternReference localInternReference3 = (InternReference)this.map.putIfAbsent(localInternReference2, localInternReference2);
        if (localInternReference3 == null)
          return paramE;
        localObject1 = localInternReference3.get();
      }
      while (localObject1 == null);
      return localObject1;
    }

    class InternReference extends FinalizableWeakReference<E>
    {
      final int hashCode;

      InternReference(int arg2)
      {
        super(Interners.WeakInterner.frq);
        int i;
        this.hashCode = i;
      }

      public boolean equals(Object paramObject)
      {
        if (paramObject == this);
        InternReference localInternReference;
        Object localObject;
        do
        {
          return true;
          if (!(paramObject instanceof InternReference))
            break;
          localInternReference = (InternReference)paramObject;
          if (localInternReference.hashCode != this.hashCode)
            return false;
          localObject = super.get();
        }
        while ((localObject != null) && (localObject.equals(localInternReference.get())));
        return false;
        return paramObject.equals(this);
      }

      public void finalizeReferent()
      {
        Interners.WeakInterner.this.map.remove(this);
      }

      public E get()
      {
        Object localObject = super.get();
        if (localObject == null)
          finalizeReferent();
        return localObject;
      }

      public int hashCode()
      {
        return this.hashCode;
      }
    }
  }
}

 