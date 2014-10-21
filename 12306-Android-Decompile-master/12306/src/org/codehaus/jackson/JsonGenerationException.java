package org.codehaus.jackson;

public class JsonGenerationException extends JsonProcessingException
{
  static final long serialVersionUID = 123L;

  public JsonGenerationException(String paramString)
  {
    super(paramString, (JsonLocation)null);
  }

  public JsonGenerationException(String paramString, Throwable paramThrowable)
  {
    super(paramString, (JsonLocation)null, paramThrowable);
  }

  public JsonGenerationException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

 