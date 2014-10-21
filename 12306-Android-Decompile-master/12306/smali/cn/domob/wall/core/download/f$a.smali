.class public Lcn/domob/wall/core/download/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/download/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field final synthetic b:Lcn/domob/wall/core/download/f;


# direct methods
.method protected constructor <init>(Lcn/domob/wall/core/download/f;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcn/domob/wall/core/download/f$a;->b:Lcn/domob/wall/core/download/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/wall/core/download/f$a;->a:Z

    return-void
.end method
