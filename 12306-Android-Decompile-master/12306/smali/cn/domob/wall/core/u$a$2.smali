.class Lcn/domob/wall/core/u$a$2;
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
.field final synthetic a:Lcn/domob/wall/core/u$a;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/u$a;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcn/domob/wall/core/u$a$2;->a:Lcn/domob/wall/core/u$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcn/domob/wall/core/u$a$2;->a:Lcn/domob/wall/core/u$a;

    iget-object v0, v0, Lcn/domob/wall/core/u$a;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/wall/core/u$a$2;->a:Lcn/domob/wall/core/u$a;

    iget v1, v1, Lcn/domob/wall/core/u$a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    return-void
.end method
