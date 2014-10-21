package com.worklight.androidgap.plugin;

import android.util.Log;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class Logger extends CordovaPlugin
{
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    try
    {
      ACTION_LOG localACTION_LOG = ACTION_LOG.fromString(paramString);
      if (localACTION_LOG == null)
      {
        paramCallbackContext.error("Invalid action: " + paramString);
        return true;
      }
      localACTION_LOG.log(this.cordova.getClass().getSimpleName(), paramJSONArray.getString(0));
      paramCallbackContext.success("true");
      return true;
    }
    catch (JSONException localJSONException)
    {
      paramCallbackContext.error("Action: " + paramString + " failed. JSON Error is: " + localJSONException.getLocalizedMessage());
    }
    return true;
  }

  public static abstract enum ACTION_LOG
  {
    static
    {
      // Byte code:
      //   0: new 17	com/worklight/androidgap/plugin/Logger$ACTION_LOG$1
      //   3: dup
      //   4: ldc 18
      //   6: iconst_0
      //   7: invokespecial 22	com/worklight/androidgap/plugin/Logger$ACTION_LOG$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 24	com/worklight/androidgap/plugin/Logger$ACTION_LOG:LOG	Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
      //   13: new 26	com/worklight/androidgap/plugin/Logger$ACTION_LOG$2
      //   16: dup
      //   17: ldc 27
      //   19: iconst_1
      //   20: invokespecial 28	com/worklight/androidgap/plugin/Logger$ACTION_LOG$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 30	com/worklight/androidgap/plugin/Logger$ACTION_LOG:INFO	Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
      //   26: new 32	com/worklight/androidgap/plugin/Logger$ACTION_LOG$3
      //   29: dup
      //   30: ldc 33
      //   32: iconst_2
      //   33: invokespecial 34	com/worklight/androidgap/plugin/Logger$ACTION_LOG$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 36	com/worklight/androidgap/plugin/Logger$ACTION_LOG:WARN	Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
      //   39: new 38	com/worklight/androidgap/plugin/Logger$ACTION_LOG$4
      //   42: dup
      //   43: ldc 39
      //   45: iconst_3
      //   46: invokespecial 40	com/worklight/androidgap/plugin/Logger$ACTION_LOG$4:<init>	(Ljava/lang/String;I)V
      //   49: putstatic 42	com/worklight/androidgap/plugin/Logger$ACTION_LOG:ERROR	Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
      //   52: new 44	com/worklight/androidgap/plugin/Logger$ACTION_LOG$5
      //   55: dup
      //   56: ldc 45
      //   58: iconst_4
      //   59: invokespecial 46	com/worklight/androidgap/plugin/Logger$ACTION_LOG$5:<init>	(Ljava/lang/String;I)V
      //   62: putstatic 48	com/worklight/androidgap/plugin/Logger$ACTION_LOG:DEBUG	Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
      //   65: iconst_5
      //   66: anewarray 2	com/worklight/androidgap/plugin/Logger$ACTION_LOG
      //   69: astore_0
      //   70: aload_0
      //   71: iconst_0
      //   72: getstatic 24	com/worklight/androidgap/plugin/Logger$ACTION_LOG:LOG	Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
      //   75: aastore
      //   76: aload_0
      //   77: iconst_1
      //   78: getstatic 30	com/worklight/androidgap/plugin/Logger$ACTION_LOG:INFO	Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
      //   81: aastore
      //   82: aload_0
      //   83: iconst_2
      //   84: getstatic 36	com/worklight/androidgap/plugin/Logger$ACTION_LOG:WARN	Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
      //   87: aastore
      //   88: aload_0
      //   89: iconst_3
      //   90: getstatic 42	com/worklight/androidgap/plugin/Logger$ACTION_LOG:ERROR	Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
      //   93: aastore
      //   94: aload_0
      //   95: iconst_4
      //   96: getstatic 48	com/worklight/androidgap/plugin/Logger$ACTION_LOG:DEBUG	Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
      //   99: aastore
      //   100: aload_0
      //   101: putstatic 50	com/worklight/androidgap/plugin/Logger$ACTION_LOG:$VALUES	[Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
      //   104: return
    }

    public static ACTION_LOG fromString(String paramString)
    {
      try
      {
        ACTION_LOG localACTION_LOG = valueOf(paramString);
        return localACTION_LOG;
      }
      catch (Exception localException)
      {
      }
      return null;
    }

    public abstract void log(String paramString1, String paramString2);
  }
}

 