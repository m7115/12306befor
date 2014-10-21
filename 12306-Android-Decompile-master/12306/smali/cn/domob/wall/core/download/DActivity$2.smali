.class Lcn/domob/wall/core/download/DActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/download/DActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/download/DActivity;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/download/DActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcn/domob/wall/core/download/DActivity$2;->a:Lcn/domob/wall/core/download/DActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 91
    sget-object v0, Lcn/domob/wall/core/download/b;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/wall/core/download/DActivity$2;->a:Lcn/domob/wall/core/download/DActivity;

    invoke-static {v1}, Lcn/domob/wall/core/download/DActivity;->a(Lcn/domob/wall/core/download/DActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/download/b;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcn/domob/wall/core/download/b;->b()V

    .line 95
    invoke-virtual {v0}, Lcn/domob/wall/core/download/b;->a()Lcn/domob/wall/core/download/c;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcn/domob/wall/core/download/c;->b()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcn/domob/wall/core/download/DActivity$2;->a:Lcn/domob/wall/core/download/DActivity;

    invoke-virtual {v0}, Lcn/domob/wall/core/download/DActivity;->finish()V

    .line 102
    return-void
.end method
