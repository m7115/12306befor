.class public Lcom/worklight/wlclient/ui/UIActivity;
.super Landroid/app/Activity;
.source "UIActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/worklight/wlclient/ui/UIActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/worklight/wlclient/ui/UIActivity;->openURL(Ljava/lang/String;)V

    return-void
.end method

.method private createAndShowDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "positiveButtonText"
    .parameter "positiveButtonListener"
    .parameter "neutralButtonText"
    .parameter "neutralButtonListener"

    .prologue
    const/4 v2, 0x0

    .line 246
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 254
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 257
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    :cond_0
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    .line 263
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 269
    .local v1, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 271
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 273
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 274
    return-void
.end method

.method private exitApplication()V
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/worklight/wlclient/ui/UIActivity;->finish()V

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/ui/UIActivity;->moveTaskToBack(Z)Z

    .line 232
    return-void
.end method

.method private handleDialogue(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/worklight/wlclient/ui/UIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "wl_remoteDisableRealm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-direct {p0, v0}, Lcom/worklight/wlclient/ui/UIActivity;->handleRemoteDisableDialogue(Landroid/content/Intent;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    invoke-direct {p0, v0}, Lcom/worklight/wlclient/ui/UIActivity;->handleNotifyDialogue(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    :cond_2
    const-string v1, "exit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-direct {p0, v0}, Lcom/worklight/wlclient/ui/UIActivity;->handleExitDialogue(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleExitDialogue(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 95
    const-string v0, "dialogue_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, title:Ljava/lang/String;
    const-string v0, "dialogue_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, message:Ljava/lang/String;
    const-string v0, "positive_button_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, positiveButtonText:Ljava/lang/String;
    new-instance v4, Lcom/worklight/wlclient/ui/UIActivity$1;

    invoke-direct {v4, p0}, Lcom/worklight/wlclient/ui/UIActivity$1;-><init>(Lcom/worklight/wlclient/ui/UIActivity;)V

    .local v4, listener:Landroid/content/DialogInterface$OnClickListener;
    move-object v0, p0

    move-object v6, v5

    .line 113
    invoke-direct/range {v0 .. v6}, Lcom/worklight/wlclient/ui/UIActivity;->createAndShowDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    return-void
.end method

.method private handleNotifyDialogue(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 124
    const-string v0, "dialogue_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, title:Ljava/lang/String;
    const-string v0, "dialogue_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, message:Ljava/lang/String;
    const-string v0, "dialogue_message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, messageId:Ljava/lang/String;
    const-string v0, "positive_button_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, positiveButtonText:Ljava/lang/String;
    new-instance v4, Lcom/worklight/wlclient/ui/UIActivity$2;

    invoke-direct {v4, p0, v7}, Lcom/worklight/wlclient/ui/UIActivity$2;-><init>(Lcom/worklight/wlclient/ui/UIActivity;Ljava/lang/String;)V

    .local v4, listener:Landroid/content/DialogInterface$OnClickListener;
    move-object v0, p0

    move-object v6, v5

    .line 153
    invoke-direct/range {v0 .. v6}, Lcom/worklight/wlclient/ui/UIActivity;->createAndShowDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 155
    return-void
.end method

.method private handleRemoteDisableDialogue(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 164
    const-string v0, "dialogue_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, title:Ljava/lang/String;
    const-string v0, "dialogue_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, message:Ljava/lang/String;
    const-string v0, "positive_button_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, positiveButtonText:Ljava/lang/String;
    new-instance v4, Lcom/worklight/wlclient/ui/UIActivity$3;

    invoke-direct {v4, p0}, Lcom/worklight/wlclient/ui/UIActivity$3;-><init>(Lcom/worklight/wlclient/ui/UIActivity;)V

    .line 183
    .local v4, listener:Landroid/content/DialogInterface$OnClickListener;
    const-string v0, "download_link"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, downloadLink:Ljava/lang/String;
    const/4 v5, 0x0

    .line 185
    .local v5, downloadButtonText:Ljava/lang/String;
    const/4 v6, 0x0

    .line 187
    .local v6, downlaodListener:Landroid/content/DialogInterface$OnClickListener;
    if-eqz v7, :cond_0

    .line 189
    const-string v0, "neutral_button_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    new-instance v6, Lcom/worklight/wlclient/ui/UIActivity$4;

    .end local v6           #downlaodListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v6, p0, v7}, Lcom/worklight/wlclient/ui/UIActivity$4;-><init>(Lcom/worklight/wlclient/ui/UIActivity;Ljava/lang/String;)V

    .restart local v6       #downlaodListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    move-object v0, p0

    .line 204
    invoke-direct/range {v0 .. v6}, Lcom/worklight/wlclient/ui/UIActivity;->createAndShowDialogue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 205
    return-void
.end method

.method private openURL(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 213
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 216
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 219
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/ui/UIActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/worklight/wlclient/ui/UIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/worklight/wlclient/ui/UIActivity;->handleDialogue(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
