package cn.domob.wall.core.download;

import android.content.Context;
import android.graphics.Bitmap;
import java.lang.ref.SoftReference;
import java.util.LinkedHashMap;
import java.util.Map.Entry;

public class l
{
  private static final int a = 15;
  private static m<String, Bitmap> b;
  private static LinkedHashMap<String, SoftReference<Bitmap>> c;

  public l(Context paramContext)
  {
    b = new m(8388608)
    {
      protected int a(String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        if (paramAnonymousBitmap != null)
          return paramAnonymousBitmap.getRowBytes() * paramAnonymousBitmap.getHeight();
        return 0;
      }

      protected void a(boolean paramAnonymousBoolean, String paramAnonymousString, Bitmap paramAnonymousBitmap1, Bitmap paramAnonymousBitmap2)
      {
        if (paramAnonymousBitmap1 != null)
          l.b().put(paramAnonymousString, new SoftReference(paramAnonymousBitmap1));
      }
    };
    c = new LinkedHashMap(15, 0.75F, true)
    {
      private static final long serialVersionUID = 6040103833179403725L;

      protected boolean removeEldestEntry(Map.Entry<String, SoftReference<Bitmap>> paramAnonymousEntry)
      {
        return size() > 15;
      }
    };
  }

  public Bitmap a(String paramString)
  {
    synchronized (b)
    {
      Bitmap localBitmap1 = (Bitmap)b.a(paramString);
      if (localBitmap1 != null)
      {
        b.b(paramString);
        b.b(paramString, localBitmap1);
        return localBitmap1;
      }
      synchronized (c)
      {
        SoftReference localSoftReference = (SoftReference)c.get(paramString);
        if (localSoftReference == null)
          break label133;
        Bitmap localBitmap2 = (Bitmap)localSoftReference.get();
        if (localBitmap2 != null)
        {
          b.b(paramString, localBitmap2);
          c.remove(paramString);
          return localBitmap2;
        }
      }
    }
    c.remove(paramString);
    label133: return null;
  }

  public void a()
  {
    c.clear();
  }

  public void a(String paramString, Bitmap paramBitmap)
  {
    if (paramBitmap != null)
      synchronized (b)
      {
        b.b(paramString, paramBitmap);
        return;
      }
  }
}

 