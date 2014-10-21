.class Lcn/domob/wall/core/l$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/location/LocationManager;

.field final synthetic b:Lcn/domob/wall/core/l$a;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/l$a;Landroid/location/LocationManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcn/domob/wall/core/l$a$b;->b:Lcn/domob/wall/core/l$a;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p2, p0, Lcn/domob/wall/core/l$a$b;->a:Landroid/location/LocationManager;

    .line 665
    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 669
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v0

    const-class v1, Lcn/domob/wall/core/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onLocationChanged"

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcn/domob/wall/core/l$a$b;->b:Lcn/domob/wall/core/l$a;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcn/domob/wall/core/l$a;->a(Lcn/domob/wall/core/l$a;Landroid/location/Location;I)V

    .line 672
    iget-object v0, p0, Lcn/domob/wall/core/l$a$b;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 673
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 677
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 681
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "s"
    .parameter "i"
    .parameter "bundle"

    .prologue
    .line 685
    return-void
.end method
