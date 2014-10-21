.class Lcn/domob/wall/core/download/DActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/download/DActivity;->b()V
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
    .line 126
    iput-object p1, p0, Lcn/domob/wall/core/download/DActivity$3;->a:Lcn/domob/wall/core/download/DActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 129
    iget-object v0, p0, Lcn/domob/wall/core/download/DActivity$3;->a:Lcn/domob/wall/core/download/DActivity;

    invoke-virtual {v0}, Lcn/domob/wall/core/download/DActivity;->finish()V

    .line 130
    return-void
.end method
