package com.worklight.wlclient.api.challengehandler;

import android.os.Build;
import android.os.Build.VERSION;
import com.worklight.common.WLConfig;
import com.worklight.common.security.WLDeviceAuthManager;
import com.worklight.wlclient.api.WLClient;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class BaseDeviceAuthChallengeHandler extends WLChallengeHandler
{
  public BaseDeviceAuthChallengeHandler(String paramString)
  {
    super(paramString);
  }

  protected void getDeviceAuthDataAsync(String paramString)
    throws Exception, JSONException
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    JSONObject localJSONObject3 = new JSONObject();
    WLClient localWLClient = WLClient.getInstance();
    localJSONObject2.put("id", localWLClient.getConfig().getAppId());
    localJSONObject2.put("version", localWLClient.getConfig().getApplicationVersion());
    localJSONObject3.put("id", WLDeviceAuthManager.getInstance().getDeviceUUID(localWLClient.getContext()));
    localJSONObject3.put("os", Build.VERSION.RELEASE);
    localJSONObject3.put("model", Build.MODEL);
    localJSONObject3.put("environment", "Android");
    localJSONObject1.put("app", localJSONObject2);
    localJSONObject1.put("device", localJSONObject3);
    localJSONObject1.put("token", paramString);
    onDeviceAuthDataReady(localJSONObject1);
  }

  protected abstract void onDeviceAuthDataReady(JSONObject paramJSONObject)
    throws JSONException;
}

 