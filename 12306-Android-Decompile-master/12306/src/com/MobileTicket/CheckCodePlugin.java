package com.MobileTicket;

import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class CheckCodePlugin extends CordovaPlugin
{
  private static final String GET_ACTION = "getcheckcode";

  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    boolean bool1 = paramString.equals("getcheckcode");
    boolean bool2 = false;
    if (bool1);
    try
    {
      paramCallbackContext.success(CheckCodeUtil.checkcode("", paramJSONArray.getString(0)));
      bool2 = true;
      return bool2;
    }
    catch (JSONException localJSONException)
    {
      paramCallbackContext.error("Failed to parse parameters");
    }
    return false;
  }
}

