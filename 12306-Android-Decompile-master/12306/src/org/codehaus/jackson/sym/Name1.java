package org.codehaus.jackson.sym;

public final class Name1 extends Name
{
  static final Name1 sEmptyName = new Name1("", 0, 0);
  final int mQuad;

  Name1(String paramString, int paramInt1, int paramInt2)
  {
    super(paramString, paramInt1);
    this.mQuad = paramInt2;
  }

  static final Name1 getEmptyName()
  {
    return sEmptyName;
  }

  public boolean equals(int paramInt)
  {
    return paramInt == this.mQuad;
  }

  public boolean equals(int paramInt1, int paramInt2)
  {
    return (paramInt1 == this.mQuad) && (paramInt2 == 0);
  }

  public boolean equals(int[] paramArrayOfInt, int paramInt)
  {
    return (paramInt == 1) && (paramArrayOfInt[0] == this.mQuad);
  }
}

 