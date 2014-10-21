package com.worklight.androidgap.jsonstore.util.jackson;

import org.json.JSONArray;
import org.json.JSONException;

public class JacksonSerializedJSONArray extends JSONArray
{
  private JSONArray wrappedArray;

  public JacksonSerializedJSONArray()
  {
  }

  protected JacksonSerializedJSONArray(JSONArray paramJSONArray)
  {
    this.wrappedArray = paramJSONArray;
  }

  public String toString()
  {
    if (this.wrappedArray == null);
    while (true)
    {
      return JsonOrgModule.serialize(this);
      this = this.wrappedArray;
    }
  }

  public String toString(int paramInt)
    throws JSONException
  {
    return toString();
  }
}

 