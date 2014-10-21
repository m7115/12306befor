package com.worklight.androidgap.jsonstore.util.jackson;

import org.json.JSONException;
import org.json.JSONObject;

public class JacksonSerializedJSONObject extends JSONObject
{
  private JSONObject wrappedObject;

  public JacksonSerializedJSONObject()
  {
  }

  protected JacksonSerializedJSONObject(JSONObject paramJSONObject)
  {
    this.wrappedObject = paramJSONObject;
  }

  public String toString()
  {
    if (this.wrappedObject == null);
    while (true)
    {
      return JsonOrgModule.serialize(this);
      this = this.wrappedObject;
    }
  }

  public String toString(int paramInt)
    throws JSONException
  {
    return toString();
  }
}

 