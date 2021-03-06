package com.worklight.androidgap.plugin.storage;

import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.PluginResult;
import org.json.JSONArray;

public abstract interface ActionDispatcher
{
  public abstract PluginResult dispatch(CordovaInterface paramCordovaInterface, JSONArray paramJSONArray)
    throws Throwable;

  public abstract String getName();
}

 