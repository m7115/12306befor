package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Comparator;
import java.util.List;
import javax.annotation.Nullable;

final class SortedLists
{
  static <E> int binarySearch(List<? extends E> paramList, @Nullable E paramE, Comparator<? super E> paramComparator, Relation paramRelation)
  {
    return binarySearch(paramList, paramE, paramComparator, paramRelation, true);
  }

  static <E> int binarySearch(List<? extends E> paramList, @Nullable E paramE, Comparator<? super E> paramComparator, Relation paramRelation, boolean paramBoolean)
  {
    Preconditions.checkNotNull(paramComparator);
    Preconditions.checkNotNull(paramRelation);
    int i = 0;
    int j = -1 + paramList.size();
    while (i <= j)
    {
      int k = i + (j - i) / 2;
      int m = paramComparator.compare(paramE, paramList.get(k));
      if (m < 0)
        j = k - 1;
      else if (m > 0)
        i = k + 1;
      else
        return paramRelation.exactMatchFound(paramList, paramE, i, k, j, paramComparator, paramBoolean);
    }
    return paramRelation.exactMatchNotFound(paramList, paramE, i, paramComparator);
  }

  static abstract enum Relation
  {
    static
    {
      // Byte code:
      //   0: new 17	com/google/common/collect/SortedLists$Relation$1
      //   3: dup
      //   4: ldc 18
      //   6: iconst_0
      //   7: invokespecial 22	com/google/common/collect/SortedLists$Relation$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 24	com/google/common/collect/SortedLists$Relation:LOWER	Lcom/google/common/collect/SortedLists$Relation;
      //   13: new 26	com/google/common/collect/SortedLists$Relation$2
      //   16: dup
      //   17: ldc 27
      //   19: iconst_1
      //   20: invokespecial 28	com/google/common/collect/SortedLists$Relation$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 30	com/google/common/collect/SortedLists$Relation:FLOOR	Lcom/google/common/collect/SortedLists$Relation;
      //   26: new 32	com/google/common/collect/SortedLists$Relation$3
      //   29: dup
      //   30: ldc 33
      //   32: iconst_2
      //   33: invokespecial 34	com/google/common/collect/SortedLists$Relation$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 36	com/google/common/collect/SortedLists$Relation:EQUAL	Lcom/google/common/collect/SortedLists$Relation;
      //   39: new 38	com/google/common/collect/SortedLists$Relation$4
      //   42: dup
      //   43: ldc 39
      //   45: iconst_3
      //   46: invokespecial 40	com/google/common/collect/SortedLists$Relation$4:<init>	(Ljava/lang/String;I)V
      //   49: putstatic 42	com/google/common/collect/SortedLists$Relation:CEILING	Lcom/google/common/collect/SortedLists$Relation;
      //   52: new 44	com/google/common/collect/SortedLists$Relation$5
      //   55: dup
      //   56: ldc 45
      //   58: iconst_4
      //   59: invokespecial 46	com/google/common/collect/SortedLists$Relation$5:<init>	(Ljava/lang/String;I)V
      //   62: putstatic 48	com/google/common/collect/SortedLists$Relation:HIGHER	Lcom/google/common/collect/SortedLists$Relation;
      //   65: iconst_5
      //   66: anewarray 2	com/google/common/collect/SortedLists$Relation
      //   69: astore_0
      //   70: aload_0
      //   71: iconst_0
      //   72: getstatic 24	com/google/common/collect/SortedLists$Relation:LOWER	Lcom/google/common/collect/SortedLists$Relation;
      //   75: aastore
      //   76: aload_0
      //   77: iconst_1
      //   78: getstatic 30	com/google/common/collect/SortedLists$Relation:FLOOR	Lcom/google/common/collect/SortedLists$Relation;
      //   81: aastore
      //   82: aload_0
      //   83: iconst_2
      //   84: getstatic 36	com/google/common/collect/SortedLists$Relation:EQUAL	Lcom/google/common/collect/SortedLists$Relation;
      //   87: aastore
      //   88: aload_0
      //   89: iconst_3
      //   90: getstatic 42	com/google/common/collect/SortedLists$Relation:CEILING	Lcom/google/common/collect/SortedLists$Relation;
      //   93: aastore
      //   94: aload_0
      //   95: iconst_4
      //   96: getstatic 48	com/google/common/collect/SortedLists$Relation:HIGHER	Lcom/google/common/collect/SortedLists$Relation;
      //   99: aastore
      //   100: aload_0
      //   101: putstatic 50	com/google/common/collect/SortedLists$Relation:$VALUES	[Lcom/google/common/collect/SortedLists$Relation;
      //   104: return
    }

    abstract <E> int exactMatchFound(List<? extends E> paramList, @Nullable E paramE, int paramInt1, int paramInt2, int paramInt3, Comparator<? super E> paramComparator, boolean paramBoolean);

    abstract <E> int exactMatchNotFound(List<? extends E> paramList, @Nullable E paramE, int paramInt, Comparator<? super E> paramComparator);

    abstract Relation reverse();
  }
}

 