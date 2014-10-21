package com.worklight.wlclient.api;

import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
public class WLProcedureInvocationResponse extends WLProcedureInvocationResult
{
  @Deprecated
  public WLProcedureInvocationResponse(WLResponse paramWLResponse)
  {
    super(paramWLResponse);
  }

  @Deprecated
  public JSONObject getJSONResult()
    throws JSONException
  {
    return super.getResult();
  }
}

 