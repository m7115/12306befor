package com.worklight.androidgap.jsonstore.util.jackson;

import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONObject;

public class JacksonSerializedPluginResult extends PluginResult
{
  public JacksonSerializedPluginResult(PluginResult.Status paramStatus, JSONArray paramJSONArray)
  {
    super(paramStatus, new JacksonSerializedJSONArray(paramJSONArray));
  }

  public JacksonSerializedPluginResult(PluginResult.Status paramStatus, JSONObject paramJSONObject)
  {
    super(paramStatus, new JacksonSerializedJSONObject(paramJSONObject));
  }
}

 