.class Lcn/domob/android/offerwall/DomobOfferWallView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/offerwall/DomobOfferWallView;->loadOfferWall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/offerwall/DomobOfferWallView;


# direct methods
.method constructor <init>(Lcn/domob/android/offerwall/DomobOfferWallView;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/DomobOfferWallView$1;->a:Lcn/domob/android/offerwall/DomobOfferWallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/domob/android/offerwall/DomobOfferWallView$1;->a:Lcn/domob/android/offerwall/DomobOfferWallView;

    const-string v1, "404"

    invoke-static {v0, v1}, Lcn/domob/android/offerwall/DomobOfferWallView;->a(Lcn/domob/android/offerwall/DomobOfferWallView;Ljava/lang/String;)V

    return-void
.end method
