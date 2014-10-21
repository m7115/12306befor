.class Lcn/domob/wall/core/m$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcn/domob/wall/core/k;

.field final synthetic c:Lcn/domob/wall/core/m;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/m;Ljava/util/ArrayList;Lcn/domob/wall/core/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcn/domob/wall/core/m$2;->c:Lcn/domob/wall/core/m;

    iput-object p2, p0, Lcn/domob/wall/core/m$2;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcn/domob/wall/core/m$2;->b:Lcn/domob/wall/core/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 189
    .line 192
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 193
    iget-object v0, p0, Lcn/domob/wall/core/m$2;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcn/domob/wall/core/m$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    .line 195
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 196
    const-string v4, "id"

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->getAdId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v4, "tr"

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v0, "sn"

    const-string v4, "1"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 201
    new-instance v3, Lcn/domob/wall/core/r$f;

    invoke-static {}, Lcn/domob/wall/core/r;->a()Lcn/domob/wall/core/r;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcn/domob/wall/core/m$2;->b:Lcn/domob/wall/core/k;

    invoke-direct {v3, v0, v4}, Lcn/domob/wall/core/r$f;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;)V

    .line 203
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/wall/core/r$f;->a(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcn/domob/wall/core/m$2;->a:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/AdInfo;

    invoke-virtual {v0}, Lcn/domob/wall/core/AdInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/wall/core/r$f;->b(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v3}, Lcn/domob/wall/core/r$f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-static {}, Lcn/domob/wall/core/m;->b()Lcn/domob/wall/core/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    .line 212
    :cond_0
    return-void
.end method
