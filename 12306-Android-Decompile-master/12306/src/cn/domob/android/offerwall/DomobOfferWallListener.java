package cn.domob.android.offerwall;

public abstract interface DomobOfferWallListener
{
  public abstract void onOfferWallLoadFailed(DomobOfferWallView paramDomobOfferWallView);

  public abstract void onOfferWallLoadFinished(DomobOfferWallView paramDomobOfferWallView);

  public abstract void onOfferWallLoadStart(DomobOfferWallView paramDomobOfferWallView);
}

 