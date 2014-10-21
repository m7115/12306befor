.class Lcn/domob/wall/core/download/k$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/download/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/widget/ImageView;

.field final synthetic c:Lcn/domob/wall/core/download/k;


# direct methods
.method public constructor <init>(Lcn/domob/wall/core/download/k;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcn/domob/wall/core/download/k$a;->c:Lcn/domob/wall/core/download/k;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 139
    iput-object p2, p0, Lcn/domob/wall/core/download/k$a;->a:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lcn/domob/wall/core/download/k$a;->b:Landroid/widget/ImageView;

    .line 141
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 145
    iget-object v0, p0, Lcn/domob/wall/core/download/k$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/download/k$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 148
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcn/domob/wall/core/download/k$a;->c:Lcn/domob/wall/core/download/k;

    iget-object v1, v1, Lcn/domob/wall/core/download/k;->a:Lcn/domob/wall/core/DService$OnImageDownload;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcn/domob/wall/core/download/k$a;->c:Lcn/domob/wall/core/download/k;

    iget-object v1, v1, Lcn/domob/wall/core/download/k;->a:Lcn/domob/wall/core/DService$OnImageDownload;

    iget-object v2, p0, Lcn/domob/wall/core/download/k$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/wall/core/download/k$a;->b:Landroid/widget/ImageView;

    invoke-interface {v1, v0, v2, v3}, Lcn/domob/wall/core/DService$OnImageDownload;->onDownloadSuc(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 156
    :cond_0
    return-void
.end method
