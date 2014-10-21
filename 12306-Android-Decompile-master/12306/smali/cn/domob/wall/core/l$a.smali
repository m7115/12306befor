.class Lcn/domob/wall/core/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/l$a$b;,
        Lcn/domob/wall/core/l$a$c;,
        Lcn/domob/wall/core/l$a$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/wall/core/l$a; = null

.field private static final f:J = 0x927c0L


# instance fields
.field private b:Landroid/location/Location;

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 632
    new-instance v0, Lcn/domob/wall/core/l$a;

    invoke-direct {v0}, Lcn/domob/wall/core/l$a;-><init>()V

    sput-object v0, Lcn/domob/wall/core/l$a;->a:Lcn/domob/wall/core/l$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput v0, p0, Lcn/domob/wall/core/l$a;->c:I

    .line 636
    iput v0, p0, Lcn/domob/wall/core/l$a;->d:I

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/l$a;->e:Z

    .line 659
    return-void
.end method

.method static synthetic a(Lcn/domob/wall/core/l$a;)I
    .locals 1
    .parameter

    .prologue
    .line 631
    invoke-direct {p0}, Lcn/domob/wall/core/l$a;->c()I

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;)Landroid/location/Location;
    .locals 10
    .parameter

    .prologue
    const-wide/32 v8, 0x927c0

    const/4 v7, 0x0

    .line 690
    :try_start_0
    iget-boolean v0, p0, Lcn/domob/wall/core/l$a;->e:Z

    if-nez v0, :cond_0

    move-object v0, v7

    .line 769
    :goto_0
    return-object v0

    .line 695
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 697
    if-eqz v0, :cond_5

    .line 699
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 701
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 705
    :goto_1
    if-nez v1, :cond_1

    .line 706
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 708
    if-eqz v1, :cond_2

    .line 709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_2

    .line 711
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/wall/core/l$a;->c:I

    .line 712
    iput-object v1, p0, Lcn/domob/wall/core/l$a;->b:Landroid/location/Location;

    move-object v0, v1

    .line 713
    goto :goto_0

    .line 717
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-gez v2, :cond_2

    .line 718
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/wall/core/l$a;->c:I

    .line 719
    iput-object v1, p0, Lcn/domob/wall/core/l$a;->b:Landroid/location/Location;

    move-object v0, v1

    .line 720
    goto :goto_0

    .line 724
    :cond_2
    if-eqz p1, :cond_6

    iget-object v1, p0, Lcn/domob/wall/core/l$a;->b:Landroid/location/Location;

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcn/domob/wall/core/l$a;->b:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    add-long/2addr v3, v8

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 727
    :cond_3
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :try_start_1
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 732
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v1

    const-string v2, "Trying to get locations from the network."

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 735
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 737
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 738
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 742
    :goto_2
    if-nez v1, :cond_4

    .line 743
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v0

    const-class v1, Lcn/domob/wall/core/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No location providers are available.  Ads will not be geotargeted."

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/wall/core/l$a;->d:I

    .line 747
    monitor-exit p1

    move-object v0, v7

    goto/16 :goto_0

    .line 749
    :cond_4
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v2

    const-class v3, Lcn/domob/wall/core/l;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Location provider setup successfully."

    invoke-virtual {v2, v3, v4}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    new-instance v5, Lcn/domob/wall/core/l$a$b;

    invoke-direct {v5, p0, v0}, Lcn/domob/wall/core/l$a$b;-><init>(Lcn/domob/wall/core/l$a;Landroid/location/LocationManager;)V

    .line 754
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 758
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    :try_start_2
    invoke-direct {p0, p1}, Lcn/domob/wall/core/l$a;->b(Landroid/content/Context;)V

    .line 766
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcn/domob/wall/core/l$a;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v7

    .line 767
    goto/16 :goto_0

    .line 758
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 768
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 769
    goto/16 :goto_0

    .line 762
    :cond_6
    iget-object v0, p0, Lcn/domob/wall/core/l$a;->b:Landroid/location/Location;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_7
    move-object v1, v7

    goto :goto_2

    :cond_8
    move-object v1, v7

    goto/16 :goto_1
.end method

