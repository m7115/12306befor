package org.codehaus.jackson.node;

import java.io.IOException;
import java.util.Arrays;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.Base64Variants;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.SerializerProvider;

public final class BinaryNode extends ValueNode
{
  static final BinaryNode EMPTY_BINARY_NODE = new BinaryNode(new byte[0]);
  final byte[] _data;

  public BinaryNode(byte[] paramArrayOfByte)
  {
    this._data = paramArrayOfByte;
  }

  public BinaryNode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 == paramArrayOfByte.length))
    {
      this._data = paramArrayOfByte;
      return;
    }
    this._data = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, this._data, 0, paramInt2);
  }

  public static BinaryNode valueOf(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return null;
    if (paramArrayOfByte.length == 0)
      return EMPTY_BINARY_NODE;
    return new BinaryNode(paramArrayOfByte);
  }

  public static BinaryNode valueOf(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte == null)
      return null;
    if (paramInt2 == 0)
      return EMPTY_BINARY_NODE;
    return new BinaryNode(paramArrayOfByte, paramInt1, paramInt2);
  }

  public JsonToken asToken()
  {
    return JsonToken.VALUE_EMBEDDED_OBJECT;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == this)
      bool = true;
    Class localClass1;
    Class localClass2;
    do
    {
      do
      {
        return bool;
        bool = false;
      }
      while (paramObject == null);
      localClass1 = paramObject.getClass();
      localClass2 = getClass();
      bool = false;
    }
    while (localClass1 != localClass2);
    return Arrays.equals(((BinaryNode)paramObject)._data, this._data);
  }

  public byte[] getBinaryValue()
  {
    return this._data;
  }

  public String getValueAsText()
  {
    return Base64Variants.getDefaultVariant().encode(this._data, false);
  }

  public int hashCode()
  {
    if (this._data == null)
      return -1;
    return this._data.length;
  }

  public boolean isBinary()
  {
    return true;
  }

  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    throws IOException, JsonProcessingException
  {
    paramJsonGenerator.writeBinary(this._data);
  }

  public String toString()
  {
    return Base64Variants.getDefaultVariant().encode(this._data, true);
  }
}

 