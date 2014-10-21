package com.worklight.wlclient.api.challengehandler;

import org.json.JSONObject;

public abstract class BaseProvisioningChallengeHandler extends BaseDeviceAuthChallengeHandler
{
  public BaseProvisioningChallengeHandler(String paramString)
  {
    super(paramString);
  }

  protected abstract JSONObject createJsonCsr(String paramString1, String paramString2, String paramString3);

  protected boolean isCertificateChallengeResponse(JSONObject paramJSONObject)
  {
    return false;
  }

  protected void onDeviceAuthDataReady(JSONObject paramJSONObject)
  {
  }

  protected void submitCsr(JSONObject paramJSONObject)
  {
  }
}

 