package org.apache.cordova;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

public class JSONUtils
{
  public static List<String> toStringList(JSONArray paramJSONArray)
    throws JSONException
  {
    Object localObject;
    if (paramJSONArray == null)
      localObject = null;
    while (true)
    {
      return localObject;
      localObject = new ArrayList();
      for (int i = 0; i < paramJSONArray.length(); i++)
        ((List)localObject).add(paramJSONArray.get(i).toString());
    }
  }
}

 