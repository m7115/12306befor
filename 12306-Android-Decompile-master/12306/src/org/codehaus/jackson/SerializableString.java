package org.codehaus.jackson;

public abstract interface SerializableString
{
  public abstract char[] asQuotedChars();

  public abstract byte[] asQuotedUTF8();

  public abstract byte[] asUnquotedUTF8();

  public abstract int charLength();

  public abstract String getValue();
}

 