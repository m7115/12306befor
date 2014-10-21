package com.worklight.androidgap.jsonstore.database;

import net.sqlcipher.database.SQLiteDatabase;

public abstract interface DatabaseAccessor
{
  public abstract SQLiteDatabase getRawDatabase();

  public abstract ReadableDatabase getReadableDatabase();

  public abstract DatabaseSchema getSchema();

  public abstract WritableDatabase getWritableDatabase();
}

 