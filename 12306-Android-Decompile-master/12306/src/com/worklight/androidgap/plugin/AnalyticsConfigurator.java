package com.worklight.androidgap.plugin;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import android.webkit.CookieManager;
import com.worklight.androidgap.analytics.AnalyticsUncaughtExceptionHandler;
import com.worklight.common.WLConfig;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.cordova.DroidGap;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.LOG;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AnalyticsConfigurator extends CordovaPlugin
{
  private static final String CONFIGURATIONUTIL_CLASS = "com.tl.uic.util.ConfigurationUtil";
  private static final String CONFIGURATIONUTIL_CLASS_METHOD_GETSTRING = "getString";
  private static final String CONFIGURATIONUTIL_CLASS_METHOD_SETPROPERTY = "setProperty";
  private static final String LOG_TAG = AnalyticsConfigurator.class.getName();
  private static final String TEALEAF_CLASS = "com.tl.uic.Tealeaf";
  private static final String TEALEAF_CLASS_METHOD_DISABLE = "disable";
  private static final String TEALEAF_CLASS_METHOD_ENABLE = "enable";
  private static final String TEALEAF_CLASS_METHOD_GETADDITIONALCOOKIE = "getAdditionalCookie";
  private static final String TEALEAF_CLASS_METHOD_GETADDITIONALHEADERS = "getAdditionalHeaders";
  private static final String TEALEAF_CLASS_METHOD_ISENABLED = "isEnabled";
  private static final String TEALEAF_CLASS_METHOD_REQUESTMANUALSERVERPOST = "requestManualServerPost";
  private static final String TEALEAF_CLASS_METHOD_SETADDITIONALCOOKIE = "setAdditionalCookie";
  private static final String TEALEAF_CLASS_METHOD_SETADDITIONALHEADERS = "setAdditionalHeaders";
  private static final String TEALEAF_CONFIGURABLE_ITEMS_KEY_POSTMESSAGEURL = "PostMessageUrl";
  private static final String X_WL_TLT_FORWARD_COOKIES_HEADER = "x-wl-tlt-forward-cookies";
  protected static DroidGap droidGap = null;
  protected static SharedPreferences prefs = null;
  private static AnalyticsUncaughtExceptionHandler wlUEH;

  public static void setDroidGapObject(DroidGap paramDroidGap)
  {
    if (droidGap == null)
    {
      droidGap = paramDroidGap;
      prefs = droidGap.getSharedPreferences(AnalyticsConfigurator.class.getName(), 0);
    }
  }

  public void enable()
  {
    ACTIONS localACTIONS = ACTIONS.fromString(ACTIONS.enable.toString());
    try
    {
      localACTIONS.doAction(this, null);
      return;
    }
    catch (Exception localException)
    {
      Log.e(LOG_TAG, "Unexpected Exception", localException);
    }
  }

  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    while (true)
    {
      ACTIONS localACTIONS;
      try
      {
        localACTIONS = ACTIONS.fromString(paramString);
        if (localACTIONS == null)
        {
          paramCallbackContext.error("Invalid action: " + paramString);
          return false;
        }
        try
        {
          int i = 1.$SwitchMap$com$worklight$androidgap$plugin$AnalyticsConfigurator$ACTIONS[localACTIONS.ordinal()];
          switch (i)
          {
          default:
            paramCallbackContext.success();
            return true;
          case 1:
          case 2:
          case 3:
            localACTIONS.doAction(this, null);
            continue;
          case 4:
          case 5:
          }
        }
        catch (MalformedURLException localMalformedURLException)
        {
          paramCallbackContext.error("Parameter: " + paramJSONArray.getString(0) + " is not a valid URL.");
          return false;
        }
      }
      catch (JSONException localJSONException)
      {
        paramCallbackContext.error("Action: " + paramString + " failed. JSON Error is: " + localJSONException.getLocalizedMessage());
        return false;
      }
      localACTIONS.doAction(this, paramJSONArray.getString(0));
    }
  }

  public boolean isEnabledSharedPref()
  {
    return prefs.getBoolean(OPTIONS.ENABLED.toString(), true);
  }

  private static abstract enum ACTIONS
  {
    final AnalyticsConfigurator configurator = null;

    static
    {
      // Byte code:
      //   0: new 19	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$1
      //   3: dup
      //   4: ldc 20
      //   6: iconst_0
      //   7: invokespecial 24	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 26	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS:configureTealeaf	Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
      //   13: new 28	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$2
      //   16: dup
      //   17: ldc 29
      //   19: iconst_1
      //   20: invokespecial 30	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 32	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS:send	Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
      //   26: new 34	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$3
      //   29: dup
      //   30: ldc 35
      //   32: iconst_2
      //   33: invokespecial 36	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 38	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS:enable	Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
      //   39: new 40	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$4
      //   42: dup
      //   43: ldc 41
      //   45: iconst_3
      //   46: invokespecial 42	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$4:<init>	(Ljava/lang/String;I)V
      //   49: putstatic 44	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS:disable	Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
      //   52: new 46	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$5
      //   55: dup
      //   56: ldc 47
      //   58: iconst_4
      //   59: invokespecial 48	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$5:<init>	(Ljava/lang/String;I)V
      //   62: putstatic 50	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS:resetConfig	Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
      //   65: iconst_5
      //   66: anewarray 2	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS
      //   69: astore_0
      //   70: aload_0
      //   71: iconst_0
      //   72: getstatic 26	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS:configureTealeaf	Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
      //   75: aastore
      //   76: aload_0
      //   77: iconst_1
      //   78: getstatic 32	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS:send	Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
      //   81: aastore
      //   82: aload_0
      //   83: iconst_2
      //   84: getstatic 38	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS:enable	Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
      //   87: aastore
      //   88: aload_0
      //   89: iconst_3
      //   90: getstatic 44	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS:disable	Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
      //   93: aastore
      //   94: aload_0
      //   95: iconst_4
      //   96: getstatic 50	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS:resetConfig	Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
      //   99: aastore
      //   100: aload_0
      //   101: putstatic 52	com/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS:$VALUES	[Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
      //   104: return
    }

    public static ACTIONS fromString(String paramString)
    {
      try
      {
        ACTIONS localACTIONS = valueOf(paramString);
        return localACTIONS;
      }
      catch (Exception localException)
      {
      }
      return null;
    }

    public abstract void doAction(AnalyticsConfigurator paramAnalyticsConfigurator, String paramString)
      throws MalformedURLException, JSONException;
  }

  private static enum OPTIONS
  {
    static
    {
      OPTIONS[] arrayOfOPTIONS = new OPTIONS[2];
      arrayOfOPTIONS[0] = ENABLED;
      arrayOfOPTIONS[1] = TEALEAF_PROPS;
    }
  }
}

 