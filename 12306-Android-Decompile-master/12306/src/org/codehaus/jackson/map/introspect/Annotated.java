package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.type.JavaType;

public abstract class Annotated
{
  public abstract AnnotatedElement getAnnotated();

  public abstract <A extends Annotation> A getAnnotation(Class<A> paramClass);

  public abstract Type getGenericType();

  protected abstract int getModifiers();

  public abstract String getName();

  public abstract Class<?> getRawType();

  public JavaType getType(TypeBindings paramTypeBindings)
  {
    return paramTypeBindings.resolveType(getGenericType());
  }

  public final <A extends Annotation> boolean hasAnnotation(Class<A> paramClass)
  {
    return getAnnotation(paramClass) != null;
  }

  public final boolean isPublic()
  {
    return Modifier.isPublic(getModifiers());
  }
}

 