.class Lcn/domob/wall/core/k$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/k;->a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/DService$ErrorCode;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/domob/wall/core/k;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/k;Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcn/domob/wall/core/k$3;->c:Lcn/domob/wall/core/k;

    iput-object p2, p0, Lcn/domob/wall/core/k$3;->a:Lcn/domob/wall/core/DService$ErrorCode;

    iput-object p3, p0, Lcn/domob/wall/core/k$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcn/domob/wall/core/k$3;->c:Lcn/domob/wall/core/k;

    invoke-static {v0}, Lcn/domob/wall/core/k;->b(Lcn/domob/wall/core/k;)Lcn/domob/wall/core/DService$ReceiveDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcn/domob/wall/core/k$3;->c:Lcn/domob/wall/core/k;

    invoke-static {v0}, Lcn/domob/wall/core/k;->b(Lcn/domob/wall/core/k;)Lcn/domob/wall/core/DService$ReceiveDataListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/k$3;->a:Lcn/domob/wall/core/DService$ErrorCode;

    iget-object v2, p0, Lcn/domob/wall/core/k$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/domob/wall/core/DService$ReceiveDataListener;->onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method
