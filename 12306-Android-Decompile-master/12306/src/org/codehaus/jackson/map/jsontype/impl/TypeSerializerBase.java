package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;

public abstract class TypeSerializerBase extends TypeSerializer
{
  protected final TypeIdResolver _idResolver;
  protected final BeanProperty _property;

  protected TypeSerializerBase(TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty)
  {
    this._idResolver = paramTypeIdResolver;
    this._property = paramBeanProperty;
  }

  public String getPropertyName()
  {
    return null;
  }

  public TypeIdResolver getTypeIdResolver()
  {
    return this._idResolver;
  }

  public abstract JsonTypeInfo.As getTypeInclusion();
}

 