package com.worklight.wlclient.challengehandler;

import com.worklight.wlclient.api.challengehandler.BaseDeviceAuthChallengeHandler;
import org.json.JSONException;
import org.json.JSONObject;

public class NoProvisioningChallengeHandler extends BaseDeviceAuthChallengeHandler
{
  public NoProvisioningChallengeHandler(String paramString)
  {
    super(paramString);
  }

  public void handleChallenge(JSONObject paramJSONObject)
  {
    try
    {
      getDeviceAuthDataAsync(paramJSONObject.getString("token"));
      return;
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException("Error retrieving device data - JSON error");
    }
    catch (Exception localException)
    {
    }
    throw new RuntimeException("Error retrieving device data");
  }

  public void handleFailure(JSONObject paramJSONObject)
  {
  }

  public void handleSuccess(JSONObject paramJSONObject)
  {
  }

  protected void onDeviceAuthDataReady(JSONObject paramJSONObject)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("ID", paramJSONObject);
    submitChallengeAnswer(localJSONObject);
  }
}

 