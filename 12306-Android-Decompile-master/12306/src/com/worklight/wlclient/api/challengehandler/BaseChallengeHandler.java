package com.worklight.wlclient.api.challengehandler;

import com.worklight.wlclient.WLRequest;
import com.worklight.wlclient.api.WLRequestOptions;
import com.worklight.wlclient.api.WLResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class BaseChallengeHandler<T>
{
  protected WLRequest activeRequest = null;
  private String realm;
  private List<WLRequest> requestWaitingList = new ArrayList();

  protected BaseChallengeHandler(String paramString)
  {
    this.realm = paramString;
  }

  private void clearChallengeRequests()
  {
    try
    {
      this.activeRequest = null;
      clearWaitingList();
      return;
    }
    finally
    {
    }
  }

  public void clearWaitingList()
  {
    try
    {
      this.requestWaitingList.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getRealm()
  {
    return this.realm;
  }

  public abstract void handleChallenge(T paramT);

  public void releaseWaitingList()
  {
    try
    {
      Iterator localIterator = this.requestWaitingList.iterator();
      while (localIterator.hasNext())
        ((WLRequest)localIterator.next()).removeExpectedAnswer(this.realm);
    }
    finally
    {
    }
    clearWaitingList();
  }

  public void startHandleChallenge(WLRequest paramWLRequest, T paramT)
  {
    try
    {
      if (!paramWLRequest.getOptions().isFromChallenge())
      {
        if (this.activeRequest != null)
        {
          this.requestWaitingList.add(paramWLRequest);
          return;
        }
        this.activeRequest = paramWLRequest;
      }
      handleChallenge(paramT);
      return;
    }
    finally
    {
    }
  }

  protected void submitFailure(WLResponse paramWLResponse)
  {
    clearChallengeRequests();
  }
}

 