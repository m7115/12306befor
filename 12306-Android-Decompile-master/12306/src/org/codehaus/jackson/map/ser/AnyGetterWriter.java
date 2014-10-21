package org.codehaus.jackson.map.ser;

import java.lang.reflect.Method;
import java.util.Map;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;

public class AnyGetterWriter
{
  protected final Method _anyGetter;
  protected final MapSerializer _serializer;

  public AnyGetterWriter(AnnotatedMethod paramAnnotatedMethod, MapSerializer paramMapSerializer)
  {
    this._anyGetter = paramAnnotatedMethod.getAnnotated();
    this._serializer = paramMapSerializer;
  }

  public void getAndSerialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws Exception
  {
    Object localObject = this._anyGetter.invoke(paramObject, new Object[0]);
    if (localObject == null)
      return;
    if (!(localObject instanceof Map))
      throw new JsonMappingException("Value returned by 'any-getter' (" + this._anyGetter.getName() + "()) not java.util.Map but " + localObject.getClass().getName());
    this._serializer.serializeFields((Map)localObject, paramJsonGenerator, paramSerializerProvider);
  }

  public void resolve(SerializerProvider paramSerializerProvider)
    throws JsonMappingException
  {
    this._serializer.resolve(paramSerializerProvider);
  }
}

 