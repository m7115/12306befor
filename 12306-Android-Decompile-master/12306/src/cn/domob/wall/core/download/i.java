package cn.domob.wall.core.download;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.Comparator;

public class i
{
  private static final String a = "DrwCach";
  private static final String b = ".cach";
  private static final int c = 1048576;
  private static final int d = 10;
  private static final int e = 10;

  public i()
  {
    c(b());
  }

  private int a()
  {
    StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
    return (int)(localStatFs.getAvailableBlocks() * localStatFs.getBlockSize() / 1048576.0D);
  }

  private String b()
  {
    return c() + "/" + "DrwCach";
  }

  private String c()
  {
    boolean bool = Environment.getExternalStorageState().equals("mounted");
    File localFile = null;
    if (bool)
      localFile = Environment.getExternalStorageDirectory();
    if (localFile != null)
      return localFile.toString();
    return "";
  }

  private boolean c(String paramString)
  {
    File[] arrayOfFile = new File(paramString).listFiles();
    boolean bool2;
    if (arrayOfFile == null)
      bool2 = true;
    int n;
    do
    {
      boolean bool1;
      do
      {
        return bool2;
        bool1 = Environment.getExternalStorageState().equals("mounted");
        bool2 = false;
      }
      while (!bool1);
      int i = 0;
      int j = 0;
      while (i < arrayOfFile.length)
      {
        if (arrayOfFile[i].getName().contains(".cach"))
          j = (int)(j + arrayOfFile[i].length());
        i++;
      }
      if ((j > 10485760) || (10 > a()))
      {
        int k = (int)(1.0D + 0.4D * arrayOfFile.length);
        Arrays.sort(arrayOfFile, new a(null));
        for (int m = 0; m < k; m++)
          if (arrayOfFile[m].getName().contains(".cach"))
            arrayOfFile[m].delete();
      }
      n = a();
      bool2 = false;
    }
    while (n <= 10);
    return true;
  }

  private String d(String paramString)
  {
    String[] arrayOfString = paramString.split("/");
    return arrayOfString[(-1 + arrayOfString.length)] + ".cach";
  }

  public Bitmap a(String paramString)
  {
    String str = b() + "/" + d(paramString);
    File localFile = new File(str);
    Bitmap localBitmap;
    if (localFile.exists())
    {
      localBitmap = BitmapFactory.decodeFile(str);
      if (localBitmap == null)
        localFile.delete();
    }
    else
    {
      return null;
    }
    b(str);
    return localBitmap;
  }

  public void a(Bitmap paramBitmap, String paramString)
  {
    if (paramBitmap == null);
    while (10 > a())
      return;
    String str1 = d(paramString);
    String str2 = b();
    File localFile1 = new File(str2);
    if (!localFile1.exists())
      localFile1.mkdirs();
    File localFile2 = new File(str2 + "/" + str1);
    try
    {
      localFile2.createNewFile();
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localFileOutputStream);
      localFileOutputStream.flush();
      localFileOutputStream.close();
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Log.w("ImageFileCache", "FileNotFoundException");
      return;
    }
    catch (IOException localIOException)
    {
      Log.w("ImageFileCache", "IOException");
    }
  }

  public void b(String paramString)
  {
    new File(paramString).setLastModified(System.currentTimeMillis());
  }

  private class a
    implements Comparator<File>
  {
    private a()
    {
    }

    public int a(File paramFile1, File paramFile2)
    {
      if (paramFile1.lastModified() > paramFile2.lastModified())
        return 1;
      if (paramFile1.lastModified() == paramFile2.lastModified())
        return 0;
      return -1;
    }
  }
}

 