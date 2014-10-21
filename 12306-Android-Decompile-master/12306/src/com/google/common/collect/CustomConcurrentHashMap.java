package com.google.common.collect;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Equivalence;
import com.google.common.base.Equivalences;
import com.google.common.base.FinalizableReferenceQueue;
import com.google.common.base.FinalizableSoftReference;
import com.google.common.base.FinalizableWeakReference;
import com.google.common.base.Preconditions;
import com.google.common.base.Ticker;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

class CustomConcurrentHashMap<K, V> extends AbstractMap<K, V>
  implements ConcurrentMap<K, V>, Serializable
{
  static final int CLEANUP_MAX = 16;
  static final Queue<? extends ReferenceEntry<?, ?>> DISCARDING_QUEUE = new AbstractQueue()
  {
    public Iterator<CustomConcurrentHashMap.ReferenceEntry<?, ?>> iterator()
    {
      return Iterators.emptyIterator();
    }

    public boolean offer(CustomConcurrentHashMap.ReferenceEntry<?, ?> paramAnonymousReferenceEntry)
    {
      return true;
    }

    public CustomConcurrentHashMap.ReferenceEntry<?, ?> peek()
    {
      return null;
    }

    public CustomConcurrentHashMap.ReferenceEntry<?, ?> poll()
    {
      return null;
    }

    public int size()
    {
      return 0;
    }
  };
  static final int DRAIN_THRESHOLD = 63;
  static final int MAXIMUM_CAPACITY = 1073741824;
  static final int MAX_SEGMENTS = 65536;
  static final ValueReference<Object, Object> UNSET = new ValueReference()
  {
    public void clear()
    {
    }

    public CustomConcurrentHashMap.ValueReference<Object, Object> copyFor(CustomConcurrentHashMap.ReferenceEntry<Object, Object> paramAnonymousReferenceEntry)
    {
      return this;
    }

    public Object get()
    {
      return null;
    }

    public boolean isComputingReference()
    {
      return false;
    }

    public void notifyValueReclaimed()
    {
    }

    public Object waitForValue()
    {
      return null;
    }
  };
  private static final long serialVersionUID = 4L;
  final Executor cleanupExecutor;
  final int concurrencyLevel;
  final transient EntryFactory entryFactory;
  Set<Map.Entry<K, V>> entrySet;
  final MapEvictionListener<? super K, ? super V> evictionListener;
  final Queue<ReferenceEntry<K, V>> evictionNotificationQueue;
  final long expireAfterAccessNanos;
  final long expireAfterWriteNanos;
  final Equivalence<Object> keyEquivalence;
  Set<K> keySet;
  final Strength keyStrength;
  final int maximumSize;
  final transient int segmentMask;
  final transient int segmentShift;
  final transient CustomConcurrentHashMap<K, V>[].Segment segments;
  final Ticker ticker;
  final Equivalence<Object> valueEquivalence;
  final Strength valueStrength;
  Collection<V> values;

  CustomConcurrentHashMap(MapMaker paramMapMaker)
  {
    this.concurrencyLevel = Math.min(paramMapMaker.getConcurrencyLevel(), 65536);
    this.keyStrength = paramMapMaker.getKeyStrength();
    this.valueStrength = paramMapMaker.getValueStrength();
    this.keyEquivalence = paramMapMaker.getKeyEquivalence();
    this.valueEquivalence = paramMapMaker.getValueEquivalence();
    this.maximumSize = paramMapMaker.maximumSize;
    this.expireAfterAccessNanos = paramMapMaker.getExpireAfterAccessNanos();
    this.expireAfterWriteNanos = paramMapMaker.getExpireAfterWriteNanos();
    this.entryFactory = EntryFactory.getFactory(this.keyStrength, expires(), evictsBySize());
    this.cleanupExecutor = paramMapMaker.getCleanupExecutor();
    this.ticker = paramMapMaker.getTicker();
    this.evictionListener = paramMapMaker.getEvictionListener();
    if (this.evictionListener == MapMaker.NullListener.INSTANCE);
    int i;
    int j;
    int k;
    for (Object localObject = discardingQueue(); ; localObject = new ConcurrentLinkedQueue())
    {
      this.evictionNotificationQueue = ((Queue)localObject);
      i = Math.min(paramMapMaker.getInitialCapacity(), 1073741824);
      if (evictsBySize())
        i = Math.min(i, this.maximumSize);
      j = 0;
      k = 1;
      while ((k < this.concurrencyLevel) && ((!evictsBySize()) || (k * 2 <= this.maximumSize)))
      {
        j++;
        k <<= 1;
      }
    }
    this.segmentShift = (32 - j);
    this.segmentMask = (k - 1);
    this.segments = newSegmentArray(k);
    int m = i / k;
    if (m * k < i)
      m++;
    int n = 1;
    while (n < m)
      n <<= 1;
    if (evictsBySize())
    {
      int i2 = 1 + this.maximumSize / k;
      int i3 = this.maximumSize % k;
      for (int i4 = 0; i4 < this.segments.length; i4++)
      {
        if (i4 == i3)
          i2--;
        this.segments[i4] = createSegment(n, i2);
      }
    }
    for (int i1 = 0; i1 < this.segments.length; i1++)
      this.segments[i1] = createSegment(n, -1);
  }

  @GuardedBy("Segment.this")
  static <K, V> void connectEvictables(ReferenceEntry<K, V> paramReferenceEntry1, ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry1.setNextEvictable(paramReferenceEntry2);
    paramReferenceEntry2.setPreviousEvictable(paramReferenceEntry1);
  }

  @GuardedBy("Segment.this")
  static <K, V> void connectExpirables(ReferenceEntry<K, V> paramReferenceEntry1, ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry1.setNextExpirable(paramReferenceEntry2);
    paramReferenceEntry2.setPreviousExpirable(paramReferenceEntry1);
  }

  static <E> Queue<E> discardingQueue()
  {
    return DISCARDING_QUEUE;
  }

  static <K, V> ReferenceEntry<K, V> nullEntry()
  {
    return NullEntry.INSTANCE;
  }

  @GuardedBy("Segment.this")
  static <K, V> void nullifyEvictable(ReferenceEntry<K, V> paramReferenceEntry)
  {
    ReferenceEntry localReferenceEntry = nullEntry();
    paramReferenceEntry.setNextEvictable(localReferenceEntry);
    paramReferenceEntry.setPreviousEvictable(localReferenceEntry);
  }

  @GuardedBy("Segment.this")
  static <K, V> void nullifyExpirable(ReferenceEntry<K, V> paramReferenceEntry)
  {
    ReferenceEntry localReferenceEntry = nullEntry();
    paramReferenceEntry.setNextExpirable(localReferenceEntry);
    paramReferenceEntry.setPreviousExpirable(localReferenceEntry);
  }

  private static int rehash(int paramInt)
  {
    int i = paramInt + (0xFFFFCD7D ^ paramInt << 15);
    int j = i ^ i >>> 10;
    int k = j + (j << 3);
    int m = k ^ k >>> 6;
    int n = m + ((m << 2) + (m << 14));
    return n ^ n >>> 16;
  }

  static <K, V> ValueReference<K, V> unset()
  {
    return UNSET;
  }

  public void clear()
  {
    Segment[] arrayOfSegment = this.segments;
    int i = arrayOfSegment.length;
    for (int j = 0; j < i; j++)
      arrayOfSegment[j].clear();
  }

  public boolean containsKey(Object paramObject)
  {
    int i = hash(paramObject);
    return segmentFor(i).containsKey(paramObject, i);
  }

  public boolean containsValue(Object paramObject)
  {
    Preconditions.checkNotNull(paramObject);
    Segment[] arrayOfSegment = this.segments;
    for (int i = 0; i < arrayOfSegment.length; i++)
      if (arrayOfSegment[i].containsValue(paramObject))
        return true;
    return false;
  }

  @GuardedBy("Segment.this")
  ReferenceEntry<K, V> copyEntry(ReferenceEntry<K, V> paramReferenceEntry1, ReferenceEntry<K, V> paramReferenceEntry2)
  {
    ValueReference localValueReference = paramReferenceEntry1.getValueReference();
    ReferenceEntry localReferenceEntry = this.entryFactory.copyEntry(this, paramReferenceEntry1, paramReferenceEntry2);
    localReferenceEntry.setValueReference(localValueReference.copyFor(localReferenceEntry));
    return localReferenceEntry;
  }

  CustomConcurrentHashMap<K, V>.Segment createSegment(int paramInt1, int paramInt2)
  {
    return new Segment(paramInt1, paramInt2);
  }

  void enqueueNotification(K paramK, int paramInt, ValueReference<K, V> paramValueReference)
  {
    if (this.evictionNotificationQueue == DISCARDING_QUEUE)
      return;
    ReferenceEntry localReferenceEntry = newEntry(paramK, paramInt, null);
    localReferenceEntry.setValueReference(paramValueReference.copyFor(localReferenceEntry));
    this.evictionNotificationQueue.offer(localReferenceEntry);
  }

  public Set<Map.Entry<K, V>> entrySet()
  {
    Set localSet = this.entrySet;
    if (localSet != null)
      return localSet;
    EntrySet localEntrySet = new EntrySet();
    this.entrySet = localEntrySet;
    return localEntrySet;
  }

  boolean evictsBySize()
  {
    return this.maximumSize != -1;
  }

  boolean expires()
  {
    return (expiresAfterWrite()) || (expiresAfterAccess());
  }

  boolean expiresAfterAccess()
  {
    return this.expireAfterAccessNanos > 0L;
  }

  boolean expiresAfterWrite()
  {
    return this.expireAfterWriteNanos > 0L;
  }

  public V get(Object paramObject)
  {
    int i = hash(paramObject);
    return segmentFor(i).get(paramObject, i);
  }

  @VisibleForTesting
  ReferenceEntry<K, V> getEntry(Object paramObject)
  {
    int i = hash(paramObject);
    return segmentFor(i).getEntry(paramObject, i);
  }

  int hash(Object paramObject)
  {
    return rehash(this.keyEquivalence.hash(Preconditions.checkNotNull(paramObject)));
  }

  boolean isCollected(ReferenceEntry<K, V> paramReferenceEntry)
  {
    if (paramReferenceEntry.getKey() == null);
    ValueReference localValueReference;
    do
    {
      return true;
      localValueReference = paramReferenceEntry.getValueReference();
      if (localValueReference.isComputingReference())
        return false;
    }
    while (localValueReference.get() == null);
    return false;
  }

  public boolean isEmpty()
  {
    Segment[] arrayOfSegment = this.segments;
    int[] arrayOfInt = new int[arrayOfSegment.length];
    int i = 0;
    for (int j = 0; j < arrayOfSegment.length; j++)
    {
      if (arrayOfSegment[j].count != 0)
        return false;
      int m = arrayOfSegment[j].modCount;
      arrayOfInt[j] = m;
      i += m;
    }
    if (i != 0)
      for (int k = 0; ; k++)
      {
        if (k >= arrayOfSegment.length)
          break label104;
        if ((arrayOfSegment[k].count != 0) || (arrayOfInt[k] != arrayOfSegment[k].modCount))
          break;
      }
    label104: return true;
  }

  boolean isExpired(ReferenceEntry<K, V> paramReferenceEntry)
  {
    return isExpired(paramReferenceEntry, this.ticker.read());
  }

  boolean isExpired(ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
  {
    return paramLong - paramReferenceEntry.getExpirationTime() > 0L;
  }

  boolean isInlineCleanup()
  {
    return this.cleanupExecutor == MapMaker.DEFAULT_CLEANUP_EXECUTOR;
  }

  @VisibleForTesting
  boolean isLive(ReferenceEntry<K, V> paramReferenceEntry)
  {
    return segmentFor(paramReferenceEntry.getHash()).getLiveValue(paramReferenceEntry) != null;
  }

  boolean isUnset(ReferenceEntry<K, V> paramReferenceEntry)
  {
    return isUnset(paramReferenceEntry.getValueReference());
  }

  boolean isUnset(ValueReference<K, V> paramValueReference)
  {
    return paramValueReference == UNSET;
  }

  public Set<K> keySet()
  {
    Set localSet = this.keySet;
    if (localSet != null)
      return localSet;
    KeySet localKeySet = new KeySet();
    this.keySet = localKeySet;
    return localKeySet;
  }

  @GuardedBy("Segment.this")
  ReferenceEntry<K, V> newEntry(K paramK, int paramInt, @Nullable ReferenceEntry<K, V> paramReferenceEntry)
  {
    return this.entryFactory.newEntry(this, paramK, paramInt, paramReferenceEntry);
  }

  final CustomConcurrentHashMap<K, V>[].Segment newSegmentArray(int paramInt)
  {
    return (Segment[])Array.newInstance(Segment.class, paramInt);
  }

  @GuardedBy("Segment.this")
  ValueReference<K, V> newValueReference(ReferenceEntry<K, V> paramReferenceEntry, V paramV)
  {
    return this.valueStrength.referenceValue(paramReferenceEntry, paramV);
  }

  void processPendingNotifications()
  {
    while (true)
    {
      ReferenceEntry localReferenceEntry = (ReferenceEntry)this.evictionNotificationQueue.poll();
      if (localReferenceEntry == null)
        break;
      this.evictionListener.onEviction(localReferenceEntry.getKey(), localReferenceEntry.getValueReference().get());
    }
  }

  public V put(K paramK, V paramV)
  {
    int i = hash(paramK);
    return segmentFor(i).put(paramK, i, paramV, false);
  }

  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }

  public V putIfAbsent(K paramK, V paramV)
  {
    int i = hash(paramK);
    return segmentFor(i).put(paramK, i, paramV, true);
  }

  void reclaimKey(ReferenceEntry<K, V> paramReferenceEntry)
  {
    int i = paramReferenceEntry.getHash();
    segmentFor(i).unsetKey(paramReferenceEntry, i);
  }

  void reclaimValue(ReferenceEntry<K, V> paramReferenceEntry, ValueReference<K, V> paramValueReference)
  {
    int i = paramReferenceEntry.getHash();
    Segment localSegment = segmentFor(i);
    localSegment.unsetValue(paramReferenceEntry.getKey(), i, paramValueReference);
    if (!localSegment.isHeldByCurrentThread())
      localSegment.postWriteCleanup();
  }

  public V remove(Object paramObject)
  {
    int i = hash(paramObject);
    return segmentFor(i).remove(paramObject, i);
  }

  public boolean remove(Object paramObject1, Object paramObject2)
  {
    int i = hash(paramObject1);
    return segmentFor(i).remove(paramObject1, i, paramObject2);
  }

  public V replace(K paramK, V paramV)
  {
    int i = hash(paramK);
    return segmentFor(i).replace(paramK, i, paramV);
  }

  public boolean replace(K paramK, V paramV1, V paramV2)
  {
    int i = hash(paramK);
    return segmentFor(i).replace(paramK, i, paramV1, paramV2);
  }

  CustomConcurrentHashMap<K, V>.Segment segmentFor(int paramInt)
  {
    return this.segments[(paramInt >>> this.segmentShift & this.segmentMask)];
  }

  public int size()
  {
    Segment[] arrayOfSegment = this.segments;
    long l = 0L;
    for (int i = 0; i < arrayOfSegment.length; i++)
      l += arrayOfSegment[i].count;
    return Ints.saturatedCast(l);
  }

  public Collection<V> values()
  {
    Collection localCollection = this.values;
    if (localCollection != null)
      return localCollection;
    Values localValues = new Values();
    this.values = localValues;
    return localValues;
  }

  Object writeReplace()
  {
    return new SerializationProxy(this.keyStrength, this.valueStrength, this.keyEquivalence, this.valueEquivalence, this.expireAfterWriteNanos, this.expireAfterAccessNanos, this.maximumSize, this.concurrencyLevel, this.evictionListener, this);
  }

  static abstract class AbstractSerializationProxy<K, V> extends ForwardingConcurrentMap<K, V>
    implements Serializable
  {
    private static final long serialVersionUID = 2L;
    final int concurrencyLevel;
    transient ConcurrentMap<K, V> delegate;
    final MapEvictionListener<? super K, ? super V> evictionListener;
    final long expireAfterAccessNanos;
    final long expireAfterWriteNanos;
    final Equivalence<Object> keyEquivalence;
    final CustomConcurrentHashMap.Strength keyStrength;
    final int maximumSize;
    final Equivalence<Object> valueEquivalence;
    final CustomConcurrentHashMap.Strength valueStrength;

    AbstractSerializationProxy(CustomConcurrentHashMap.Strength paramStrength1, CustomConcurrentHashMap.Strength paramStrength2, Equivalence<Object> paramEquivalence1, Equivalence<Object> paramEquivalence2, long paramLong1, long paramLong2, int paramInt1, int paramInt2, MapEvictionListener<? super K, ? super V> paramMapEvictionListener, ConcurrentMap<K, V> paramConcurrentMap)
    {
      this.keyStrength = paramStrength1;
      this.valueStrength = paramStrength2;
      this.keyEquivalence = paramEquivalence1;
      this.valueEquivalence = paramEquivalence2;
      this.expireAfterWriteNanos = paramLong1;
      this.expireAfterAccessNanos = paramLong2;
      this.maximumSize = paramInt1;
      this.concurrencyLevel = paramInt2;
      this.evictionListener = paramMapEvictionListener;
      this.delegate = paramConcurrentMap;
    }

    protected ConcurrentMap<K, V> delegate()
    {
      return this.delegate;
    }

    void readEntries(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      while (true)
      {
        Object localObject1 = paramObjectInputStream.readObject();
        if (localObject1 == null)
          return;
        Object localObject2 = paramObjectInputStream.readObject();
        this.delegate.put(localObject1, localObject2);
      }
    }

    MapMaker readMapMaker(ObjectInputStream paramObjectInputStream)
      throws IOException
    {
      int i = paramObjectInputStream.readInt();
      MapMaker localMapMaker = new MapMaker().initialCapacity(i).setKeyStrength(this.keyStrength).setValueStrength(this.valueStrength).privateKeyEquivalence(this.keyEquivalence).privateValueEquivalence(this.valueEquivalence).concurrencyLevel(this.concurrencyLevel);
      localMapMaker.evictionListener(this.evictionListener);
      if (this.expireAfterWriteNanos > 0L)
        localMapMaker.expireAfterWrite(this.expireAfterWriteNanos, TimeUnit.NANOSECONDS);
      if (this.expireAfterAccessNanos > 0L)
        localMapMaker.expireAfterAccess(this.expireAfterAccessNanos, TimeUnit.NANOSECONDS);
      if (this.maximumSize != -1)
        localMapMaker.maximumSize(this.maximumSize);
      return localMapMaker;
    }

    void writeMapTo(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.writeInt(this.delegate.size());
      Iterator localIterator = this.delegate.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramObjectOutputStream.writeObject(localEntry.getKey());
        paramObjectOutputStream.writeObject(localEntry.getValue());
      }
      paramObjectOutputStream.writeObject(null);
    }
  }

  static abstract enum EntryFactory
  {
    static final int EVICTABLE_MASK = 2;
    static final int EXPIRABLE_MASK = 1;
    static final EntryFactory[][] factories = arrayOfEntryFactory;;

    static
    {
      // Byte code:
      //   0: new 31	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$1
      //   3: dup
      //   4: ldc 32
      //   6: iconst_0
      //   7: invokespecial 36	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 38	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:STRONG	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   13: new 40	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$2
      //   16: dup
      //   17: ldc 41
      //   19: iconst_1
      //   20: invokespecial 42	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 44	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:STRONG_EXPIRABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   26: new 46	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$3
      //   29: dup
      //   30: ldc 47
      //   32: iconst_2
      //   33: invokespecial 48	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 50	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:STRONG_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   39: new 52	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$4
      //   42: dup
      //   43: ldc 53
      //   45: iconst_3
      //   46: invokespecial 54	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$4:<init>	(Ljava/lang/String;I)V
      //   49: putstatic 56	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:STRONG_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   52: new 58	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$5
      //   55: dup
      //   56: ldc 59
      //   58: iconst_4
      //   59: invokespecial 60	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$5:<init>	(Ljava/lang/String;I)V
      //   62: putstatic 62	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:SOFT	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   65: new 64	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$6
      //   68: dup
      //   69: ldc 65
      //   71: iconst_5
      //   72: invokespecial 66	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$6:<init>	(Ljava/lang/String;I)V
      //   75: putstatic 68	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:SOFT_EXPIRABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   78: new 70	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$7
      //   81: dup
      //   82: ldc 71
      //   84: bipush 6
      //   86: invokespecial 72	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$7:<init>	(Ljava/lang/String;I)V
      //   89: putstatic 74	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:SOFT_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   92: new 76	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$8
      //   95: dup
      //   96: ldc 77
      //   98: bipush 7
      //   100: invokespecial 78	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$8:<init>	(Ljava/lang/String;I)V
      //   103: putstatic 80	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:SOFT_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   106: new 82	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$9
      //   109: dup
      //   110: ldc 83
      //   112: bipush 8
      //   114: invokespecial 84	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$9:<init>	(Ljava/lang/String;I)V
      //   117: putstatic 86	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:WEAK	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   120: new 88	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$10
      //   123: dup
      //   124: ldc 89
      //   126: bipush 9
      //   128: invokespecial 90	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$10:<init>	(Ljava/lang/String;I)V
      //   131: putstatic 92	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:WEAK_EXPIRABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   134: new 94	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$11
      //   137: dup
      //   138: ldc 95
      //   140: bipush 10
      //   142: invokespecial 96	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$11:<init>	(Ljava/lang/String;I)V
      //   145: putstatic 98	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:WEAK_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   148: new 100	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$12
      //   151: dup
      //   152: ldc 101
      //   154: bipush 11
      //   156: invokespecial 102	com/google/common/collect/CustomConcurrentHashMap$EntryFactory$12:<init>	(Ljava/lang/String;I)V
      //   159: putstatic 104	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:WEAK_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   162: bipush 12
      //   164: anewarray 2	com/google/common/collect/CustomConcurrentHashMap$EntryFactory
      //   167: astore_0
      //   168: aload_0
      //   169: iconst_0
      //   170: getstatic 38	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:STRONG	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   173: aastore
      //   174: aload_0
      //   175: iconst_1
      //   176: getstatic 44	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:STRONG_EXPIRABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   179: aastore
      //   180: aload_0
      //   181: iconst_2
      //   182: getstatic 50	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:STRONG_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   185: aastore
      //   186: aload_0
      //   187: iconst_3
      //   188: getstatic 56	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:STRONG_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   191: aastore
      //   192: aload_0
      //   193: iconst_4
      //   194: getstatic 62	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:SOFT	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   197: aastore
      //   198: aload_0
      //   199: iconst_5
      //   200: getstatic 68	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:SOFT_EXPIRABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   203: aastore
      //   204: aload_0
      //   205: bipush 6
      //   207: getstatic 74	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:SOFT_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   210: aastore
      //   211: aload_0
      //   212: bipush 7
      //   214: getstatic 80	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:SOFT_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   217: aastore
      //   218: aload_0
      //   219: bipush 8
      //   221: getstatic 86	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:WEAK	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   224: aastore
      //   225: aload_0
      //   226: bipush 9
      //   228: getstatic 92	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:WEAK_EXPIRABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   231: aastore
      //   232: aload_0
      //   233: bipush 10
      //   235: getstatic 98	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:WEAK_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   238: aastore
      //   239: aload_0
      //   240: bipush 11
      //   242: getstatic 104	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:WEAK_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   245: aastore
      //   246: aload_0
      //   247: putstatic 106	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:$VALUES	[Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   250: iconst_3
      //   251: anewarray 107	[Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   254: astore_1
      //   255: iconst_4
      //   256: anewarray 2	com/google/common/collect/CustomConcurrentHashMap$EntryFactory
      //   259: astore_2
      //   260: aload_2
      //   261: iconst_0
      //   262: getstatic 38	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:STRONG	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   265: aastore
      //   266: aload_2
      //   267: iconst_1
      //   268: getstatic 44	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:STRONG_EXPIRABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   271: aastore
      //   272: aload_2
      //   273: iconst_2
      //   274: getstatic 50	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:STRONG_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   277: aastore
      //   278: aload_2
      //   279: iconst_3
      //   280: getstatic 56	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:STRONG_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   283: aastore
      //   284: aload_1
      //   285: iconst_0
      //   286: aload_2
      //   287: aastore
      //   288: iconst_4
      //   289: anewarray 2	com/google/common/collect/CustomConcurrentHashMap$EntryFactory
      //   292: astore_3
      //   293: aload_3
      //   294: iconst_0
      //   295: getstatic 62	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:SOFT	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   298: aastore
      //   299: aload_3
      //   300: iconst_1
      //   301: getstatic 68	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:SOFT_EXPIRABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   304: aastore
      //   305: aload_3
      //   306: iconst_2
      //   307: getstatic 74	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:SOFT_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   310: aastore
      //   311: aload_3
      //   312: iconst_3
      //   313: getstatic 80	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:SOFT_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   316: aastore
      //   317: aload_1
      //   318: iconst_1
      //   319: aload_3
      //   320: aastore
      //   321: iconst_4
      //   322: anewarray 2	com/google/common/collect/CustomConcurrentHashMap$EntryFactory
      //   325: astore 4
      //   327: aload 4
      //   329: iconst_0
      //   330: getstatic 86	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:WEAK	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   333: aastore
      //   334: aload 4
      //   336: iconst_1
      //   337: getstatic 92	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:WEAK_EXPIRABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   340: aastore
      //   341: aload 4
      //   343: iconst_2
      //   344: getstatic 98	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:WEAK_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   347: aastore
      //   348: aload 4
      //   350: iconst_3
      //   351: getstatic 104	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:WEAK_EXPIRABLE_EVICTABLE	Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   354: aastore
      //   355: aload_1
      //   356: iconst_2
      //   357: aload 4
      //   359: aastore
      //   360: aload_1
      //   361: putstatic 109	com/google/common/collect/CustomConcurrentHashMap$EntryFactory:factories	[[Lcom/google/common/collect/CustomConcurrentHashMap$EntryFactory;
      //   364: return
    }

    static EntryFactory getFactory(CustomConcurrentHashMap.Strength paramStrength, boolean paramBoolean1, boolean paramBoolean2)
    {
      if (paramBoolean1);
      for (int i = 1; ; i = 0)
      {
        int j = 0;
        if (paramBoolean2)
          j = 2;
        int k = i | j;
        return factories[paramStrength.ordinal()][k];
      }
    }

    @GuardedBy("Segment.this")
    <K, V> CustomConcurrentHashMap.ReferenceEntry<K, V> copyEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry1, CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      return newEntry(paramCustomConcurrentHashMap, paramReferenceEntry1.getKey(), paramReferenceEntry1.getHash(), paramReferenceEntry2);
    }

    @GuardedBy("Segment.this")
    <K, V> void copyEvictableEntry(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry1, CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      CustomConcurrentHashMap.connectEvictables(paramReferenceEntry1.getPreviousEvictable(), paramReferenceEntry2);
      CustomConcurrentHashMap.connectEvictables(paramReferenceEntry2, paramReferenceEntry1.getNextEvictable());
      CustomConcurrentHashMap.nullifyEvictable(paramReferenceEntry1);
    }

    @GuardedBy("Segment.this")
    <K, V> void copyExpirableEntry(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry1, CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      paramReferenceEntry2.setExpirationTime(paramReferenceEntry1.getExpirationTime());
      CustomConcurrentHashMap.connectExpirables(paramReferenceEntry1.getPreviousExpirable(), paramReferenceEntry2);
      CustomConcurrentHashMap.connectExpirables(paramReferenceEntry2, paramReferenceEntry1.getNextExpirable());
      CustomConcurrentHashMap.nullifyExpirable(paramReferenceEntry1);
    }

    abstract <K, V> CustomConcurrentHashMap.ReferenceEntry<K, V> newEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry);
  }

  final class EntryIterator extends CustomConcurrentHashMap<K, V>.HashIterator
    implements Iterator<Map.Entry<K, V>>
  {
    EntryIterator()
    {
      super();
    }

    public Map.Entry<K, V> next()
    {
      return nextEntry();
    }
  }

  final class EntrySet extends AbstractSet<Map.Entry<K, V>>
  {
    EntrySet()
    {
    }

    public void clear()
    {
      CustomConcurrentHashMap.this.clear();
    }

    public boolean contains(Object paramObject)
    {
      if (!(paramObject instanceof Map.Entry));
      Map.Entry localEntry;
      Object localObject2;
      do
      {
        Object localObject1;
        do
        {
          return false;
          localEntry = (Map.Entry)paramObject;
          localObject1 = localEntry.getKey();
        }
        while (localObject1 == null);
        localObject2 = CustomConcurrentHashMap.this.get(localObject1);
      }
      while ((localObject2 == null) || (!CustomConcurrentHashMap.this.valueEquivalence.equivalent(localEntry.getValue(), localObject2)));
      return true;
    }

    public boolean isEmpty()
    {
      return CustomConcurrentHashMap.this.isEmpty();
    }

    public Iterator<Map.Entry<K, V>> iterator()
    {
      return new CustomConcurrentHashMap.EntryIterator(CustomConcurrentHashMap.this);
    }

    public boolean remove(Object paramObject)
    {
      if (!(paramObject instanceof Map.Entry));
      Map.Entry localEntry;
      Object localObject;
      do
      {
        return false;
        localEntry = (Map.Entry)paramObject;
        localObject = localEntry.getKey();
      }
      while ((localObject == null) || (!CustomConcurrentHashMap.this.remove(localObject, localEntry.getValue())));
      return true;
    }

    public int size()
    {
      return CustomConcurrentHashMap.this.size();
    }
  }

  abstract class HashIterator
  {
    AtomicReferenceArray<CustomConcurrentHashMap.ReferenceEntry<K, V>> currentTable;
    CustomConcurrentHashMap<K, V>.WriteThroughEntry lastReturned;
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextEntry;
    CustomConcurrentHashMap<K, V>.WriteThroughEntry nextExternal;
    int nextSegmentIndex = -1 + CustomConcurrentHashMap.this.segments.length;
    int nextTableIndex = -1;

    HashIterator()
    {
      advance();
    }

    final void advance()
    {
      this.nextExternal = null;
      if (nextInChain());
      do
      {
        CustomConcurrentHashMap.Segment localSegment;
        do
        {
          do
          {
            return;
            continue;
            while (nextInTable());
          }
          while (this.nextSegmentIndex < 0);
          CustomConcurrentHashMap.Segment[] arrayOfSegment = CustomConcurrentHashMap.this.segments;
          int i = this.nextSegmentIndex;
          this.nextSegmentIndex = (i - 1);
          localSegment = arrayOfSegment[i];
        }
        while (localSegment.count == 0);
        this.currentTable = localSegment.table;
        this.nextTableIndex = (-1 + this.currentTable.length());
      }
      while (!nextInTable());
    }

    boolean advanceTo(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      Object localObject1 = paramReferenceEntry.getKey();
      Object localObject2 = paramReferenceEntry.getValueReference().get();
      if ((localObject1 != null) && (localObject2 != null) && ((!CustomConcurrentHashMap.this.expires()) || (!CustomConcurrentHashMap.this.isExpired(paramReferenceEntry))))
      {
        this.nextExternal = new CustomConcurrentHashMap.WriteThroughEntry(CustomConcurrentHashMap.this, localObject1, localObject2);
        return true;
      }
      return false;
    }

    public boolean hasNext()
    {
      return this.nextExternal != null;
    }

    CustomConcurrentHashMap<K, V>.WriteThroughEntry nextEntry()
    {
      if (this.nextExternal == null)
        throw new NoSuchElementException();
      this.lastReturned = this.nextExternal;
      advance();
      return this.lastReturned;
    }

    boolean nextInChain()
    {
      if (this.nextEntry != null)
        for (this.nextEntry = this.nextEntry.getNext(); this.nextEntry != null; this.nextEntry = this.nextEntry.getNext())
          if (advanceTo(this.nextEntry))
            return true;
      return false;
    }

    boolean nextInTable()
    {
      while (this.nextTableIndex >= 0)
      {
        AtomicReferenceArray localAtomicReferenceArray = this.currentTable;
        int i = this.nextTableIndex;
        this.nextTableIndex = (i - 1);
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = (CustomConcurrentHashMap.ReferenceEntry)localAtomicReferenceArray.get(i);
        this.nextEntry = localReferenceEntry;
        if ((localReferenceEntry != null) && ((advanceTo(this.nextEntry)) || (nextInChain())))
          return true;
      }
      return false;
    }

    public void remove()
    {
      if (this.lastReturned != null);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkState(bool);
        CustomConcurrentHashMap.this.remove(this.lastReturned.getKey());
        this.lastReturned = null;
        return;
      }
    }
  }

  final class KeyIterator extends CustomConcurrentHashMap<K, V>.HashIterator
    implements Iterator<K>
  {
    KeyIterator()
    {
      super();
    }

    public K next()
    {
      return nextEntry().getKey();
    }
  }

  final class KeySet extends AbstractSet<K>
  {
    KeySet()
    {
    }

    public void clear()
    {
      CustomConcurrentHashMap.this.clear();
    }

    public boolean contains(Object paramObject)
    {
      return CustomConcurrentHashMap.this.containsKey(paramObject);
    }

    public boolean isEmpty()
    {
      return CustomConcurrentHashMap.this.isEmpty();
    }

    public Iterator<K> iterator()
    {
      return new CustomConcurrentHashMap.KeyIterator(CustomConcurrentHashMap.this);
    }

    public boolean remove(Object paramObject)
    {
      return CustomConcurrentHashMap.this.remove(paramObject) != null;
    }

    public int size()
    {
      return CustomConcurrentHashMap.this.size();
    }
  }

  private static enum NullEntry
    implements CustomConcurrentHashMap.ReferenceEntry<Object, Object>
  {
    static
    {
      NullEntry[] arrayOfNullEntry = new NullEntry[1];
      arrayOfNullEntry[0] = INSTANCE;
    }

    public long getExpirationTime()
    {
      return 0L;
    }

    public int getHash()
    {
      return 0;
    }

    public Object getKey()
    {
      return null;
    }

    public CustomConcurrentHashMap.ReferenceEntry<Object, Object> getNext()
    {
      return null;
    }

    public CustomConcurrentHashMap.ReferenceEntry<Object, Object> getNextEvictable()
    {
      return this;
    }

    public CustomConcurrentHashMap.ReferenceEntry<Object, Object> getNextExpirable()
    {
      return this;
    }

    public CustomConcurrentHashMap.ReferenceEntry<Object, Object> getPreviousEvictable()
    {
      return this;
    }

    public CustomConcurrentHashMap.ReferenceEntry<Object, Object> getPreviousExpirable()
    {
      return this;
    }

    public CustomConcurrentHashMap.ValueReference<Object, Object> getValueReference()
    {
      return null;
    }

    public void notifyKeyReclaimed()
    {
    }

    public void notifyValueReclaimed(CustomConcurrentHashMap.ValueReference<Object, Object> paramValueReference)
    {
    }

    public void setExpirationTime(long paramLong)
    {
    }

    public void setNextEvictable(CustomConcurrentHashMap.ReferenceEntry<Object, Object> paramReferenceEntry)
    {
    }

    public void setNextExpirable(CustomConcurrentHashMap.ReferenceEntry<Object, Object> paramReferenceEntry)
    {
    }

    public void setPreviousEvictable(CustomConcurrentHashMap.ReferenceEntry<Object, Object> paramReferenceEntry)
    {
    }

    public void setPreviousExpirable(CustomConcurrentHashMap.ReferenceEntry<Object, Object> paramReferenceEntry)
    {
    }

    public void setValueReference(CustomConcurrentHashMap.ValueReference<Object, Object> paramValueReference)
    {
    }
  }

  private static class QueueHolder
  {
    static final FinalizableReferenceQueue queue = new FinalizableReferenceQueue();
  }

  static abstract interface ReferenceEntry<K, V>
  {
    public abstract long getExpirationTime();

    public abstract int getHash();

    public abstract K getKey();

    public abstract ReferenceEntry<K, V> getNext();

    public abstract ReferenceEntry<K, V> getNextEvictable();

    public abstract ReferenceEntry<K, V> getNextExpirable();

    public abstract ReferenceEntry<K, V> getPreviousEvictable();

    public abstract ReferenceEntry<K, V> getPreviousExpirable();

    public abstract CustomConcurrentHashMap.ValueReference<K, V> getValueReference();

    public abstract void notifyKeyReclaimed();

    public abstract void notifyValueReclaimed(CustomConcurrentHashMap.ValueReference<K, V> paramValueReference);

    public abstract void setExpirationTime(long paramLong);

    public abstract void setNextEvictable(ReferenceEntry<K, V> paramReferenceEntry);

    public abstract void setNextExpirable(ReferenceEntry<K, V> paramReferenceEntry);

    public abstract void setPreviousEvictable(ReferenceEntry<K, V> paramReferenceEntry);

    public abstract void setPreviousExpirable(ReferenceEntry<K, V> paramReferenceEntry);

    public abstract void setValueReference(CustomConcurrentHashMap.ValueReference<K, V> paramValueReference);
  }

  class Segment extends ReentrantLock
  {
    final Queue<CustomConcurrentHashMap.ReferenceEntry<K, V>> cleanupQueue = new ConcurrentLinkedQueue();
    final Runnable cleanupRunnable = new Runnable()
    {
      public void run()
      {
        CustomConcurrentHashMap.Segment.this.runCleanup();
      }
    };
    volatile int count;

    @GuardedBy("Segment.this")
    final Queue<CustomConcurrentHashMap.ReferenceEntry<K, V>> evictionQueue;

    @GuardedBy("Segment.this")
    final Queue<CustomConcurrentHashMap.ReferenceEntry<K, V>> expirationQueue;
    final int maxSegmentSize;
    int modCount;
    final AtomicInteger readCount = new AtomicInteger();
    final Queue<CustomConcurrentHashMap.ReferenceEntry<K, V>> recencyQueue;
    volatile AtomicReferenceArray<CustomConcurrentHashMap.ReferenceEntry<K, V>> table;
    int threshold;

    Segment(int paramInt1, int arg3)
    {
      int i;
      this.maxSegmentSize = i;
      initTable(newEntryArray(paramInt1));
      Object localObject1;
      Object localObject2;
      if ((CustomConcurrentHashMap.this.evictsBySize()) || (CustomConcurrentHashMap.this.expiresAfterAccess()))
      {
        localObject1 = new ConcurrentLinkedQueue();
        this.recencyQueue = ((Queue)localObject1);
        if (!CustomConcurrentHashMap.this.evictsBySize())
          break label141;
        localObject2 = new EvictionQueue();
        label103: this.evictionQueue = ((Queue)localObject2);
        if (!CustomConcurrentHashMap.this.expires())
          break label149;
      }
      label141: label149: for (Object localObject3 = new ExpirationQueue(); ; localObject3 = CustomConcurrentHashMap.discardingQueue())
      {
        this.expirationQueue = ((Queue)localObject3);
        return;
        localObject1 = CustomConcurrentHashMap.discardingQueue();
        break;
        localObject2 = CustomConcurrentHashMap.discardingQueue();
        break label103;
      }
    }

    void clear()
    {
      if (this.count != 0)
        lock();
      try
      {
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        for (int i = 0; i < localAtomicReferenceArray.length(); i++)
          localAtomicReferenceArray.set(i, null);
        this.evictionQueue.clear();
        this.expirationQueue.clear();
        this.readCount.set(0);
        this.modCount = (1 + this.modCount);
        this.count = 0;
        return;
      }
      finally
      {
        unlock();
      }
    }

    boolean clearValue(K paramK, int paramInt, CustomConcurrentHashMap.ValueReference<K, V> paramValueReference)
    {
      lock();
      try
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry;
        for (Object localObject2 = getFirst(paramInt); localObject2 != null; localObject2 = localReferenceEntry)
        {
          Object localObject3 = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getKey();
          if ((((CustomConcurrentHashMap.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (CustomConcurrentHashMap.this.keyEquivalence.equivalent(paramK, localObject3)))
          {
            if (((CustomConcurrentHashMap.ReferenceEntry)localObject2).getValueReference() == paramValueReference)
            {
              enqueueCleanup((CustomConcurrentHashMap.ReferenceEntry)localObject2);
              return true;
            }
            return false;
          }
          localReferenceEntry = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getNext();
        }
        return false;
      }
      finally
      {
        unlock();
      }
    }

    boolean containsKey(Object paramObject, int paramInt)
    {
      int i = this.count;
      boolean bool = false;
      if (i != 0)
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = getFirst(paramInt);
        bool = false;
        if (localReferenceEntry != null)
        {
          if (localReferenceEntry.getHash() != paramInt);
          Object localObject1;
          do
          {
            localReferenceEntry = localReferenceEntry.getNext();
            break;
            localObject1 = localReferenceEntry.getKey();
          }
          while ((localObject1 == null) || (!CustomConcurrentHashMap.this.keyEquivalence.equivalent(paramObject, localObject1)));
          Object localObject2 = getLiveValue(localReferenceEntry);
          bool = false;
          if (localObject2 != null)
            bool = true;
        }
      }
      return bool;
    }

    boolean containsValue(Object paramObject)
    {
      if (this.count != 0)
      {
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = localAtomicReferenceArray.length();
        for (int j = 0; j < i; j++)
        {
          CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = (CustomConcurrentHashMap.ReferenceEntry)localAtomicReferenceArray.get(j);
          if (localReferenceEntry != null)
          {
            Object localObject = getLiveValue(localReferenceEntry);
            if (localObject == null);
            while (!CustomConcurrentHashMap.this.valueEquivalence.equivalent(paramObject, localObject))
            {
              localReferenceEntry = localReferenceEntry.getNext();
              break;
            }
            return true;
          }
        }
      }
      return false;
    }

    @GuardedBy("Segment.this")
    void drainRecencyQueue()
    {
      while (true)
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = (CustomConcurrentHashMap.ReferenceEntry)this.recencyQueue.poll();
        if (localReferenceEntry == null)
          break;
        if (this.evictionQueue.contains(localReferenceEntry))
          this.evictionQueue.add(localReferenceEntry);
        if ((CustomConcurrentHashMap.this.expiresAfterAccess()) && (this.expirationQueue.contains(localReferenceEntry)))
          this.expirationQueue.add(localReferenceEntry);
      }
    }

    @GuardedBy("Segment.this")
    void enqueueCleanup(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      paramReferenceEntry.setValueReference(CustomConcurrentHashMap.unset());
      this.cleanupQueue.offer(paramReferenceEntry);
      this.evictionQueue.remove(paramReferenceEntry);
      this.expirationQueue.remove(paramReferenceEntry);
    }

    @GuardedBy("Segment.this")
    boolean evictEntries()
    {
      if ((CustomConcurrentHashMap.this.evictsBySize()) && (this.count >= this.maxSegmentSize))
      {
        drainRecencyQueue();
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = (CustomConcurrentHashMap.ReferenceEntry)this.evictionQueue.remove();
        if (!unsetEntry(localReferenceEntry, localReferenceEntry.getHash()))
          throw new AssertionError();
        return true;
      }
      return false;
    }

    @GuardedBy("Segment.this")
    void expand()
    {
      AtomicReferenceArray localAtomicReferenceArray1 = this.table;
      int i = localAtomicReferenceArray1.length();
      if (i >= 1073741824)
        return;
      AtomicReferenceArray localAtomicReferenceArray2 = newEntryArray(i << 1);
      this.threshold = (3 * localAtomicReferenceArray2.length() / 4);
      int j = -1 + localAtomicReferenceArray2.length();
      int k = 0;
      while (k < i)
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry1 = (CustomConcurrentHashMap.ReferenceEntry)localAtomicReferenceArray1.get(k);
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry2;
        int m;
        if (localReferenceEntry1 != null)
        {
          localReferenceEntry2 = localReferenceEntry1.getNext();
          m = j & localReferenceEntry1.getHash();
          if (localReferenceEntry2 == null)
            localAtomicReferenceArray2.set(m, localReferenceEntry1);
        }
        else
        {
          k++;
          continue;
        }
        Object localObject = localReferenceEntry1;
        int n = m;
        for (CustomConcurrentHashMap.ReferenceEntry localReferenceEntry3 = localReferenceEntry2; localReferenceEntry3 != null; localReferenceEntry3 = localReferenceEntry3.getNext())
        {
          int i2 = j & localReferenceEntry3.getHash();
          if (i2 != n)
          {
            n = i2;
            localObject = localReferenceEntry3;
          }
        }
        localAtomicReferenceArray2.set(n, localObject);
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry4 = localReferenceEntry1;
        label178: if (localReferenceEntry4 != localObject)
        {
          if (!CustomConcurrentHashMap.this.isCollected(localReferenceEntry4))
            break label223;
          unsetLiveEntry(localReferenceEntry4, localReferenceEntry4.getHash());
        }
        while (true)
        {
          localReferenceEntry4 = localReferenceEntry4.getNext();
          break label178;
          break;
          label223: int i1 = j & localReferenceEntry4.getHash();
          CustomConcurrentHashMap.ReferenceEntry localReferenceEntry5 = (CustomConcurrentHashMap.ReferenceEntry)localAtomicReferenceArray2.get(i1);
          localAtomicReferenceArray2.set(i1, CustomConcurrentHashMap.this.copyEntry(localReferenceEntry4, localReferenceEntry5));
        }
      }
      this.table = localAtomicReferenceArray2;
    }

    @GuardedBy("Segment.this")
    void expireEntries()
    {
      drainRecencyQueue();
      if (this.expirationQueue.isEmpty())
        return;
      long l = CustomConcurrentHashMap.this.ticker.read();
      CustomConcurrentHashMap.ReferenceEntry localReferenceEntry;
      do
      {
        localReferenceEntry = (CustomConcurrentHashMap.ReferenceEntry)this.expirationQueue.peek();
        if ((localReferenceEntry == null) || (!CustomConcurrentHashMap.this.isExpired(localReferenceEntry, l)))
          break;
      }
      while (unsetEntry(localReferenceEntry, localReferenceEntry.getHash()));
      throw new AssertionError();
    }

    V get(Object paramObject, int paramInt)
    {
      try
      {
        if (this.count != 0)
        {
          CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = getFirst(paramInt);
          if (localReferenceEntry != null)
          {
            if (localReferenceEntry.getHash() != paramInt);
            Object localObject2;
            do
            {
              localReferenceEntry = localReferenceEntry.getNext();
              break;
              localObject2 = localReferenceEntry.getKey();
            }
            while ((localObject2 == null) || (!CustomConcurrentHashMap.this.keyEquivalence.equivalent(paramObject, localObject2)));
            Object localObject3 = getLiveValue(localReferenceEntry);
            if (localObject3 != null)
              recordRead(localReferenceEntry);
            return localObject3;
          }
        }
        return null;
      }
      finally
      {
        postReadCleanup();
      }
    }

    @VisibleForTesting
    CustomConcurrentHashMap.ReferenceEntry<K, V> getEntry(Object paramObject, int paramInt)
    {
      CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = getFirst(paramInt);
      if (localReferenceEntry != null)
      {
        if (localReferenceEntry.getHash() != paramInt);
        Object localObject;
        do
        {
          localReferenceEntry = localReferenceEntry.getNext();
          break;
          localObject = localReferenceEntry.getKey();
        }
        while ((localObject == null) || (!CustomConcurrentHashMap.this.keyEquivalence.equivalent(paramObject, localObject)));
        return localReferenceEntry;
      }
      return null;
    }

    CustomConcurrentHashMap.ReferenceEntry<K, V> getFirst(int paramInt)
    {
      AtomicReferenceArray localAtomicReferenceArray = this.table;
      return (CustomConcurrentHashMap.ReferenceEntry)localAtomicReferenceArray.get(paramInt & -1 + localAtomicReferenceArray.length());
    }

    V getLiveValue(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      Object localObject;
      if (paramReferenceEntry.getKey() == null)
        localObject = null;
      do
      {
        return localObject;
        localObject = paramReferenceEntry.getValueReference().get();
        if (localObject == null)
          return null;
      }
      while ((!CustomConcurrentHashMap.this.expires()) || (!CustomConcurrentHashMap.this.isExpired(paramReferenceEntry)));
      tryExpireEntries();
      return null;
    }

    void initTable(AtomicReferenceArray<CustomConcurrentHashMap.ReferenceEntry<K, V>> paramAtomicReferenceArray)
    {
      this.threshold = (3 * paramAtomicReferenceArray.length() / 4);
      if (this.threshold == this.maxSegmentSize)
        this.threshold = (1 + this.threshold);
      this.table = paramAtomicReferenceArray;
    }

    AtomicReferenceArray<CustomConcurrentHashMap.ReferenceEntry<K, V>> newEntryArray(int paramInt)
    {
      return new AtomicReferenceArray(paramInt);
    }

    void postReadCleanup()
    {
      if ((0x3F & this.readCount.incrementAndGet()) == 0)
      {
        if (!CustomConcurrentHashMap.this.isInlineCleanup())
          break label28;
        runCleanup();
      }
      label28: 
      while (isHeldByCurrentThread())
        return;
      CustomConcurrentHashMap.this.cleanupExecutor.execute(this.cleanupRunnable);
    }

    void postWriteCleanup()
    {
      if (CustomConcurrentHashMap.this.isInlineCleanup())
        if (isHeldByCurrentThread())
          runLockedCleanup();
      while (isHeldByCurrentThread())
      {
        return;
        runUnlockedCleanup();
        return;
      }
      CustomConcurrentHashMap.this.cleanupExecutor.execute(this.cleanupRunnable);
    }

    @GuardedBy("Segment.this")
    void preWriteCleanup()
    {
      if (CustomConcurrentHashMap.this.isInlineCleanup())
      {
        runLockedCleanup();
        return;
      }
      expireEntries();
    }

    @GuardedBy("Segment.this")
    void processPendingCleanup()
    {
      AtomicReferenceArray localAtomicReferenceArray = this.table;
      int i = 0;
      label113: 
      while (i < 16)
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry1 = (CustomConcurrentHashMap.ReferenceEntry)this.cleanupQueue.poll();
        if (localReferenceEntry1 == null)
          break;
        int j = localReferenceEntry1.getHash() & -1 + localAtomicReferenceArray.length();
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry2 = (CustomConcurrentHashMap.ReferenceEntry)localAtomicReferenceArray.get(j);
        for (CustomConcurrentHashMap.ReferenceEntry localReferenceEntry3 = localReferenceEntry2; ; localReferenceEntry3 = localReferenceEntry3.getNext())
        {
          if (localReferenceEntry3 == null)
            break label113;
          if (localReferenceEntry3 == localReferenceEntry1)
          {
            if (!CustomConcurrentHashMap.this.isUnset(localReferenceEntry3))
              break;
            localAtomicReferenceArray.set(j, removeFromChain(localReferenceEntry2, localReferenceEntry3));
            i++;
            break;
          }
        }
      }
    }

    V put(K paramK, int paramInt, V paramV, boolean paramBoolean)
    {
      Preconditions.checkNotNull(paramV);
      lock();
      try
      {
        preWriteCleanup();
        int i = 1 + this.count;
        if (i > this.threshold)
        {
          expand();
          i = 1 + this.count;
        }
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int j = paramInt & -1 + localAtomicReferenceArray.length();
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry1 = (CustomConcurrentHashMap.ReferenceEntry)localAtomicReferenceArray.get(j);
        for (CustomConcurrentHashMap.ReferenceEntry localReferenceEntry2 = localReferenceEntry1; localReferenceEntry2 != null; localReferenceEntry2 = localReferenceEntry2.getNext())
        {
          Object localObject2 = localReferenceEntry2.getKey();
          if ((localReferenceEntry2.getHash() == paramInt) && (localObject2 != null) && (CustomConcurrentHashMap.this.keyEquivalence.equivalent(paramK, localObject2)))
          {
            CustomConcurrentHashMap.ValueReference localValueReference = localReferenceEntry2.getValueReference();
            Object localObject3 = localValueReference.get();
            if (localObject3 == null)
            {
              this.modCount = (1 + this.modCount);
              localValueReference.notifyValueReclaimed();
              evictEntries();
              this.count = (1 + this.count);
            }
            while (!paramBoolean)
            {
              setValue(localReferenceEntry2, paramV);
              return localObject3;
            }
            recordLockedRead(localReferenceEntry2);
            return localObject3;
          }
        }
        if (evictEntries())
        {
          i = 1 + this.count;
          localReferenceEntry1 = (CustomConcurrentHashMap.ReferenceEntry)localAtomicReferenceArray.get(j);
        }
        this.modCount = (1 + this.modCount);
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry3 = CustomConcurrentHashMap.this.newEntry(paramK, paramInt, localReferenceEntry1);
        setValue(localReferenceEntry3, paramV);
        localAtomicReferenceArray.set(j, localReferenceEntry3);
        this.count = i;
        return null;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    void recordExpirationTime(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
    {
      paramReferenceEntry.setExpirationTime(paramLong + CustomConcurrentHashMap.this.ticker.read());
    }

    @GuardedBy("Segment.this")
    void recordLockedRead(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.evictionQueue.add(paramReferenceEntry);
      if (CustomConcurrentHashMap.this.expiresAfterAccess())
      {
        recordExpirationTime(paramReferenceEntry, CustomConcurrentHashMap.this.expireAfterAccessNanos);
        this.expirationQueue.add(paramReferenceEntry);
      }
    }

    void recordRead(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      if (CustomConcurrentHashMap.this.expiresAfterAccess())
        recordExpirationTime(paramReferenceEntry, CustomConcurrentHashMap.this.expireAfterAccessNanos);
      this.recencyQueue.add(paramReferenceEntry);
    }

    @GuardedBy("Segment.this")
    void recordWrite(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      drainRecencyQueue();
      this.evictionQueue.add(paramReferenceEntry);
      if (CustomConcurrentHashMap.this.expires())
        if (!CustomConcurrentHashMap.this.expiresAfterAccess())
          break label61;
      label61: for (long l = CustomConcurrentHashMap.this.expireAfterAccessNanos; ; l = CustomConcurrentHashMap.this.expireAfterWriteNanos)
      {
        recordExpirationTime(paramReferenceEntry, l);
        this.expirationQueue.add(paramReferenceEntry);
        return;
      }
    }

    V remove(Object paramObject, int paramInt)
    {
      lock();
      while (true)
      {
        try
        {
          preWriteCleanup();
          (-1 + this.count);
          AtomicReferenceArray localAtomicReferenceArray = this.table;
          int i = paramInt & -1 + localAtomicReferenceArray.length();
          CustomConcurrentHashMap.ReferenceEntry localReferenceEntry1 = (CustomConcurrentHashMap.ReferenceEntry)localAtomicReferenceArray.get(i);
          localObject2 = localReferenceEntry1;
          if (localObject2 == null)
            break;
          Object localObject3 = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getKey();
          if ((((CustomConcurrentHashMap.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (CustomConcurrentHashMap.this.keyEquivalence.equivalent(paramObject, localObject3)))
          {
            Object localObject4 = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getValueReference().get();
            if (localObject4 == null)
            {
              unsetLiveEntry((CustomConcurrentHashMap.ReferenceEntry)localObject2, paramInt);
              return localObject4;
            }
            this.modCount = (1 + this.modCount);
            CustomConcurrentHashMap.ReferenceEntry localReferenceEntry3 = removeFromChain(localReferenceEntry1, (CustomConcurrentHashMap.ReferenceEntry)localObject2);
            int j = -1 + this.count;
            localAtomicReferenceArray.set(i, localReferenceEntry3);
            this.count = j;
            continue;
          }
        }
        finally
        {
          unlock();
          postWriteCleanup();
        }
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry2 = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getNext();
        Object localObject2 = localReferenceEntry2;
      }
      unlock();
      postWriteCleanup();
      return null;
    }

    boolean remove(Object paramObject1, int paramInt, Object paramObject2)
    {
      Preconditions.checkNotNull(paramObject2);
      lock();
      try
      {
        preWriteCleanup();
        (-1 + this.count);
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        int i = paramInt & -1 + localAtomicReferenceArray.length();
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry1 = (CustomConcurrentHashMap.ReferenceEntry)localAtomicReferenceArray.get(i);
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry2;
        for (Object localObject2 = localReferenceEntry1; localObject2 != null; localObject2 = localReferenceEntry2)
        {
          Object localObject3 = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getKey();
          if ((((CustomConcurrentHashMap.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (CustomConcurrentHashMap.this.keyEquivalence.equivalent(paramObject1, localObject3)))
          {
            Object localObject4 = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getValueReference().get();
            if (localObject4 == null)
              unsetLiveEntry((CustomConcurrentHashMap.ReferenceEntry)localObject2, paramInt);
            while (!CustomConcurrentHashMap.this.valueEquivalence.equivalent(paramObject2, localObject4))
              return false;
            this.modCount = (1 + this.modCount);
            CustomConcurrentHashMap.ReferenceEntry localReferenceEntry3 = removeFromChain(localReferenceEntry1, (CustomConcurrentHashMap.ReferenceEntry)localObject2);
            int j = -1 + this.count;
            localAtomicReferenceArray.set(i, localReferenceEntry3);
            this.count = j;
            return true;
          }
          localReferenceEntry2 = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getNext();
        }
        return false;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> removeFromChain(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry1, CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry2)
    {
      this.evictionQueue.remove(paramReferenceEntry2);
      this.expirationQueue.remove(paramReferenceEntry2);
      CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = paramReferenceEntry2.getNext();
      Object localObject = paramReferenceEntry1;
      if (localObject != paramReferenceEntry2)
      {
        if (CustomConcurrentHashMap.this.isCollected((CustomConcurrentHashMap.ReferenceEntry)localObject))
          unsetLiveEntry((CustomConcurrentHashMap.ReferenceEntry)localObject, ((CustomConcurrentHashMap.ReferenceEntry)localObject).getHash());
        while (true)
        {
          localObject = ((CustomConcurrentHashMap.ReferenceEntry)localObject).getNext();
          break;
          localReferenceEntry = CustomConcurrentHashMap.this.copyEntry((CustomConcurrentHashMap.ReferenceEntry)localObject, localReferenceEntry);
        }
      }
      return localReferenceEntry;
    }

    V replace(K paramK, int paramInt, V paramV)
    {
      Preconditions.checkNotNull(paramV);
      lock();
      try
      {
        preWriteCleanup();
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry;
        for (Object localObject2 = getFirst(paramInt); localObject2 != null; localObject2 = localReferenceEntry)
        {
          Object localObject3 = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getKey();
          if ((((CustomConcurrentHashMap.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (CustomConcurrentHashMap.this.keyEquivalence.equivalent(paramK, localObject3)))
          {
            Object localObject4 = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getValueReference().get();
            if (localObject4 == null)
            {
              unsetLiveEntry((CustomConcurrentHashMap.ReferenceEntry)localObject2, paramInt);
              return null;
            }
            setValue((CustomConcurrentHashMap.ReferenceEntry)localObject2, paramV);
            return localObject4;
          }
          localReferenceEntry = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getNext();
        }
        return null;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    boolean replace(K paramK, int paramInt, V paramV1, V paramV2)
    {
      Preconditions.checkNotNull(paramV1);
      Preconditions.checkNotNull(paramV2);
      lock();
      try
      {
        preWriteCleanup();
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry;
        for (Object localObject2 = getFirst(paramInt); localObject2 != null; localObject2 = localReferenceEntry)
        {
          Object localObject3 = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getKey();
          if ((((CustomConcurrentHashMap.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (CustomConcurrentHashMap.this.keyEquivalence.equivalent(paramK, localObject3)))
          {
            Object localObject4 = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getValueReference().get();
            if (localObject4 == null)
            {
              unsetLiveEntry((CustomConcurrentHashMap.ReferenceEntry)localObject2, paramInt);
              return false;
            }
            if (CustomConcurrentHashMap.this.valueEquivalence.equivalent(paramV1, localObject4))
            {
              setValue((CustomConcurrentHashMap.ReferenceEntry)localObject2, paramV2);
              return true;
            }
            recordLockedRead((CustomConcurrentHashMap.ReferenceEntry)localObject2);
            return false;
          }
          localReferenceEntry = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getNext();
        }
        return false;
      }
      finally
      {
        unlock();
        postWriteCleanup();
      }
    }

    void runCleanup()
    {
      runLockedCleanup();
      runUnlockedCleanup();
    }

    void runLockedCleanup()
    {
      lock();
      try
      {
        expireEntries();
        processPendingCleanup();
        this.readCount.set(0);
        return;
      }
      finally
      {
        unlock();
      }
    }

    void runUnlockedCleanup()
    {
      CustomConcurrentHashMap.this.processPendingNotifications();
    }

    @GuardedBy("Segment.this")
    void setValue(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry, V paramV)
    {
      recordWrite(paramReferenceEntry);
      paramReferenceEntry.setValueReference(CustomConcurrentHashMap.this.newValueReference(paramReferenceEntry, paramV));
    }

    void tryExpireEntries()
    {
      if (tryLock());
      try
      {
        expireEntries();
        return;
      }
      finally
      {
        unlock();
      }
    }

    @GuardedBy("Segment.this")
    boolean unsetEntry(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry, int paramInt)
    {
      for (CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = getFirst(paramInt); localReferenceEntry != null; localReferenceEntry = localReferenceEntry.getNext())
        if (localReferenceEntry == paramReferenceEntry)
          return unsetLiveEntry(paramReferenceEntry, paramInt);
      return false;
    }

    boolean unsetKey(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry, int paramInt)
    {
      lock();
      try
      {
        int i = -1 + this.count;
        AtomicReferenceArray localAtomicReferenceArray = this.table;
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry;
        for (Object localObject2 = (CustomConcurrentHashMap.ReferenceEntry)localAtomicReferenceArray.get(paramInt & -1 + localAtomicReferenceArray.length()); localObject2 != null; localObject2 = localReferenceEntry)
        {
          if (localObject2 == paramReferenceEntry)
          {
            this.modCount = (1 + this.modCount);
            CustomConcurrentHashMap.this.enqueueNotification(((CustomConcurrentHashMap.ReferenceEntry)localObject2).getKey(), paramInt, ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getValueReference());
            enqueueCleanup((CustomConcurrentHashMap.ReferenceEntry)localObject2);
            this.count = i;
            return true;
          }
          localReferenceEntry = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getNext();
        }
        return false;
      }
      finally
      {
        unlock();
      }
    }

    @GuardedBy("Segment.this")
    boolean unsetLiveEntry(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry, int paramInt)
    {
      if (CustomConcurrentHashMap.this.isUnset(paramReferenceEntry));
      int i;
      CustomConcurrentHashMap.ValueReference localValueReference;
      do
      {
        return false;
        i = -1 + this.count;
        this.modCount = (1 + this.modCount);
        localValueReference = paramReferenceEntry.getValueReference();
      }
      while (localValueReference.isComputingReference());
      Object localObject = paramReferenceEntry.getKey();
      CustomConcurrentHashMap.this.enqueueNotification(localObject, paramInt, localValueReference);
      enqueueCleanup(paramReferenceEntry);
      this.count = i;
      return true;
    }

    boolean unsetValue(K paramK, int paramInt, CustomConcurrentHashMap.ValueReference<K, V> paramValueReference)
    {
      lock();
      try
      {
        int i = -1 + this.count;
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry;
        for (Object localObject2 = getFirst(paramInt); localObject2 != null; localObject2 = localReferenceEntry)
        {
          Object localObject3 = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getKey();
          if ((((CustomConcurrentHashMap.ReferenceEntry)localObject2).getHash() == paramInt) && (localObject3 != null) && (CustomConcurrentHashMap.this.keyEquivalence.equivalent(paramK, localObject3)))
          {
            if (((CustomConcurrentHashMap.ReferenceEntry)localObject2).getValueReference() == paramValueReference)
            {
              this.modCount = (1 + this.modCount);
              CustomConcurrentHashMap.this.enqueueNotification(paramK, paramInt, paramValueReference);
              enqueueCleanup((CustomConcurrentHashMap.ReferenceEntry)localObject2);
              this.count = i;
              return true;
            }
            return false;
          }
          localReferenceEntry = ((CustomConcurrentHashMap.ReferenceEntry)localObject2).getNext();
        }
        return false;
      }
      finally
      {
        unlock();
      }
    }

    @VisibleForTesting
    class EvictionQueue extends AbstractQueue<CustomConcurrentHashMap.ReferenceEntry<K, V>>
    {

      @VisibleForTesting
      final CustomConcurrentHashMap.ReferenceEntry<K, V> head = new CustomConcurrentHashMap.ReferenceEntry()
      {
        CustomConcurrentHashMap.ReferenceEntry<K, V> nextEvictable = this;
        CustomConcurrentHashMap.ReferenceEntry<K, V> previousEvictable = this;

        public long getExpirationTime()
        {
          throw new UnsupportedOperationException();
        }

        public int getHash()
        {
          throw new UnsupportedOperationException();
        }

        public K getKey()
        {
          throw new UnsupportedOperationException();
        }

        public CustomConcurrentHashMap.ReferenceEntry<K, V> getNext()
        {
          throw new UnsupportedOperationException();
        }

        public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextEvictable()
        {
          return this.nextEvictable;
        }

        public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextExpirable()
        {
          throw new UnsupportedOperationException();
        }

        public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousEvictable()
        {
          return this.previousEvictable;
        }

        public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousExpirable()
        {
          throw new UnsupportedOperationException();
        }

        public CustomConcurrentHashMap.ValueReference<K, V> getValueReference()
        {
          throw new UnsupportedOperationException();
        }

        public void notifyKeyReclaimed()
        {
        }

        public void notifyValueReclaimed(CustomConcurrentHashMap.ValueReference<K, V> paramAnonymousValueReference)
        {
          throw new UnsupportedOperationException();
        }

        public void setExpirationTime(long paramAnonymousLong)
        {
          throw new UnsupportedOperationException();
        }

        public void setNextEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
        {
          this.nextEvictable = paramAnonymousReferenceEntry;
        }

        public void setNextExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
        {
          throw new UnsupportedOperationException();
        }

        public void setPreviousEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
        {
          this.previousEvictable = paramAnonymousReferenceEntry;
        }

        public void setPreviousExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
        {
          throw new UnsupportedOperationException();
        }

        public void setValueReference(CustomConcurrentHashMap.ValueReference<K, V> paramAnonymousValueReference)
        {
          throw new UnsupportedOperationException();
        }
      };

      EvictionQueue()
      {
      }

      public void clear()
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry;
        for (Object localObject = this.head.getNextEvictable(); localObject != this.head; localObject = localReferenceEntry)
        {
          localReferenceEntry = ((CustomConcurrentHashMap.ReferenceEntry)localObject).getNextEvictable();
          CustomConcurrentHashMap.nullifyEvictable((CustomConcurrentHashMap.ReferenceEntry)localObject);
        }
        this.head.setNextEvictable(this.head);
        this.head.setPreviousEvictable(this.head);
      }

      public boolean contains(Object paramObject)
      {
        return ((CustomConcurrentHashMap.ReferenceEntry)paramObject).getNextEvictable() != CustomConcurrentHashMap.NullEntry.INSTANCE;
      }

      public boolean isEmpty()
      {
        return this.head.getNextEvictable() == this.head;
      }

      public Iterator<CustomConcurrentHashMap.ReferenceEntry<K, V>> iterator()
      {
        return new AbstractLinkedIterator(peek())
        {
          protected CustomConcurrentHashMap.ReferenceEntry<K, V> computeNext(CustomConcurrentHashMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
          {
            CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = paramAnonymousReferenceEntry.getNextEvictable();
            if (localReferenceEntry == CustomConcurrentHashMap.Segment.EvictionQueue.this.head)
              localReferenceEntry = null;
            return localReferenceEntry;
          }
        };
      }

      public boolean offer(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
      {
        CustomConcurrentHashMap.connectEvictables(paramReferenceEntry.getPreviousEvictable(), paramReferenceEntry.getNextEvictable());
        CustomConcurrentHashMap.connectEvictables(this.head.getPreviousEvictable(), paramReferenceEntry);
        CustomConcurrentHashMap.connectEvictables(paramReferenceEntry, this.head);
        return true;
      }

      public CustomConcurrentHashMap.ReferenceEntry<K, V> peek()
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = this.head.getNextEvictable();
        if (localReferenceEntry == this.head)
          localReferenceEntry = null;
        return localReferenceEntry;
      }

      public CustomConcurrentHashMap.ReferenceEntry<K, V> poll()
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = this.head.getNextEvictable();
        if (localReferenceEntry == this.head)
          return null;
        remove(localReferenceEntry);
        return localReferenceEntry;
      }

      public boolean remove(Object paramObject)
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry1 = (CustomConcurrentHashMap.ReferenceEntry)paramObject;
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry2 = localReferenceEntry1.getPreviousEvictable();
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry3 = localReferenceEntry1.getNextEvictable();
        CustomConcurrentHashMap.connectEvictables(localReferenceEntry2, localReferenceEntry3);
        CustomConcurrentHashMap.nullifyEvictable(localReferenceEntry1);
        return localReferenceEntry3 != CustomConcurrentHashMap.NullEntry.INSTANCE;
      }

      public int size()
      {
        int i = 0;
        for (CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = this.head.getNextEvictable(); localReferenceEntry != this.head; localReferenceEntry = localReferenceEntry.getNextEvictable())
          i++;
        return i;
      }
    }

    @VisibleForTesting
    class ExpirationQueue extends AbstractQueue<CustomConcurrentHashMap.ReferenceEntry<K, V>>
    {

      @VisibleForTesting
      final CustomConcurrentHashMap.ReferenceEntry<K, V> head = new CustomConcurrentHashMap.ReferenceEntry()
      {
        CustomConcurrentHashMap.ReferenceEntry<K, V> nextExpirable = this;
        CustomConcurrentHashMap.ReferenceEntry<K, V> previousExpirable = this;

        public long getExpirationTime()
        {
          return 9223372036854775807L;
        }

        public int getHash()
        {
          throw new UnsupportedOperationException();
        }

        public K getKey()
        {
          throw new UnsupportedOperationException();
        }

        public CustomConcurrentHashMap.ReferenceEntry<K, V> getNext()
        {
          throw new UnsupportedOperationException();
        }

        public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextEvictable()
        {
          throw new UnsupportedOperationException();
        }

        public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextExpirable()
        {
          return this.nextExpirable;
        }

        public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousEvictable()
        {
          throw new UnsupportedOperationException();
        }

        public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousExpirable()
        {
          return this.previousExpirable;
        }

        public CustomConcurrentHashMap.ValueReference<K, V> getValueReference()
        {
          throw new UnsupportedOperationException();
        }

        public void notifyKeyReclaimed()
        {
        }

        public void notifyValueReclaimed(CustomConcurrentHashMap.ValueReference<K, V> paramAnonymousValueReference)
        {
          throw new UnsupportedOperationException();
        }

        public void setExpirationTime(long paramAnonymousLong)
        {
        }

        public void setNextEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
        {
          throw new UnsupportedOperationException();
        }

        public void setNextExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
        {
          this.nextExpirable = paramAnonymousReferenceEntry;
        }

        public void setPreviousEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
        {
          throw new UnsupportedOperationException();
        }

        public void setPreviousExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
        {
          this.previousExpirable = paramAnonymousReferenceEntry;
        }

        public void setValueReference(CustomConcurrentHashMap.ValueReference<K, V> paramAnonymousValueReference)
        {
          throw new UnsupportedOperationException();
        }
      };

      ExpirationQueue()
      {
      }

      public void clear()
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry;
        for (Object localObject = this.head.getNextExpirable(); localObject != this.head; localObject = localReferenceEntry)
        {
          localReferenceEntry = ((CustomConcurrentHashMap.ReferenceEntry)localObject).getNextExpirable();
          CustomConcurrentHashMap.nullifyExpirable((CustomConcurrentHashMap.ReferenceEntry)localObject);
        }
        this.head.setNextExpirable(this.head);
        this.head.setPreviousExpirable(this.head);
      }

      public boolean contains(Object paramObject)
      {
        return ((CustomConcurrentHashMap.ReferenceEntry)paramObject).getNextExpirable() != CustomConcurrentHashMap.NullEntry.INSTANCE;
      }

      public boolean isEmpty()
      {
        return this.head.getNextExpirable() == this.head;
      }

      public Iterator<CustomConcurrentHashMap.ReferenceEntry<K, V>> iterator()
      {
        return new AbstractLinkedIterator(peek())
        {
          protected CustomConcurrentHashMap.ReferenceEntry<K, V> computeNext(CustomConcurrentHashMap.ReferenceEntry<K, V> paramAnonymousReferenceEntry)
          {
            CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = paramAnonymousReferenceEntry.getNextExpirable();
            if (localReferenceEntry == CustomConcurrentHashMap.Segment.ExpirationQueue.this.head)
              localReferenceEntry = null;
            return localReferenceEntry;
          }
        };
      }

      public boolean offer(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
      {
        CustomConcurrentHashMap.connectExpirables(paramReferenceEntry.getPreviousExpirable(), paramReferenceEntry.getNextExpirable());
        CustomConcurrentHashMap.connectExpirables(this.head.getPreviousExpirable(), paramReferenceEntry);
        CustomConcurrentHashMap.connectExpirables(paramReferenceEntry, this.head);
        return true;
      }

      public CustomConcurrentHashMap.ReferenceEntry<K, V> peek()
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = this.head.getNextExpirable();
        if (localReferenceEntry == this.head)
          localReferenceEntry = null;
        return localReferenceEntry;
      }

      public CustomConcurrentHashMap.ReferenceEntry<K, V> poll()
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = this.head.getNextExpirable();
        if (localReferenceEntry == this.head)
          return null;
        remove(localReferenceEntry);
        return localReferenceEntry;
      }

      public boolean remove(Object paramObject)
      {
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry1 = (CustomConcurrentHashMap.ReferenceEntry)paramObject;
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry2 = localReferenceEntry1.getPreviousExpirable();
        CustomConcurrentHashMap.ReferenceEntry localReferenceEntry3 = localReferenceEntry1.getNextExpirable();
        CustomConcurrentHashMap.connectExpirables(localReferenceEntry2, localReferenceEntry3);
        CustomConcurrentHashMap.nullifyExpirable(localReferenceEntry1);
        return localReferenceEntry3 != CustomConcurrentHashMap.NullEntry.INSTANCE;
      }

      public int size()
      {
        int i = 0;
        for (CustomConcurrentHashMap.ReferenceEntry localReferenceEntry = this.head.getNextExpirable(); localReferenceEntry != this.head; localReferenceEntry = localReferenceEntry.getNextExpirable())
          i++;
        return i;
      }
    }
  }

  private static class SerializationProxy<K, V> extends CustomConcurrentHashMap.AbstractSerializationProxy<K, V>
  {
    private static final long serialVersionUID = 2L;

    SerializationProxy(CustomConcurrentHashMap.Strength paramStrength1, CustomConcurrentHashMap.Strength paramStrength2, Equivalence<Object> paramEquivalence1, Equivalence<Object> paramEquivalence2, long paramLong1, long paramLong2, int paramInt1, int paramInt2, MapEvictionListener<? super K, ? super V> paramMapEvictionListener, ConcurrentMap<K, V> paramConcurrentMap)
    {
      super(paramStrength2, paramEquivalence1, paramEquivalence2, paramLong1, paramLong2, paramInt1, paramInt2, paramMapEvictionListener, paramConcurrentMap);
    }

    private void readObject(ObjectInputStream paramObjectInputStream)
      throws IOException, ClassNotFoundException
    {
      paramObjectInputStream.defaultReadObject();
      this.delegate = readMapMaker(paramObjectInputStream).makeMap();
      readEntries(paramObjectInputStream);
    }

    private Object readResolve()
    {
      return this.delegate;
    }

    private void writeObject(ObjectOutputStream paramObjectOutputStream)
      throws IOException
    {
      paramObjectOutputStream.defaultWriteObject();
      writeMapTo(paramObjectOutputStream);
    }
  }

  private static class SoftEntry<K, V> extends FinalizableSoftReference<K>
    implements CustomConcurrentHashMap.ReferenceEntry<K, V>
  {
    final int hash;
    final CustomConcurrentHashMap<K, V> map;
    final CustomConcurrentHashMap.ReferenceEntry<K, V> next;
    volatile CustomConcurrentHashMap.ValueReference<K, V> valueReference = CustomConcurrentHashMap.unset();

    SoftEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(CustomConcurrentHashMap.QueueHolder.queue);
      this.map = paramCustomConcurrentHashMap;
      this.hash = paramInt;
      this.next = paramReferenceEntry;
    }

    public void finalizeReferent()
    {
      notifyKeyReclaimed();
    }

    public long getExpirationTime()
    {
      throw new UnsupportedOperationException();
    }

    public int getHash()
    {
      return this.hash;
    }

    public K getKey()
    {
      return get();
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNext()
    {
      return this.next;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public CustomConcurrentHashMap.ValueReference<K, V> getValueReference()
    {
      return this.valueReference;
    }

    public void notifyKeyReclaimed()
    {
      this.map.reclaimKey(this);
    }

    public void notifyValueReclaimed(CustomConcurrentHashMap.ValueReference<K, V> paramValueReference)
    {
      this.map.reclaimValue(this, paramValueReference);
    }

    public void setExpirationTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setValueReference(CustomConcurrentHashMap.ValueReference<K, V> paramValueReference)
    {
      CustomConcurrentHashMap.ValueReference localValueReference = this.valueReference;
      this.valueReference = paramValueReference;
      localValueReference.clear();
    }
  }

  private static class SoftEvictableEntry<K, V> extends CustomConcurrentHashMap.SoftEntry<K, V>
    implements CustomConcurrentHashMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextEvictable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> previousEvictable = CustomConcurrentHashMap.nullEntry();

    SoftEvictableEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextEvictable()
    {
      return this.nextEvictable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      return this.previousEvictable;
    }

    public void setNextEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextEvictable = paramReferenceEntry;
    }

    public void setPreviousEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousEvictable = paramReferenceEntry;
    }
  }

  private static class SoftExpirableEntry<K, V> extends CustomConcurrentHashMap.SoftEntry<K, V>
    implements CustomConcurrentHashMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextExpirable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> previousExpirable = CustomConcurrentHashMap.nullEntry();
    volatile long time = 9223372036854775807L;

    SoftExpirableEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public long getExpirationTime()
    {
      return this.time;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextExpirable()
    {
      return this.nextExpirable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      return this.previousExpirable;
    }

    public void setExpirationTime(long paramLong)
    {
      this.time = paramLong;
    }

    public void setNextExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextExpirable = paramReferenceEntry;
    }

    public void setPreviousExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousExpirable = paramReferenceEntry;
    }
  }

  private static class SoftExpirableEvictableEntry<K, V> extends CustomConcurrentHashMap.SoftEntry<K, V>
    implements CustomConcurrentHashMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextEvictable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextExpirable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> previousEvictable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> previousExpirable = CustomConcurrentHashMap.nullEntry();
    volatile long time = 9223372036854775807L;

    SoftExpirableEvictableEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public long getExpirationTime()
    {
      return this.time;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextEvictable()
    {
      return this.nextEvictable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextExpirable()
    {
      return this.nextExpirable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      return this.previousEvictable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      return this.previousExpirable;
    }

    public void setExpirationTime(long paramLong)
    {
      this.time = paramLong;
    }

    public void setNextEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextEvictable = paramReferenceEntry;
    }

    public void setNextExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextExpirable = paramReferenceEntry;
    }

    public void setPreviousEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousEvictable = paramReferenceEntry;
    }

    public void setPreviousExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousExpirable = paramReferenceEntry;
    }
  }

  private static class SoftValueReference<K, V> extends FinalizableSoftReference<V>
    implements CustomConcurrentHashMap.ValueReference<K, V>
  {
    final CustomConcurrentHashMap.ReferenceEntry<K, V> entry;

    SoftValueReference(V paramV, CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(CustomConcurrentHashMap.QueueHolder.queue);
      this.entry = paramReferenceEntry;
    }

    public CustomConcurrentHashMap.ValueReference<K, V> copyFor(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return new SoftValueReference(get(), paramReferenceEntry);
    }

    public void finalizeReferent()
    {
      this.entry.notifyValueReclaimed(this);
    }

    public boolean isComputingReference()
    {
      return false;
    }

    public void notifyValueReclaimed()
    {
      finalizeReferent();
    }

    public V waitForValue()
    {
      return get();
    }
  }

  static abstract enum Strength
  {
    static
    {
      // Byte code:
      //   0: new 15	com/google/common/collect/CustomConcurrentHashMap$Strength$1
      //   3: dup
      //   4: ldc 16
      //   6: iconst_0
      //   7: invokespecial 20	com/google/common/collect/CustomConcurrentHashMap$Strength$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 22	com/google/common/collect/CustomConcurrentHashMap$Strength:STRONG	Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
      //   13: new 24	com/google/common/collect/CustomConcurrentHashMap$Strength$2
      //   16: dup
      //   17: ldc 25
      //   19: iconst_1
      //   20: invokespecial 26	com/google/common/collect/CustomConcurrentHashMap$Strength$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 28	com/google/common/collect/CustomConcurrentHashMap$Strength:SOFT	Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
      //   26: new 30	com/google/common/collect/CustomConcurrentHashMap$Strength$3
      //   29: dup
      //   30: ldc 31
      //   32: iconst_2
      //   33: invokespecial 32	com/google/common/collect/CustomConcurrentHashMap$Strength$3:<init>	(Ljava/lang/String;I)V
      //   36: putstatic 34	com/google/common/collect/CustomConcurrentHashMap$Strength:WEAK	Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
      //   39: iconst_3
      //   40: anewarray 2	com/google/common/collect/CustomConcurrentHashMap$Strength
      //   43: astore_0
      //   44: aload_0
      //   45: iconst_0
      //   46: getstatic 22	com/google/common/collect/CustomConcurrentHashMap$Strength:STRONG	Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
      //   49: aastore
      //   50: aload_0
      //   51: iconst_1
      //   52: getstatic 28	com/google/common/collect/CustomConcurrentHashMap$Strength:SOFT	Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
      //   55: aastore
      //   56: aload_0
      //   57: iconst_2
      //   58: getstatic 34	com/google/common/collect/CustomConcurrentHashMap$Strength:WEAK	Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
      //   61: aastore
      //   62: aload_0
      //   63: putstatic 36	com/google/common/collect/CustomConcurrentHashMap$Strength:$VALUES	[Lcom/google/common/collect/CustomConcurrentHashMap$Strength;
      //   66: return
    }

    abstract Equivalence<Object> defaultEquivalence();

    abstract <K, V> CustomConcurrentHashMap.ValueReference<K, V> referenceValue(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry, V paramV);
  }

  private static class StrongEntry<K, V>
    implements CustomConcurrentHashMap.ReferenceEntry<K, V>
  {
    final int hash;
    final K key;
    final CustomConcurrentHashMap<K, V> map;
    final CustomConcurrentHashMap.ReferenceEntry<K, V> next;
    volatile CustomConcurrentHashMap.ValueReference<K, V> valueReference = CustomConcurrentHashMap.unset();

    StrongEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.map = paramCustomConcurrentHashMap;
      this.key = paramK;
      this.hash = paramInt;
      this.next = paramReferenceEntry;
    }

    public long getExpirationTime()
    {
      throw new UnsupportedOperationException();
    }

    public int getHash()
    {
      return this.hash;
    }

    public K getKey()
    {
      return this.key;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNext()
    {
      return this.next;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public CustomConcurrentHashMap.ValueReference<K, V> getValueReference()
    {
      return this.valueReference;
    }

    public void notifyKeyReclaimed()
    {
    }

    public void notifyValueReclaimed(CustomConcurrentHashMap.ValueReference<K, V> paramValueReference)
    {
      this.map.reclaimValue(this, paramValueReference);
    }

    public void setExpirationTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setValueReference(CustomConcurrentHashMap.ValueReference<K, V> paramValueReference)
    {
      CustomConcurrentHashMap.ValueReference localValueReference = this.valueReference;
      this.valueReference = paramValueReference;
      localValueReference.clear();
    }
  }

  private static class StrongEvictableEntry<K, V> extends CustomConcurrentHashMap.StrongEntry<K, V>
    implements CustomConcurrentHashMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextEvictable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> previousEvictable = CustomConcurrentHashMap.nullEntry();

    StrongEvictableEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextEvictable()
    {
      return this.nextEvictable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      return this.previousEvictable;
    }

    public void setNextEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextEvictable = paramReferenceEntry;
    }

    public void setPreviousEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousEvictable = paramReferenceEntry;
    }
  }

  private static class StrongExpirableEntry<K, V> extends CustomConcurrentHashMap.StrongEntry<K, V>
    implements CustomConcurrentHashMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextExpirable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> previousExpirable = CustomConcurrentHashMap.nullEntry();
    volatile long time = 9223372036854775807L;

    StrongExpirableEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public long getExpirationTime()
    {
      return this.time;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextExpirable()
    {
      return this.nextExpirable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      return this.previousExpirable;
    }

    public void setExpirationTime(long paramLong)
    {
      this.time = paramLong;
    }

    public void setNextExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextExpirable = paramReferenceEntry;
    }

    public void setPreviousExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousExpirable = paramReferenceEntry;
    }
  }

  private static class StrongExpirableEvictableEntry<K, V> extends CustomConcurrentHashMap.StrongEntry<K, V>
    implements CustomConcurrentHashMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextEvictable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextExpirable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> previousEvictable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> previousExpirable = CustomConcurrentHashMap.nullEntry();
    volatile long time = 9223372036854775807L;

    StrongExpirableEvictableEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public long getExpirationTime()
    {
      return this.time;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextEvictable()
    {
      return this.nextEvictable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextExpirable()
    {
      return this.nextExpirable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      return this.previousEvictable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      return this.previousExpirable;
    }

    public void setExpirationTime(long paramLong)
    {
      this.time = paramLong;
    }

    public void setNextEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextEvictable = paramReferenceEntry;
    }

    public void setNextExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextExpirable = paramReferenceEntry;
    }

    public void setPreviousEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousEvictable = paramReferenceEntry;
    }

    public void setPreviousExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousExpirable = paramReferenceEntry;
    }
  }

  private static class StrongValueReference<K, V>
    implements CustomConcurrentHashMap.ValueReference<K, V>
  {
    final V referent;

    StrongValueReference(V paramV)
    {
      this.referent = paramV;
    }

    public void clear()
    {
    }

    public CustomConcurrentHashMap.ValueReference<K, V> copyFor(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return this;
    }

    public V get()
    {
      return this.referent;
    }

    public boolean isComputingReference()
    {
      return false;
    }

    public void notifyValueReclaimed()
    {
    }

    public V waitForValue()
    {
      return get();
    }
  }

  final class ValueIterator extends CustomConcurrentHashMap<K, V>.HashIterator
    implements Iterator<V>
  {
    ValueIterator()
    {
      super();
    }

    public V next()
    {
      return nextEntry().getValue();
    }
  }

  static abstract interface ValueReference<K, V>
  {
    public abstract void clear();

    public abstract ValueReference<K, V> copyFor(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry);

    public abstract V get();

    public abstract boolean isComputingReference();

    public abstract void notifyValueReclaimed();

    public abstract V waitForValue()
      throws InterruptedException;
  }

  final class Values extends AbstractCollection<V>
  {
    Values()
    {
    }

    public void clear()
    {
      CustomConcurrentHashMap.this.clear();
    }

    public boolean contains(Object paramObject)
    {
      return CustomConcurrentHashMap.this.containsValue(paramObject);
    }

    public boolean isEmpty()
    {
      return CustomConcurrentHashMap.this.isEmpty();
    }

    public Iterator<V> iterator()
    {
      return new CustomConcurrentHashMap.ValueIterator(CustomConcurrentHashMap.this);
    }

    public int size()
    {
      return CustomConcurrentHashMap.this.size();
    }
  }

  private static class WeakEntry<K, V> extends FinalizableWeakReference<K>
    implements CustomConcurrentHashMap.ReferenceEntry<K, V>
  {
    final int hash;
    final CustomConcurrentHashMap<K, V> map;
    final CustomConcurrentHashMap.ReferenceEntry<K, V> next;
    volatile CustomConcurrentHashMap.ValueReference<K, V> valueReference = CustomConcurrentHashMap.unset();

    WeakEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(CustomConcurrentHashMap.QueueHolder.queue);
      this.map = paramCustomConcurrentHashMap;
      this.hash = paramInt;
      this.next = paramReferenceEntry;
    }

    public void finalizeReferent()
    {
      notifyKeyReclaimed();
    }

    public long getExpirationTime()
    {
      throw new UnsupportedOperationException();
    }

    public int getHash()
    {
      return this.hash;
    }

    public K getKey()
    {
      return get();
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNext()
    {
      return this.next;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      throw new UnsupportedOperationException();
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      throw new UnsupportedOperationException();
    }

    public CustomConcurrentHashMap.ValueReference<K, V> getValueReference()
    {
      return this.valueReference;
    }

    public void notifyKeyReclaimed()
    {
      this.map.reclaimKey(this);
    }

    public void notifyValueReclaimed(CustomConcurrentHashMap.ValueReference<K, V> paramValueReference)
    {
      this.map.reclaimValue(this, paramValueReference);
    }

    public void setExpirationTime(long paramLong)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setNextExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setPreviousExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      throw new UnsupportedOperationException();
    }

    public void setValueReference(CustomConcurrentHashMap.ValueReference<K, V> paramValueReference)
    {
      CustomConcurrentHashMap.ValueReference localValueReference = this.valueReference;
      this.valueReference = paramValueReference;
      localValueReference.clear();
    }
  }

  private static class WeakEvictableEntry<K, V> extends CustomConcurrentHashMap.WeakEntry<K, V>
    implements CustomConcurrentHashMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextEvictable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> previousEvictable = CustomConcurrentHashMap.nullEntry();

    WeakEvictableEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextEvictable()
    {
      return this.nextEvictable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      return this.previousEvictable;
    }

    public void setNextEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextEvictable = paramReferenceEntry;
    }

    public void setPreviousEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousEvictable = paramReferenceEntry;
    }
  }

  private static class WeakExpirableEntry<K, V> extends CustomConcurrentHashMap.WeakEntry<K, V>
    implements CustomConcurrentHashMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextExpirable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> previousExpirable = CustomConcurrentHashMap.nullEntry();
    volatile long time = 9223372036854775807L;

    WeakExpirableEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public long getExpirationTime()
    {
      return this.time;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextExpirable()
    {
      return this.nextExpirable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      return this.previousExpirable;
    }

    public void setExpirationTime(long paramLong)
    {
      this.time = paramLong;
    }

    public void setNextExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextExpirable = paramReferenceEntry;
    }

    public void setPreviousExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousExpirable = paramReferenceEntry;
    }
  }

  private static class WeakExpirableEvictableEntry<K, V> extends CustomConcurrentHashMap.WeakEntry<K, V>
    implements CustomConcurrentHashMap.ReferenceEntry<K, V>
  {

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextEvictable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> nextExpirable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> previousEvictable = CustomConcurrentHashMap.nullEntry();

    @GuardedBy("Segment.this")
    CustomConcurrentHashMap.ReferenceEntry<K, V> previousExpirable = CustomConcurrentHashMap.nullEntry();
    volatile long time = 9223372036854775807L;

    WeakExpirableEvictableEntry(CustomConcurrentHashMap<K, V> paramCustomConcurrentHashMap, K paramK, int paramInt, @Nullable CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(paramK, paramInt, paramReferenceEntry);
    }

    public long getExpirationTime()
    {
      return this.time;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextEvictable()
    {
      return this.nextEvictable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getNextExpirable()
    {
      return this.nextExpirable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousEvictable()
    {
      return this.previousEvictable;
    }

    public CustomConcurrentHashMap.ReferenceEntry<K, V> getPreviousExpirable()
    {
      return this.previousExpirable;
    }

    public void setExpirationTime(long paramLong)
    {
      this.time = paramLong;
    }

    public void setNextEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextEvictable = paramReferenceEntry;
    }

    public void setNextExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.nextExpirable = paramReferenceEntry;
    }

    public void setPreviousEvictable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousEvictable = paramReferenceEntry;
    }

    public void setPreviousExpirable(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      this.previousExpirable = paramReferenceEntry;
    }
  }

  private static class WeakValueReference<K, V> extends FinalizableWeakReference<V>
    implements CustomConcurrentHashMap.ValueReference<K, V>
  {
    final CustomConcurrentHashMap.ReferenceEntry<K, V> entry;

    WeakValueReference(V paramV, CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      super(CustomConcurrentHashMap.QueueHolder.queue);
      this.entry = paramReferenceEntry;
    }

    public CustomConcurrentHashMap.ValueReference<K, V> copyFor(CustomConcurrentHashMap.ReferenceEntry<K, V> paramReferenceEntry)
    {
      return new WeakValueReference(get(), paramReferenceEntry);
    }

    public void finalizeReferent()
    {
      this.entry.notifyValueReclaimed(this);
    }

    public boolean isComputingReference()
    {
      return false;
    }

    public void notifyValueReclaimed()
    {
      finalizeReferent();
    }

    public V waitForValue()
    {
      return get();
    }
  }

  final class WriteThroughEntry extends AbstractMapEntry<K, V>
  {
    final K key;
    V value;

    WriteThroughEntry(V arg2)
    {
      Object localObject1;
      this.key = localObject1;
      Object localObject2;
      this.value = localObject2;
    }

    public boolean equals(@Nullable Object paramObject)
    {
      boolean bool1 = paramObject instanceof Map.Entry;
      boolean bool2 = false;
      if (bool1)
      {
        Map.Entry localEntry = (Map.Entry)paramObject;
        boolean bool3 = this.key.equals(localEntry.getKey());
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = this.value.equals(localEntry.getValue());
          bool2 = false;
          if (bool4)
            bool2 = true;
        }
      }
      return bool2;
    }

    public K getKey()
    {
      return this.key;
    }

    public V getValue()
    {
      return this.value;
    }

    public int hashCode()
    {
      return this.key.hashCode() ^ this.value.hashCode();
    }

    public V setValue(V paramV)
    {
      Object localObject = CustomConcurrentHashMap.this.put(this.key, paramV);
      this.value = paramV;
      return localObject;
    }
  }
}

 