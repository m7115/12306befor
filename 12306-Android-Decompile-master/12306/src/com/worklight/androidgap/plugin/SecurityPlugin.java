package com.worklight.androidgap.plugin;

import android.app.Activity;
import android.content.Context;
import com.worklight.common.WLUtils;
import com.worklight.utils.SecurityUtils;
import com.worklight.utils.SecurityUtils.PBKDF2;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SecurityPlugin extends CordovaPlugin
{
  private static byte[] decrypt(JSONArray paramJSONArray)
    throws IllegalBlockSizeException, BadPaddingException, JSONException, InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidAlgorithmParameterException
  {
    String str1 = paramJSONArray.getString(0);
    String str2 = paramJSONArray.getString(1);
    String str3 = paramJSONArray.getString(2);
    return initCipher(2, WLUtils.hexStringToByteArray(str1), WLUtils.hexStringToByteArray(str3)).doFinal(WLUtils.hexStringToByteArray(str2));
  }

  private static String encrypt(JSONArray paramJSONArray)
    throws IllegalBlockSizeException, BadPaddingException, JSONException, InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidAlgorithmParameterException
  {
    String str1 = paramJSONArray.getString(0);
    String str2 = paramJSONArray.getString(1);
    String str3 = paramJSONArray.getString(2);
    byte[] arrayOfByte = initCipher(1, WLUtils.hexStringToByteArray(str1), WLUtils.hexStringToByteArray(str3)).doFinal(str2.getBytes());
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("ct", WLUtils.byteArrayToHexString(arrayOfByte));
    localJSONObject.put("iv", str3);
    return localJSONObject.toString();
  }

  private static byte[] generateKey(JSONArray paramJSONArray)
    throws NoSuchAlgorithmException, JSONException, InvalidKeyException, InvalidKeySpecException, UnsupportedEncodingException
  {
    String str1 = paramJSONArray.getString(0);
    String str2 = paramJSONArray.getString(1);
    int i = Integer.parseInt(paramJSONArray.getString(2));
    int j = Integer.parseInt(paramJSONArray.getString(3));
    return SecurityUtils.PBKDF2.genKey(str1.toCharArray(), str2.getBytes("UTF-8"), i, j).getEncoded();
  }

  private static Cipher initCipher(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException
  {
    IvParameterSpec localIvParameterSpec = new IvParameterSpec(paramArrayOfByte2);
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte1, "AES");
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(paramInt, localSecretKeySpec, localIvParameterSpec);
    return localCipher;
  }

  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    ACTION localACTION = ACTION.fromString(paramString);
    if (localACTION != null)
    {
      if (this.cordova != null);
      for (Activity localActivity = this.cordova.getActivity(); ; localActivity = null)
        return localACTION.execute(paramJSONArray, paramCallbackContext, localActivity);
    }
    paramCallbackContext.error("Invalid action: " + paramString);
    return true;
  }

  public static abstract enum ACTION
  {
    static
    {
      // Byte code:
      //   0: new 16	com/worklight/androidgap/plugin/SecurityPlugin$ACTION$1
      //   3: dup
      //   4: ldc 17
      //   6: iconst_0
      //   7: invokespecial 21	com/worklight/androidgap/plugin/SecurityPlugin$ACTION$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 23	com/worklight/androidgap/plugin/SecurityPlugin$ACTION:keygen	Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
      //   13: new 25	com/worklight/androidgap/plugin/SecurityPlugin$ACTION$2
      //   16: dup
      //   17: ldc 26
      //   19: iconst_1
      //   20: invokespecial 27	com/worklight/androidgap/plugin/SecurityPlugin$ACTION$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 29	com/worklight/androidgap/plugin/SecurityPlugin$ACTION:encrypt	Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
      //   26: new 31	com/worklight/androidgap/plugin/SecurityPlugin$ACTION$3
      //   29: dup
      //   30: ldc 32
      //   32: iconst_2
      //   33: invokespecial 33	com/worklight/androidgap/plugin/SecurityPlugin$ACTION$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 35	com/worklight/androidgap/plugin/SecurityPlugin$ACTION:decrypt	Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
      //   39: new 37	com/worklight/androidgap/plugin/SecurityPlugin$ACTION$4
      //   42: dup
      //   43: ldc 38
      //   45: iconst_3
      //   46: invokespecial 39	com/worklight/androidgap/plugin/SecurityPlugin$ACTION$4:<init>	(Ljava/lang/String;I)V
      //   49: putstatic 41	com/worklight/androidgap/plugin/SecurityPlugin$ACTION:hashData	Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
      //   52: iconst_4
      //   53: anewarray 2	com/worklight/androidgap/plugin/SecurityPlugin$ACTION
      //   56: astore_0
      //   57: aload_0
      //   58: iconst_0
      //   59: getstatic 23	com/worklight/androidgap/plugin/SecurityPlugin$ACTION:keygen	Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
      //   62: aastore
      //   63: aload_0
      //   64: iconst_1
      //   65: getstatic 29	com/worklight/androidgap/plugin/SecurityPlugin$ACTION:encrypt	Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
      //   68: aastore
      //   69: aload_0
      //   70: iconst_2
      //   71: getstatic 35	com/worklight/androidgap/plugin/SecurityPlugin$ACTION:decrypt	Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
      //   74: aastore
      //   75: aload_0
      //   76: iconst_3
      //   77: getstatic 41	com/worklight/androidgap/plugin/SecurityPlugin$ACTION:hashData	Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
      //   80: aastore
      //   81: aload_0
      //   82: putstatic 43	com/worklight/androidgap/plugin/SecurityPlugin$ACTION:$VALUES	[Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
      //   85: return
    }

    public static ACTION fromString(String paramString)
    {
      try
      {
        ACTION localACTION = valueOf(paramString);
        return localACTION;
      }
      catch (Exception localException)
      {
      }
      return null;
    }

    protected abstract boolean execute(JSONArray paramJSONArray, CallbackContext paramCallbackContext, Context paramContext);

    protected boolean executeError(ACTION paramACTION, CallbackContext paramCallbackContext, String paramString)
    {
      paramCallbackContext.error("Action: " + paramACTION + " failed. " + paramString);
      return true;
    }
  }
}

 