.class Lcn/domob/wall/core/l$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/l$a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/domob/wall/core/l$a;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/l$a;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcn/domob/wall/core/l$a$1;->b:Lcn/domob/wall/core/l$a;

    iput-object p2, p0, Lcn/domob/wall/core/l$a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 797
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v1

    const-class v2, Lcn/domob/wall/core/l;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getLocationBasedService"

    invoke-virtual {v1, v2, v3}, Lcn/domob/wall/core/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    :try_start_0
    iget-object v1, p0, Lcn/domob/wall/core/l$a$1;->a:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 802
    if-eqz v1, :cond_0

    .line 803
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v2

    const-class v3, Lcn/domob/wall/core/l;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tManager is not null"

    invoke-virtual {v2, v3, v4}, Lcn/domob/wall/core/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v2

    const-class v3, Lcn/domob/wall/core/l;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network Operator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/domob/wall/core/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_0

    .line 814
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    .line 817
    packed-switch v2, :pswitch_data_0

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 819
    :pswitch_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 821
    if-eqz v2, :cond_0

    .line 822
    move-object v0, v2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 824
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 826
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 829
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    const/4 v6, 0x5

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 833
    iget-object v5, p0, Lcn/domob/wall/core/l$a$1;->b:Lcn/domob/wall/core/l$a;

    invoke-static {v5, v3, v2, v1, v4}, Lcn/domob/wall/core/l$a;->a(Lcn/domob/wall/core/l$a;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 845
    :catch_0
    move-exception v1

    .line 846
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 817
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
