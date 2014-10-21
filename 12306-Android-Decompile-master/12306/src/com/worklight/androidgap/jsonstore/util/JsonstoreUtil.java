package com.worklight.androidgap.jsonstore.util;

import java.text.MessageFormat;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class JsonstoreUtil
{
  private static final Logger coreLogger = Logger.getLogger("jsonstore-core");
  private static final Logger dbLogger = Logger.getLogger("jsonstore-db");

  public static String formatString(String paramString, Object[] paramArrayOfObject)
  {
    return MessageFormat.format(paramString, paramArrayOfObject);
  }

  public static Logger getCoreLogger()
  {
    return coreLogger;
  }

  public static Logger getDatabaseLogger()
  {
    return dbLogger;
  }

  public static List<int[]> splitArray(int[] paramArrayOfInt)
  {
    LinkedList localLinkedList = new LinkedList();
    int i = paramArrayOfInt.length;
    int j = 0;
    if (i <= 750)
      localLinkedList.add(paramArrayOfInt);
    while (true)
    {
      return localLinkedList;
      while (i > 0)
      {
        localLinkedList.add(Arrays.copyOfRange(paramArrayOfInt, j, j + Math.min(750, paramArrayOfInt.length - j)));
        j += 750;
        i -= 750;
      }
    }
  }
}

 