package org.codehaus.jackson;

import java.io.Serializable;
import org.codehaus.jackson.annotate.JsonCreator;
import org.codehaus.jackson.annotate.JsonProperty;

public class JsonLocation
  implements Serializable
{
  public static final JsonLocation NA = new JsonLocation("N/A", -1L, -1L, -1, -1);
  private static final long serialVersionUID = 1L;
  final int _columnNr;
  final int _lineNr;
  final Object _sourceRef;
  final long _totalBytes;
  final long _totalChars;

  public JsonLocation(Object paramObject, long paramLong, int paramInt1, int paramInt2)
  {
    this(paramObject, -1L, paramLong, paramInt1, paramInt2);
  }

  @JsonCreator
  public JsonLocation(@JsonProperty("sourceRef") Object paramObject, @JsonProperty("byteOffset") long paramLong1, @JsonProperty("charOffset") long paramLong2, @JsonProperty("lineNr") int paramInt1, @JsonProperty("columnNr") int paramInt2)
  {
    this._sourceRef = paramObject;
    this._totalBytes = paramLong1;
    this._totalChars = paramLong2;
    this._lineNr = paramInt1;
    this._columnNr = paramInt2;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = true;
    boolean bool2;
    if (paramObject == this)
      bool2 = bool1;
    JsonLocation localJsonLocation;
    Object localObject;
    do
    {
      boolean bool3;
      do
      {
        do
        {
          return bool2;
          bool2 = false;
        }
        while (paramObject == null);
        bool3 = paramObject instanceof JsonLocation;
        bool2 = false;
      }
      while (!bool3);
      localJsonLocation = (JsonLocation)paramObject;
      if (this._sourceRef != null)
        break;
      localObject = localJsonLocation._sourceRef;
      bool2 = false;
    }
    while (localObject != null);
    if ((this._lineNr == localJsonLocation._lineNr) && (this._columnNr == localJsonLocation._columnNr) && (this._totalChars == localJsonLocation._totalChars) && (getByteOffset() == localJsonLocation.getByteOffset()));
    while (true)
    {
      return bool1;
      if (this._sourceRef.equals(localJsonLocation._sourceRef))
        break;
      return false;
      bool1 = false;
    }
  }

  public long getByteOffset()
  {
    return this._totalBytes;
  }

  public long getCharOffset()
  {
    return this._totalChars;
  }

  public int getColumnNr()
  {
    return this._columnNr;
  }

  public int getLineNr()
  {
    return this._lineNr;
  }

  public Object getSourceRef()
  {
    return this._sourceRef;
  }

  public int hashCode()
  {
    if (this._sourceRef == null);
    for (int i = 1; ; i = this._sourceRef.hashCode())
      return ((i ^ this._lineNr) + this._columnNr ^ (int)this._totalChars) + (int)this._totalBytes;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(80);
    localStringBuilder.append("[Source: ");
    if (this._sourceRef == null)
      localStringBuilder.append("UNKNOWN");
    while (true)
    {
      localStringBuilder.append("; line: ");
      localStringBuilder.append(this._lineNr);
      localStringBuilder.append(", column: ");
      localStringBuilder.append(this._columnNr);
      localStringBuilder.append(']');
      return localStringBuilder.toString();
      localStringBuilder.append(this._sourceRef.toString());
    }
  }
}

 