package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;

@Beta
@GwtCompatible
public final class Enums
{
  public static <T extends Enum<T>> Function<String, T> valueOfFunction(Class<T> paramClass)
  {
    return new ValueOfFunction(paramClass, null);
  }

  private static final class ValueOfFunction<T extends Enum<T>>
    implements Function<String, T>
  {
    private final Class<T> enumClass;

    private ValueOfFunction(Class<T> paramClass)
    {
      this.enumClass = ((Class)Preconditions.checkNotNull(paramClass));
    }

    public T apply(String paramString)
    {
      try
      {
        Enum localEnum = Enum.valueOf(this.enumClass, paramString);
        return localEnum;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
      }
      return null;
    }
  }
}

 