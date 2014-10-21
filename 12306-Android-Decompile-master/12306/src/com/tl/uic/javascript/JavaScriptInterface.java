package com.tl.uic.javascript;

import android.content.Context;
import com.tl.uic.TLFCache;

public class JavaScriptInterface
{
  public JavaScriptInterface(Context paramContext)
  {
  }

  public final void addMessage(String paramString)
  {
    TLFCache.addMessage(paramString);
  }
}

 