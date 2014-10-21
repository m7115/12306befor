.class Lcn/domob/wall/core/download/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/download/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/download/k;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/domob/wall/core/download/k;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcn/domob/wall/core/download/k$b;->a:Lcn/domob/wall/core/download/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p3, p0, Lcn/domob/wall/core/download/k$b;->b:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcn/domob/wall/core/download/k$b;->c:Landroid/os/Handler;

    .line 121
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 126
    iget-object v1, p0, Lcn/domob/wall/core/download/k$b;->a:Lcn/domob/wall/core/download/k;

    iget-object v2, p0, Lcn/domob/wall/core/download/k$b;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/domob/wall/core/download/k;->a(Lcn/domob/wall/core/download/k;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcn/domob/wall/core/download/k$b;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    :cond_0
    iget-object v0, p0, Lcn/domob/wall/core/download/k$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcn/domob/wall/core/download/k$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
