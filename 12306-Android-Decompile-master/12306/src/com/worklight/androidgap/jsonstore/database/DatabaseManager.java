package com.worklight.androidgap.jsonstore.database;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import com.worklight.androidgap.jsonstore.security.SecurityManager;
import com.worklight.androidgap.jsonstore.util.JsonstoreUtil;
import com.worklight.androidgap.jsonstore.util.Logger;
import java.io.File;
import java.util.HashMap;
import java.util.TreeMap;
import net.sqlcipher.database.SQLiteDatabase;

public class DatabaseManager
{
  private static final String SQL_SCHEMA = "PRAGMA table_info({0})";
  private static boolean initialized = false;
  private static final DatabaseManager instance = new DatabaseManager();
  private static final Logger logger = JsonstoreUtil.getDatabaseLogger();
  private HashMap<String, DatabaseAccessor> accessors = new HashMap();
  private SQLiteDatabase database;
  private String databaseKey;
  private String dbPath;

  public static DatabaseManager getInstance()
  {
    return instance;
  }

  private void openDatabaseIfNecessary(Context paramContext)
  {
    if (this.database == null)
    {
      if (!initialized)
      {
        SQLiteDatabase.loadLibs(paramContext);
        initialized = true;
      }
      if (this.databaseKey == null)
        this.databaseKey = "";
      this.database = SQLiteDatabase.openDatabase(new File(paramContext.getDatabasePath("wljsonstore"), this.dbPath).getAbsolutePath(), this.databaseKey, null, 268435456);
    }
  }

  public boolean checkDatabaseAgainstSchema(Context paramContext, String paramString, DatabaseSchema paramDatabaseSchema)
  {
    boolean bool1 = true;
    try
    {
      openDatabaseIfNecessary(paramContext);
      Cursor localCursor = this.database.rawQuery(JsonstoreUtil.formatString("PRAGMA table_info({0})", new Object[] { paramString }), null);
      if (localCursor != null)
      {
        int i = localCursor.getCount();
        TreeMap localTreeMap = null;
        if (i > 0)
        {
          localTreeMap = new TreeMap();
          for (int j = 0; j < i; j++)
          {
            localCursor.moveToNext();
            localTreeMap.put(localCursor.getString(localCursor.getColumnIndex("name")), localCursor.getString(localCursor.getColumnIndex("type")));
          }
        }
        localCursor.close();
        if (localTreeMap != null)
        {
          boolean bool2 = paramDatabaseSchema.equals(localTreeMap);
          if (bool2);
        }
      }
      while (true)
      {
        return bool1;
        bool1 = false;
        continue;
        bool1 = false;
      }
    }
    finally
    {
    }
  }

  public void clearDatabaseKey()
  {
    this.databaseKey = null;
  }

  public void clearDbPath()
  {
    this.dbPath = null;
  }

  public void closeDatabase()
  {
    try
    {
      this.database.close();
      this.accessors.clear();
      this.database = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int destroyDatabase(Context paramContext)
  {
    try
    {
      File localFile = paramContext.getDatabasePath("wljsonstore");
      boolean bool1 = localFile.exists();
      int i = 0;
      if (bool1)
      {
        boolean bool2 = localFile.isDirectory();
        i = 0;
        if (bool2)
        {
          String[] arrayOfString = localFile.list();
          i = 0;
          if (arrayOfString != null)
          {
            int j = arrayOfString.length;
            for (int k = 0; k < j; k++)
            {
              String str = arrayOfString[k];
              if (str != null)
              {
                boolean bool3 = new File(localFile, str).delete();
                if (!bool3)
                  i = -5;
              }
            }
          }
        }
      }
      return i;
    }
    finally
    {
    }
  }

  public void destroyKeychain(Context paramContext)
  {
    try
    {
      SecurityManager.getInstance(paramContext).destroyKeychain();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void destroyPreferences(Context paramContext)
  {
    try
    {
      SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("JsonstorePrefs", 0);
      if (localSharedPreferences != null)
      {
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.clear();
        localEditor.commit();
      }
      return;
    }
    finally
    {
    }
  }

  public DatabaseAccessor getDatabase(String paramString)
    throws Exception
  {
    DatabaseAccessor localDatabaseAccessor = (DatabaseAccessor)this.accessors.get(paramString);
    if (localDatabaseAccessor == null)
      throw new Exception("could not retrieve unprovisioned database \"" + paramString + "\"");
    return localDatabaseAccessor;
  }

  public String getDbPath()
  {
    return this.dbPath;
  }

  public boolean isDatabaseOpen()
  {
    return this.database != null;
  }

  public boolean provisionDatabase(Context paramContext, DatabaseSchema paramDatabaseSchema, boolean paramBoolean)
  {
    try
    {
      String str = paramDatabaseSchema.getName();
      openDatabaseIfNecessary(paramContext);
      DatabaseAccessorImpl localDatabaseAccessorImpl = new DatabaseAccessorImpl(this.database, paramDatabaseSchema);
      if (paramBoolean);
      try
      {
        localDatabaseAccessorImpl.dropTable();
        boolean bool1 = localDatabaseAccessorImpl.getTableExists();
        boolean bool2 = false;
        if (bool1)
          bool2 = true;
        if (logger.isLoggable(3))
          logger.logDebug("provisioning database \"" + str + "\" (" + "already exists: " + bool2 + ")");
        if (!bool2)
          localDatabaseAccessorImpl.createTable();
        this.accessors.put(str, localDatabaseAccessorImpl);
        return bool2;
      }
      finally
      {
      }
    }
    finally
    {
    }
  }

  public void setDatabaseKey(Context paramContext, String paramString1, String paramString2)
    throws Exception
  {
    this.databaseKey = SecurityManager.getInstance(paramContext).getDPK(paramString1, paramString2);
  }

  public void setDbPath(String paramString)
  {
    this.dbPath = (paramString + ".sqlite");
  }
}

 