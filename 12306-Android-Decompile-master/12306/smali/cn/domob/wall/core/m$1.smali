.class Lcn/domob/wall/core/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/m;->a(Lcn/domob/wall/core/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/k;

.field final synthetic b:Lcn/domob/wall/core/m;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/m;Lcn/domob/wall/core/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcn/domob/wall/core/m$1;->b:Lcn/domob/wall/core/m;

    iput-object p2, p0, Lcn/domob/wall/core/m$1;->a:Lcn/domob/wall/core/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 164
    invoke-static {}, Lcn/domob/wall/core/m;->b()Lcn/domob/wall/core/p;

    move-result-object v0

    const-string v1, "start to report imp"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcn/domob/wall/core/q;->a()Lcn/domob/wall/core/q;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/m$1;->a:Lcn/domob/wall/core/k;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/q;->a(Lcn/domob/wall/core/k;)Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/q$a;

    .line 169
    new-instance v2, Lcn/domob/wall/core/r$f;

    invoke-static {}, Lcn/domob/wall/core/r;->a()Lcn/domob/wall/core/r;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcn/domob/wall/core/m$1;->a:Lcn/domob/wall/core/k;

    invoke-direct {v2, v3, v4}, Lcn/domob/wall/core/r$f;-><init>(Lcn/domob/wall/core/r;Lcn/domob/wall/core/k;)V

    .line 171
    iget-object v3, v0, Lcn/domob/wall/core/q$a;->b:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/wall/core/r$f;->a(Ljava/lang/String;)V

    .line 172
    iget-object v0, v0, Lcn/domob/wall/core/q$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/r$f;->b(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Lcn/domob/wall/core/r$f;->a()V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method
