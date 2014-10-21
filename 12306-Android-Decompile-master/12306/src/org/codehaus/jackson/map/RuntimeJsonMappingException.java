package org.codehaus.jackson.map;

public class RuntimeJsonMappingException extends RuntimeException
{
  public RuntimeJsonMappingException(String paramString)
  {
    super(paramString);
  }

  public RuntimeJsonMappingException(String paramString, JsonMappingException paramJsonMappingException)
  {
    super(paramString, paramJsonMappingException);
  }

  public RuntimeJsonMappingException(JsonMappingException paramJsonMappingException)
  {
    super(paramJsonMappingException);
  }
}

 