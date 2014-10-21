.class Lcn/domob/wall/core/u$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/u$a;->a(Lcn/domob/wall/core/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/domob/wall/core/u$a;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/u$a;[BLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcn/domob/wall/core/u$a$1;->c:Lcn/domob/wall/core/u$a;

    iput-object p2, p0, Lcn/domob/wall/core/u$a$1;->a:[B

    iput-object p3, p0, Lcn/domob/wall/core/u$a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcn/domob/wall/core/u$a$1;->c:Lcn/domob/wall/core/u$a;

    iget-object v0, v0, Lcn/domob/wall/core/u$a;->e:Lcn/domob/wall/core/u;

    iget-object v1, p0, Lcn/domob/wall/core/u$a$1;->a:[B

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/u;->a([B)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcn/domob/wall/core/u$a$1;->c:Lcn/domob/wall/core/u$a;

    iget-object v1, v1, Lcn/domob/wall/core/u$a;->e:Lcn/domob/wall/core/u;

    invoke-static {v1}, Lcn/domob/wall/core/u;->a(Lcn/domob/wall/core/u;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/u$a$1;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcn/domob/wall/core/u$a$1;->c:Lcn/domob/wall/core/u$a;

    iget-object v1, v1, Lcn/domob/wall/core/u$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcn/domob/wall/core/u$a$1;->c:Lcn/domob/wall/core/u$a;

    iget-object v0, v0, Lcn/domob/wall/core/u$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/wall/core/u$a$1;->c:Lcn/domob/wall/core/u$a;

    iget v1, v1, Lcn/domob/wall/core/u$a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
