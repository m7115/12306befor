.class Lcom/worklight/wlclient/ui/UIActivity$1;
.super Ljava/lang/Object;
.source "UIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/wlclient/ui/UIActivity;->handleExitDialogue(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/ui/UIActivity;


# direct methods
.method constructor <init>(Lcom/worklight/wlclient/ui/UIActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/worklight/wlclient/ui/UIActivity$1;->this$0:Lcom/worklight/wlclient/ui/UIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/worklight/wlclient/ui/UIActivity$1;->this$0:Lcom/worklight/wlclient/ui/UIActivity;

    invoke-virtual {v0}, Lcom/worklight/wlclient/ui/UIActivity;->finish()V

    .line 109
    return-void
.end method
