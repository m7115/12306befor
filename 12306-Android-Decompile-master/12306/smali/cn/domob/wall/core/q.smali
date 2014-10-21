.class Lcn/domob/wall/core/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/q$b;,
        Lcn/domob/wall/core/q$a;
    }
.end annotation


# static fields
.field static a:Lcn/domob/wall/core/q;

.field private static b:Lcn/domob/wall/core/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/q;->b:Lcn/domob/wall/core/p;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method static declared-synchronized a()Lcn/domob/wall/core/q;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcn/domob/wall/core/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/domob/wall/core/q;->a:Lcn/domob/wall/core/q;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcn/domob/wall/core/q;

    invoke-direct {v0}, Lcn/domob/wall/core/q;-><init>()V

    sput-object v0, Lcn/domob/wall/core/q;->a:Lcn/domob/wall/core/q;

    .line 28
    :cond_0
    sget-object v0, Lcn/domob/wall/core/q;->a:Lcn/domob/wall/core/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcn/domob/wall/core/q$b;ILorg/json/JSONArray;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 229
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1}, Lcn/domob/wall/core/q$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v0, "tr"

    invoke-virtual {p1}, Lcn/domob/wall/core/q$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v0, "sn"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 236
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    sget-object v2, Lcn/domob/wall/core/q;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcn/domob/wall/core/k;)Ljava/util/List;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/wall/core/k;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/q$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-static {}, Lcn/domob/wall/core/q;->a()Lcn/domob/wall/core/q;

    move-result-object v0

    invoke-virtual {p1}, Lcn/domob/wall/core/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/q;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 153
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 168
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/q$b;

    .line 171
    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcn/domob/wall/core/q$b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcn/domob/wall/core/q$b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 176
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 179
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v4, v1, v3}, Lcn/domob/wall/core/q;->a(Lcn/domob/wall/core/q$b;ILorg/json/JSONArray;)V

    .line 181
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Lcn/domob/wall/core/q$a;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/q$a;-><init>(Lcn/domob/wall/core/q;)V

    .line 185
    invoke-virtual {v4}, Lcn/domob/wall/core/q$b;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcn/domob/wall/core/q$a;->a:Ljava/lang/String;

    .line 186
    iput-object v3, v1, Lcn/domob/wall/core/q$a;->b:Lorg/json/JSONArray;

    .line 187
    iput-object v2, v1, Lcn/domob/wall/core/q$a;->c:Ljava/util/List;

    .line 188
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 194
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :cond_2
    :goto_1
    move-object v4, v0

    .line 211
    goto :goto_0

    .line 197
    :cond_3
    if-eqz v4, :cond_2

    .line 198
    invoke-virtual {v0}, Lcn/domob/wall/core/q$b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcn/domob/wall/core/q$b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 200
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 208
    :goto_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v4, v1, v3}, Lcn/domob/wall/core/q;->a(Lcn/domob/wall/core/q$b;ILorg/json/JSONArray;)V

    .line 206
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 213
    :cond_5
    return-object v5
.end method

.method a(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/q$b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 75
    .line 76
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v0

    .line 77
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 80
    :try_start_0
    const-string v1, "imp"

    const/4 v2, 0x0

    const-string v3, "ppid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, "sid,ad_id"

    invoke-virtual/range {v0 .. v5}, Lcn/domob/wall/core/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 85
    :try_start_1
    const-string v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 86
    const-string v2, "ad_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 87
    const-string v3, "ppid"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 89
    const-string v4, "sid"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 90
    const-string v5, "tr"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1

    .line 95
    new-instance v6, Lcn/domob/wall/core/q$b;

    invoke-direct {v6, p0}, Lcn/domob/wall/core/q$b;-><init>(Lcn/domob/wall/core/q;)V

    .line 96
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcn/domob/wall/core/q$b;->e(Ljava/lang/String;)V

    .line 97
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcn/domob/wall/core/q$b;->c(Ljava/lang/String;)V

    .line 98
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcn/domob/wall/core/q$b;->d(Ljava/lang/String;)V

    .line 99
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcn/domob/wall/core/q$b;->a(Ljava/lang/String;)V

    .line 100
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcn/domob/wall/core/q$b;->b(Ljava/lang/String;)V

    .line 101
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v8, Lcn/domob/wall/core/q;->b:Lcn/domob/wall/core/p;

    const-string v9, "succeed to get Info ( sid=%s   tracker =%s   ad_id=%s   ppid=%s ) from DB"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Lcn/domob/wall/core/q$b;->a()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v6}, Lcn/domob/wall/core/q$b;->b()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v6}, Lcn/domob/wall/core/q$b;->c()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {v6}, Lcn/domob/wall/core/q$b;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcn/domob/wall/core/p;->a(Ljava/lang/String;)V

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :goto_1
    :try_start_2
    sget-object v2, Lcn/domob/wall/core/q;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    .line 113
    sget-object v0, Lcn/domob/wall/core/q;->b:Lcn/domob/wall/core/p;

    const-string v2, "error occured in getInfos"

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_0
    :goto_2
    return-object v7

    .line 108
    :cond_1
    :try_start_3
    sget-object v0, Lcn/domob/wall/core/q;->b:Lcn/domob/wall/core/p;

    const-string v2, "succeed to get (countNum=%s)  Infos from DB"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 115
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 115
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_2

    .line 116
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 115
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 111
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method a(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/q$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    sget-object v0, Lcn/domob/wall/core/q;->b:Lcn/domob/wall/core/p;

    const-string v1, "remove imps from the database which has been successfully sent"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v1

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/q$b;

    .line 254
    invoke-virtual {v0}, Lcn/domob/wall/core/q$b;->e()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 256
    const-string v5, " or "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    const-string v5, "id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v5, " = ? "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_1
    const-string v4, "imp"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v0}, Lcn/domob/wall/core/h;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method protected a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 40
    sget-object v0, Lcn/domob/wall/core/q;->b:Lcn/domob/wall/core/p;

    const-string v1, "Database insert new imp info"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 42
    :try_start_0
    invoke-static {}, Lcn/domob/wall/core/h;->a()Lcn/domob/wall/core/h;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 45
    const-string v2, "ad_id"

    invoke-virtual {p2}, Lcn/domob/wall/core/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "tr"

    invoke-virtual {p2}, Lcn/domob/wall/core/AdInfo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "sid"

    invoke-virtual {p2}, Lcn/domob/wall/core/AdInfo;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "ppid"

    invoke-virtual {p1}, Lcn/domob/wall/core/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v2, "imp"

    invoke-virtual {v0, v2, v1}, Lcn/domob/wall/core/h;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 52
    sget-object v0, Lcn/domob/wall/core/q;->b:Lcn/domob/wall/core/p;

    const-string v1, "succeed stored in the database   %s=%s   %s=%s   %s=%s"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ad_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcn/domob/wall/core/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "tr"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p2}, Lcn/domob/wall/core/AdInfo;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "sid"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p2}, Lcn/domob/wall/core/AdInfo;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ppid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {p1}, Lcn/domob/wall/core/k;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    invoke-static {}, Lcn/domob/wall/core/m;->a()Lcn/domob/wall/core/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Lcn/domob/wall/core/AdInfo;)V

    .line 65
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lcn/domob/wall/core/q;->b:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    .line 61
    sget-object v0, Lcn/domob/wall/core/q;->b:Lcn/domob/wall/core/p;

    const-string v1, "Failed to insert alias info."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
