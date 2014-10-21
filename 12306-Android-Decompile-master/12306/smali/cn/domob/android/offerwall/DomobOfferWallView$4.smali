.class Lcn/domob/android/offerwall/DomobOfferWallView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/offerwall/DomobOfferWallView;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/domob/android/offerwall/DomobOfferWallView;


# direct methods
.method constructor <init>(Lcn/domob/android/offerwall/DomobOfferWallView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/DomobOfferWallView$4;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    iput-object p2, p0, Lcn/domob/android/offerwall/DomobOfferWallView$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView$4;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-static {v0}, Lcn/domob/android/offerwall/DomobOfferWallView;->b(Lcn/domob/android/offerwall/DomobOfferWallView;)Lcn/domob/android/offerwall/a;

    move-result-object v0

    const-string v1, "domob.failed(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/domob/android/offerwall/DomobOfferWallView$4;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView$4;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-static {v0}, Lcn/domob/android/offerwall/DomobOfferWallView;->b(Lcn/domob/android/offerwall/DomobOfferWallView;)Lcn/domob/android/offerwall/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/offerwall/a;->invalidate()V

    const-string v0, "404"

    iget-object v1, p0, Lcn/domob/android/offerwall/DomobOfferWallView$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView$4;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-static {v0}, Lcn/domob/android/offerwall/DomobOfferWallView;->c(Lcn/domob/android/offerwall/DomobOfferWallView;)Lcn/domob/android/offerwall/DomobOfferWallListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView$4;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-static {v0}, Lcn/domob/android/offerwall/DomobOfferWallView;->c(Lcn/domob/android/offerwall/DomobOfferWallView;)Lcn/domob/android/offerwall/DomobOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/offerwall/DomobOfferWallView$4;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-interface {v0, v1}, Lcn/domob/android/offerwall/DomobOfferWallListener;->onOfferWallLoadFinished(Lcn/domob/android/offerwall/DomobOfferWallView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView$4;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-static {v0}, Lcn/domob/android/offerwall/DomobOfferWallView;->c(Lcn/domob/android/offerwall/DomobOfferWallView;)Lcn/domob/android/offerwall/DomobOfferWallListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView$4;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-static {v0}, Lcn/domob/android/offerwall/DomobOfferWallView;->c(Lcn/domob/android/offerwall/DomobOfferWallView;)Lcn/domob/android/offerwall/DomobOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/offerwall/DomobOfferWallView$4;->b:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-interface {v0, v1}, Lcn/domob/android/offerwall/DomobOfferWallListener;->onOfferWallLoadFailed(Lcn/domob/android/offerwall/DomobOfferWallView;)V

    goto :goto_0
.end method
