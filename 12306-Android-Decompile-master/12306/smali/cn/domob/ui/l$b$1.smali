.class Lcn/domob/ui/l$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/l$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/l$b;


# direct methods
.method constructor <init>(Lcn/domob/ui/l$b;)V
    .locals 0
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcn/domob/ui/l$b$1;->a:Lcn/domob/ui/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1088
    iget-object v0, p0, Lcn/domob/ui/l$b$1;->a:Lcn/domob/ui/l$b;

    iget-object v0, v0, Lcn/domob/ui/l$b;->a:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->n(Lcn/domob/ui/l;)Lcn/domob/ui/DGallery;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/domob/ui/DGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1090
    return-void
.end method
