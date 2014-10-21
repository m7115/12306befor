package org.codehaus.jackson.map.jsontype;

import org.codehaus.jackson.annotate.JsonTypeInfo.Id;
import org.codehaus.jackson.type.JavaType;

public abstract interface TypeIdResolver
{
  public abstract JsonTypeInfo.Id getMechanism();

  public abstract String idFromValue(Object paramObject);

  public abstract String idFromValueAndType(Object paramObject, Class<?> paramClass);

  public abstract void init(JavaType paramJavaType);

  public abstract JavaType typeFromId(String paramString);
}

 