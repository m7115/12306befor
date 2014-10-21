.class Lcn/domob/wall/core/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcn/domob/wall/core/n; = null

.field private static b:Lcn/domob/wall/core/p; = null

.field private static final c:Ljava/lang/String; = "timestamp"

.field private static final d:Ljava/lang/String; = "requestTimestamp"

.field private static final e:Ljava/lang/String; = "cookieid"

.field private static final f:Ljava/lang/String; = "ad_cookieid"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/n;->b:Lcn/domob/wall/core/p;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a()Lcn/domob/wall/core/n;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcn/domob/wall/core/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/domob/wall/core/n;->a:Lcn/domob/wall/core/n;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcn/domob/wall/core/n;

    invoke-direct {v0}, Lcn/domob/wall/core/n;-><init>()V

    sput-object v0, Lcn/domob/wall/core/n;->a:Lcn/domob/wall/core/n;

    .line 26
    :cond_0
    sget-object v0, Lcn/domob/wall/core/n;->a:Lcn/domob/wall/core/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method a(Landroid/content/Context;)J
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 30
    const-string v0, "timestamp"

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    const-string v1, "requestTimestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 32
    sget-object v2, Lcn/domob/wall/core/n;->b:Lcn/domob/wall/core/p;

    const-string v3, "Query  data from SharedPreferences  key=%s  value=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "requestTimestamp"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 35
    return-wide v0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 49
    const-string v0, "cookieid"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    const-string v1, "ad_cookieid"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    sget-object v0, Lcn/domob/wall/core/n;->b:Lcn/domob/wall/core/p;

    const-string v1, "The SharedPreferences stored data key = %s  cookieid = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ad_cookieid"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 39
    const-string v0, "timestamp"

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    const-string v1, "requestTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    sget-object v0, Lcn/domob/wall/core/n;->b:Lcn/domob/wall/core/p;

    const-string v1, "The SharedPreferences stored data key = %s  timestamp = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "requestTimestamp"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method c(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 59
    const-string v0, "cookieid"

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    const-string v1, "ad_cookieid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    sget-object v1, Lcn/domob/wall/core/n;->b:Lcn/domob/wall/core/p;

    const-string v2, "Query  data from SharedPreferences  key=%s  value=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ad_cookieid"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 65
    return-object v0
.end method
