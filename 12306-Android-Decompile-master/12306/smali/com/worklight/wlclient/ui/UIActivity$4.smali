.class Lcom/worklight/wlclient/ui/UIActivity$4;
.super Ljava/lang/Object;
.source "UIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/wlclient/ui/UIActivity;->handleRemoteDisableDialogue(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/ui/UIActivity;

.field final synthetic val$downloadLink:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/worklight/wlclient/ui/UIActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/worklight/wlclient/ui/UIActivity$4;->this$0:Lcom/worklight/wlclient/ui/UIActivity;

    iput-object p2, p0, Lcom/worklight/wlclient/ui/UIActivity$4;->val$downloadLink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/worklight/wlclient/ui/UIActivity$4;->this$0:Lcom/worklight/wlclient/ui/UIActivity;

    iget-object v1, p0, Lcom/worklight/wlclient/ui/UIActivity$4;->val$downloadLink:Ljava/lang/String;

    #calls: Lcom/worklight/wlclient/ui/UIActivity;->openURL(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/worklight/wlclient/ui/UIActivity;->access$000(Lcom/worklight/wlclient/ui/UIActivity;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/worklight/wlclient/ui/UIActivity$4;->this$0:Lcom/worklight/wlclient/ui/UIActivity;

    invoke-virtual {v0}, Lcom/worklight/wlclient/ui/UIActivity;->finish()V

    .line 200
    return-void
.end method
