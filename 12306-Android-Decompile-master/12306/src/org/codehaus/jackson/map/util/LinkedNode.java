package org.codehaus.jackson.map.util;

public final class LinkedNode<T>
{
  final LinkedNode<T> _next;
  final T _value;

  public LinkedNode(T paramT, LinkedNode<T> paramLinkedNode)
  {
    this._value = paramT;
    this._next = paramLinkedNode;
  }

  public static <ST> boolean contains(LinkedNode<ST> paramLinkedNode, ST paramST)
  {
    while (paramLinkedNode != null)
    {
      if (paramLinkedNode.value() == paramST)
        return true;
      paramLinkedNode = paramLinkedNode.next();
    }
    return false;
  }

  public LinkedNode<T> next()
  {
    return this._next;
  }

  public T value()
  {
    return this._value;
  }
}

 