.method static synthetic a(Lcn/domob/wall/core/l$a;Landroid/content/Context;)Landroid/location/Location;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcn/domob/wall/core/l$a;->a(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcn/domob/wall/core/l$a;
    .locals 1

    .prologue
    .line 656
    sget-object v0, Lcn/domob/wall/core/l$a;->a:Lcn/domob/wall/core/l$a;

    return-object v0
.end method

.method private a(Landroid/location/Location;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 977
    const/4 v0, 0x0

    .line 978
    if-eqz p1, :cond_0

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v1

    const-class v2, Lcn/domob/wall/core/l;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User coordinates are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 987
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcn/domob/wall/core/l$a;Landroid/location/Location;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcn/domob/wall/core/l$a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(IIII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 862
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 863
    const-string v1, "version"

    const-string v2, "1.1.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    const-string v1, "host"

    const-string v2, "maps.google.com"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 866
    const-string v1, "request_address"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 868
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 869
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 870
    const-string v3, "cell_id"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 871
    const-string v3, "location_area_code"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 872
    const-string v3, "mobile_country_code"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 873
    const-string v3, "mobile_network_code"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 874
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 875
    const-string v2, "cell_towers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 877
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location send:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->a(Ljava/lang/String;)V

    .line 879
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 880
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://www.google.com/loc/json"

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 881
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 883
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 885
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 886
    if-eqz v0, :cond_1

    .line 887
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 889
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 890
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 892
    :goto_0
    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 894
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 897
    :cond_0
    if-eqz v2, :cond_1

    .line 898
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONTokener;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 900
    if-eqz v0, :cond_1

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 903
    const-string v2, "location"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "latitude"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 906
    new-instance v4, Landroid/location/Location;

    const-string v5, "jizhan"

    invoke-direct {v4, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 907
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 908
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 909
    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 911
    invoke-direct {p0, v4, v7}, Lcn/domob/wall/core/l$a;->a(Landroid/location/Location;I)V

    .line 915
    :cond_1
    return-void
.end method

.method private a(Landroid/location/Location;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcn/domob/wall/core/l$a;->b:Landroid/location/Location;

    .line 919
    iput p2, p0, Lcn/domob/wall/core/l$a;->c:I

    .line 920
    return-void
.end method

.method static synthetic a(Lcn/domob/wall/core/l$a;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 631
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/wall/core/l$a;->a(IIII)V

    return-void
.end method

.method static synthetic a(Lcn/domob/wall/core/l$a;Landroid/location/Location;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 631
    invoke-direct {p0, p1, p2}, Lcn/domob/wall/core/l$a;->a(Landroid/location/Location;I)V

    return-void
.end method

.method private b()I
    .locals 4

    .prologue
    .line 780
    iget-object v0, p0, Lcn/domob/wall/core/l$a;->b:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 781
    const/4 v0, 0x0

    .line 785
    :goto_0
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location accuracy is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " meters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 786
    return v0

    .line 783
    :cond_0
    iget-object v0, p0, Lcn/domob/wall/core/l$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method static synthetic b(Lcn/domob/wall/core/l$a;)I
    .locals 1
    .parameter

    .prologue
    .line 631
    invoke-direct {p0}, Lcn/domob/wall/core/l$a;->d()I

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 794
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/domob/wall/core/l$a$1;

    invoke-direct {v1, p0, p1}, Lcn/domob/wall/core/l$a$1;-><init>(Lcn/domob/wall/core/l$a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 850
    return-void
.end method

.method private c()I
    .locals 3

    .prologue
    .line 928
    iget v0, p0, Lcn/domob/wall/core/l$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 939
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v0

    const-class v1, Lcn/domob/wall/core/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown"

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    :goto_0
    iget v0, p0, Lcn/domob/wall/core/l$a;->c:I

    return v0

    .line 930
    :pswitch_0
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v0

    const-class v1, Lcn/domob/wall/core/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPS"

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 933
    :pswitch_1
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v0

    const-class v1, Lcn/domob/wall/core/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Base"

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 936
    :pswitch_2
    invoke-static {}, Lcn/domob/wall/core/l;->h()Lcn/domob/wall/core/p;

    move-result-object v0

    const-class v1, Lcn/domob/wall/core/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 928
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcn/domob/wall/core/l$a;)J
    .locals 2
    .parameter

    .prologue
    .line 631
    invoke-direct {p0}, Lcn/domob/wall/core/l$a;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lcn/domob/wall/core/l$a;->d:I

    packed-switch v0, :pswitch_data_0

    .line 959
    :pswitch_0
    iget v0, p0, Lcn/domob/wall/core/l$a;->d:I

    return v0

    .line 948
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lcn/domob/wall/core/l$a;)I
    .locals 1
    .parameter

    .prologue
    .line 631
    invoke-direct {p0}, Lcn/domob/wall/core/l$a;->b()I

    move-result v0

    return v0
.end method

.method private e()J
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcn/domob/wall/core/l$a;->b:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcn/domob/wall/core/l$a;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 967
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
