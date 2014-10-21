.class public Lcn/domob/wall/core/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/a/a$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "url"

.field private static final g:Ljava/lang/String; = "failsafe"

.field private static final h:Ljava/lang/String; = "pkg"

.field private static final i:Ljava/lang/String; = "activity"

.field private static final j:Ljava/lang/String; = "param"


# instance fields
.field a:Lcn/domob/wall/core/p;

.field b:Lcn/domob/wall/core/AdInfo;

.field private c:Landroid/content/Context;

.field private d:Landroid/net/Uri;

.field private e:Lcn/domob/wall/core/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcn/domob/wall/core/a/a$a;Lcn/domob/wall/core/AdInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    .line 38
    iput-object p1, p0, Lcn/domob/wall/core/a/a;->c:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcn/domob/wall/core/a/a;->d:Landroid/net/Uri;

    .line 40
    iput-object p3, p0, Lcn/domob/wall/core/a/a;->e:Lcn/domob/wall/core/a/a$a;

    .line 41
    iput-object p4, p0, Lcn/domob/wall/core/a/a;->b:Lcn/domob/wall/core/AdInfo;

    .line 42
    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x2

    const/high16 v11, 0x1000

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 85
    const/4 v2, 0x0

    .line 86
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    const-string v1, "param"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 90
    iget-object v1, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    const-string v7, "launch url: %s, pakName: %s, activityName: %s, queryParams: %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v3

    aput-object v4, v8, v10

    aput-object v5, v8, v12

    const/4 v9, 0x3

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 92
    if-eqz v0, :cond_1

    .line 95
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/high16 v0, 0x1000

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    if-eqz v6, :cond_4

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 123
    iget-object v0, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QueryParams : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 124
    const-string v0, ";"

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 125
    array-length v4, v2

    move v0, v3

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v2, v0

    .line 126
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 127
    aget-object v6, v5, v3

    aget-object v5, v5, v10

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 99
    :goto_2
    iget-object v2, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    const-string v4, "Error happened in decoding launchURL"

    invoke-virtual {v2, v4}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 103
    :cond_1
    if-eqz v4, :cond_3

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    if-eqz v5, :cond_2

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    const-string v1, "Launch app with pkgname:%s, activityname: %s"

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v4, v2, v3

    aput-object v5, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 106
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 107
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    const-string v1, "Launch app with pkgname:%s"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcn/domob/wall/core/a/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 118
    :cond_3
    iget-object v0, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    const-string v1, "Package name is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    move-object v1, v2

    goto/16 :goto_0

    .line 131
    :cond_4
    return-object v1

    .line 98
    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/wall/core/a/a;->d:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/domob/wall/core/a/a;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    if-nez v0, :cond_2

    .line 49
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Action intent is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    iget-object v1, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to launch app with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/wall/core/a/a;->d:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    .line 61
    iget-object v0, p0, Lcn/domob/wall/core/a/a;->d:Landroid/net/Uri;

    const-string v1, "failsafe"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcn/domob/wall/core/a/a;->e:Lcn/domob/wall/core/a/a$a;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcn/domob/wall/core/a/a;->e:Lcn/domob/wall/core/a/a$a;

    iget-object v2, p0, Lcn/domob/wall/core/a/a;->b:Lcn/domob/wall/core/AdInfo;

    invoke-interface {v1, v0, v2}, Lcn/domob/wall/core/a/a$a;->a(Ljava/lang/String;Lcn/domob/wall/core/AdInfo;)V

    .line 68
    :cond_0
    if-eqz v0, :cond_1

    .line 71
    :try_start_1
    iget-object v1, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup action ----- Open landing page with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcn/domob/wall/core/a/a;->e:Lcn/domob/wall/core/a/a$a;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcn/domob/wall/core/a/a;->e:Lcn/domob/wall/core/a/a$a;

    iget-object v2, p0, Lcn/domob/wall/core/a/a;->b:Lcn/domob/wall/core/AdInfo;

    invoke-interface {v1, v0, v2}, Lcn/domob/wall/core/a/a$a;->b(Ljava/lang/String;Lcn/domob/wall/core/AdInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 51
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcn/domob/wall/core/a/a;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 53
    iget-object v0, p0, Lcn/domob/wall/core/a/a;->e:Lcn/domob/wall/core/a/a$a;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcn/domob/wall/core/a/a;->e:Lcn/domob/wall/core/a/a$a;

    iget-object v1, p0, Lcn/domob/wall/core/a/a;->b:Lcn/domob/wall/core/AdInfo;

    invoke-interface {v0, v1}, Lcn/domob/wall/core/a/a$a;->d(Lcn/domob/wall/core/AdInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    iget-object v1, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    const-string v2, "Invalid failsafe URL."

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcn/domob/wall/core/a/a;->a:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
