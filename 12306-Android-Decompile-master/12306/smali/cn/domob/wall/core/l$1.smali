.class final Lcn/domob/wall/core/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/l;->A(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1040
    iget v0, p2, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    sub-int v1, v0, v1

    .line 1041
    const/4 v0, 0x0

    .line 1042
    if-lez v1, :cond_1

    .line 1043
    const/4 v0, 0x1

    .line 1048
    :cond_0
    :goto_0
    return v0

    .line 1044
    :cond_1
    if-gez v1, :cond_0

    .line 1045
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1037
    check-cast p1, Landroid/net/wifi/ScanResult;

    .end local p1
    check-cast p2, Landroid/net/wifi/ScanResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcn/domob/wall/core/l$1;->a(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I

    move-result v0

    return v0
.end method
