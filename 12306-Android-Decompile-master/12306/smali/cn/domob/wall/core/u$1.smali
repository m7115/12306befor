.class Lcn/domob/wall/core/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/u;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:Lcn/domob/wall/core/u;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/u;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcn/domob/wall/core/u$1;->c:Lcn/domob/wall/core/u;

    iput-object p2, p0, Lcn/domob/wall/core/u$1;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcn/domob/wall/core/u$1;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcn/domob/wall/core/u$1;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/wall/core/u$1;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-static {}, Lcn/domob/wall/core/u;->b()Lcn/domob/wall/core/p;

    move-result-object v0

    const-string v1, "Open the UI main thread, assigned to the ImageView object"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 69
    return-void
.end method
