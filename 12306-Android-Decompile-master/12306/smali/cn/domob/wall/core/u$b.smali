.class Lcn/domob/wall/core/u$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcn/domob/wall/core/u$a;

.field final synthetic b:Lcn/domob/wall/core/u;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/u;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcn/domob/wall/core/u$b;->b:Lcn/domob/wall/core/u;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 328
    new-instance v0, Lcn/domob/wall/core/u$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcn/domob/wall/core/u$a;-><init>(Lcn/domob/wall/core/u;Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcn/domob/wall/core/u$b;->a:Lcn/domob/wall/core/u$a;

    .line 329
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    :try_start_0
    iget-object v0, p0, Lcn/domob/wall/core/u$b;->a:Lcn/domob/wall/core/u$a;

    invoke-virtual {v0}, Lcn/domob/wall/core/u$a;->a()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method
