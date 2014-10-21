.class Lcom/worklight/wlclient/ui/UIActivity$2;
.super Ljava/lang/Object;
.source "UIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/wlclient/ui/UIActivity;->handleNotifyDialogue(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/ui/UIActivity;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/worklight/wlclient/ui/UIActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/worklight/wlclient/ui/UIActivity$2;->this$0:Lcom/worklight/wlclient/ui/UIActivity;

    iput-object p2, p0, Lcom/worklight/wlclient/ui/UIActivity$2;->val$messageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 141
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v1

    const-string v2, "wl_remoteDisableRealm"

    invoke-virtual {v1, v2}, Lcom/worklight/wlclient/api/WLClient;->getWLChallengeHandler(Ljava/lang/String;)Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;

    move-result-object v0

    .line 142
    .local v0, ch:Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/worklight/wlclient/ui/UIActivity$2;->val$messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/worklight/wlclient/api/challengehandler/WLChallengeHandler;->submitChallengeAnswer(Ljava/lang/Object;)V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/worklight/wlclient/ui/UIActivity$2;->this$0:Lcom/worklight/wlclient/ui/UIActivity;

    invoke-virtual {v1}, Lcom/worklight/wlclient/ui/UIActivity;->finish()V

    .line 149
    return-void
.end method
