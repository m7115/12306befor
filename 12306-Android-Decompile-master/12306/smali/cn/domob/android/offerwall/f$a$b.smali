.class Lcn/domob/android/offerwall/f$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/offerwall/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field protected a:Landroid/location/LocationManager;

.field final synthetic b:Lcn/domob/android/offerwall/f$a;


# direct methods
.method constructor <init>(Lcn/domob/android/offerwall/f$a;Landroid/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/f$a$b;->b:Lcn/domob/android/offerwall/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/domob/android/offerwall/f$a$b;->a:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3

    invoke-static {}, Lcn/domob/android/offerwall/f;->f()Lcn/domob/android/offerwall/m;

    move-result-object v0

    const-class v1, Lcn/domob/android/offerwall/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onLocationChanged"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/f$a$b;->b:Lcn/domob/android/offerwall/f$a;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcn/domob/android/offerwall/f$a;->a(Lcn/domob/android/offerwall/f$a;Landroid/location/Location;I)V

    iget-object v0, p0, Lcn/domob/android/offerwall/f$a$b;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
