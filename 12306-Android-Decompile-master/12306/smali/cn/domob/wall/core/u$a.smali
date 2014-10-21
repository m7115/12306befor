.class Lcn/domob/wall/core/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Landroid/widget/ImageView;

.field d:I

.field final synthetic e:Lcn/domob/wall/core/u;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/u;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcn/domob/wall/core/u$a;->e:Lcn/domob/wall/core/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p2, p0, Lcn/domob/wall/core/u$a;->a:Landroid/content/Context;

    .line 181
    iput-object p3, p0, Lcn/domob/wall/core/u$a;->b:Ljava/lang/String;

    .line 182
    iput-object p4, p0, Lcn/domob/wall/core/u$a;->c:Landroid/widget/ImageView;

    .line 183
    iput p5, p0, Lcn/domob/wall/core/u$a;->d:I

    .line 184
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 190
    new-instance v0, Lcn/domob/wall/core/f;

    iget-object v1, p0, Lcn/domob/wall/core/u$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/wall/core/u$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcn/domob/wall/core/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/wall/core/f$a;)V

    .line 191
    iget-object v1, p0, Lcn/domob/wall/core/u$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/f;->a(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Lcn/domob/wall/core/f;->run()V

    .line 193
    return-void
.end method

.method public a(Lcn/domob/wall/core/f;)V
    .locals 8
    .parameter

    .prologue
    .line 197
    invoke-virtual {p1}, Lcn/domob/wall/core/f;->f()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 198
    invoke-virtual {p1}, Lcn/domob/wall/core/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {}, Lcn/domob/wall/core/u;->b()Lcn/domob/wall/core/p;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download finish:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcn/domob/wall/core/f;->d()[B

    move-result-object v2

    .line 201
    iget-object v0, p0, Lcn/domob/wall/core/u$a;->e:Lcn/domob/wall/core/u;

    iget-object v3, p0, Lcn/domob/wall/core/u$a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/domob/wall/core/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v2, v4}, Lcn/domob/wall/core/u;->a(Lcn/domob/wall/core/u;Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcn/domob/wall/core/u;->b()Lcn/domob/wall/core/p;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image saved:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 206
    :try_start_0
    invoke-static {}, Lcn/domob/wall/core/u;->b()Lcn/domob/wall/core/p;

    move-result-object v3

    const-string v4, "the size of the image is %s KB"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, v2

    div-int/lit16 v7, v7, 0x400

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcn/domob/wall/core/t;->a()Lcn/domob/wall/core/t;

    move-result-object v3

    array-length v4, v2

    invoke-virtual {v3, v1, v0, v4}, Lcn/domob/wall/core/t;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    iget-object v0, p0, Lcn/domob/wall/core/u$a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Lcn/domob/wall/core/u$a$1;

    invoke-direct {v3, p0, v2, v1}, Lcn/domob/wall/core/u$a$1;-><init>(Lcn/domob/wall/core/u$a;[BLjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    :goto_1
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    invoke-static {}, Lcn/domob/wall/core/u;->b()Lcn/domob/wall/core/p;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {}, Lcn/domob/wall/core/u;->b()Lcn/domob/wall/core/p;

    move-result-object v0

    const-string v3, "Error in saving image."

    invoke-virtual {v0, v3}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-static {}, Lcn/domob/wall/core/u;->b()Lcn/domob/wall/core/p;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get image from server and the ResponseCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/wall/core/f;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->d(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcn/domob/wall/core/u$a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/wall/core/u$a$2;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/u$a$2;-><init>(Lcn/domob/wall/core/u$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
