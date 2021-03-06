package org.codehaus.jackson.node;

import java.io.IOException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.SerializerProvider;

public final class BooleanNode extends ValueNode
{
  public static final BooleanNode FALSE = new BooleanNode();
  public static final BooleanNode TRUE = new BooleanNode();

  public static BooleanNode getFalse()
  {
    return FALSE;
  }

  public static BooleanNode getTrue()
  {
    return TRUE;
  }

  public static BooleanNode valueOf(boolean paramBoolean)
  {
    if (paramBoolean)
      return TRUE;
    return FALSE;
  }

  public JsonToken asToken()
  {
    if (this == TRUE)
      return JsonToken.VALUE_TRUE;
    return JsonToken.VALUE_FALSE;
  }

  public boolean equals(Object paramObject)
  {
    return paramObject == this;
  }

  public boolean getBooleanValue()
  {
    return this == TRUE;
  }

  public boolean getValueAsBoolean()
  {
    return this == TRUE;
  }

  public boolean getValueAsBoolean(boolean paramBoolean)
  {
    return this == TRUE;
  }

  public double getValueAsDouble(double paramDouble)
  {
    if (this == TRUE)
      return 1.0D;
    return 0.0D;
  }

  public int getValueAsInt(int paramInt)
  {
    if (this == TRUE)
      return 1;
    return 0;
  }

  public long getValueAsLong(long paramLong)
  {
    if (this == TRUE)
      return 1L;
    return 0L;
  }

  public String getValueAsText()
  {
    if (this == TRUE)
      return "true";
    return "false";
  }

  public boolean isBoolean()
  {
    return true;
  }

  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException
  {
    if (this == TRUE);
    for (boolean bool = true; ; bool = false)
    {
      paramJsonGenerator.writeBoolean(bool);
      return;
    }
  }
}

 