.class public final Lcom/worklight/utils/WLAlertDialog;
.super Ljava/lang/Object;
.source "WLAlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final exitListener:Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private clickListener:Landroid/content/DialogInterface$OnClickListener;

.field private message:Ljava/lang/String;

.field private positiveButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/worklight/utils/WLAlertDialog$1;

    invoke-direct {v0}, Lcom/worklight/utils/WLAlertDialog$1;-><init>()V

    sput-object v0, Lcom/worklight/utils/WLAlertDialog;->exitListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "message"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "WLClient.close"

    invoke-direct {p0, p1, p2, v0}, Lcom/worklight/utils/WLAlertDialog;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "message"
    .parameter "positiveButtonText"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/utils/WLAlertDialog;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"
    .parameter "positiveButtonText"

    .prologue
    .line 47
    :try_start_0
    const-string v2, "com/worklight/wlclient/messages"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 49
    .local v0, bundle:Ljava/util/ResourceBundle;
    if-eqz p1, :cond_0

    .line 51
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/worklight/utils/WLAlertDialog;->title:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    :try_start_2
    iget-object v2, p0, Lcom/worklight/utils/WLAlertDialog;->title:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 55
    iput-object p1, p0, Lcom/worklight/utils/WLAlertDialog;->title:Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    .line 60
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 62
    :try_start_3
    invoke-virtual {v0, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/worklight/utils/WLAlertDialog;->message:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    .line 65
    :try_start_4
    iget-object v2, p0, Lcom/worklight/utils/WLAlertDialog;->message:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 66
    iput-object p2, p0, Lcom/worklight/utils/WLAlertDialog;->message:Ljava/lang/String;
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_1

    .line 72
    :cond_1
    :goto_1
    :try_start_5
    invoke-virtual {v0, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/worklight/utils/WLAlertDialog;->positiveButtonText:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_5} :catch_3

    .line 75
    :try_start_6
    iget-object v2, p0, Lcom/worklight/utils/WLAlertDialog;->positiveButtonText:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 76
    iput-object p3, p0, Lcom/worklight/utils/WLAlertDialog;->positiveButtonText:Ljava/lang/String;

    .line 83
    .end local v0           #bundle:Ljava/util/ResourceBundle;
    :cond_2
    :goto_2
    return-void

    .line 52
    .restart local v0       #bundle:Ljava/util/ResourceBundle;
    :catch_0
    move-exception v2

    .line 54
    iget-object v2, p0, Lcom/worklight/utils/WLAlertDialog;->title:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 55
    iput-object p1, p0, Lcom/worklight/utils/WLAlertDialog;->title:Ljava/lang/String;
    :try_end_6
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 80
    .end local v0           #bundle:Ljava/util/ResourceBundle;
    :catch_1
    move-exception v1

    .line 81
    .local v1, e:Ljava/util/MissingResourceException;
    invoke-virtual {v1}, Ljava/util/MissingResourceException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 54
    .end local v1           #e:Ljava/util/MissingResourceException;
    .restart local v0       #bundle:Ljava/util/ResourceBundle;
    :catchall_0
    move-exception v2

    :try_start_7
    iget-object v3, p0, Lcom/worklight/utils/WLAlertDialog;->title:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 55
    iput-object p1, p0, Lcom/worklight/utils/WLAlertDialog;->title:Ljava/lang/String;

    :cond_3
    throw v2

    .line 63
    :catch_2
    move-exception v2

    .line 65
    iget-object v2, p0, Lcom/worklight/utils/WLAlertDialog;->message:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 66
    iput-object p2, p0, Lcom/worklight/utils/WLAlertDialog;->message:Ljava/lang/String;

    goto :goto_1

    .line 65
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/worklight/utils/WLAlertDialog;->message:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 66
    iput-object p2, p0, Lcom/worklight/utils/WLAlertDialog;->message:Ljava/lang/String;

    :cond_4
    throw v2

    .line 73
    :catch_3
    move-exception v2

    .line 75
    iget-object v2, p0, Lcom/worklight/utils/WLAlertDialog;->positiveButtonText:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 76
    iput-object p3, p0, Lcom/worklight/utils/WLAlertDialog;->positiveButtonText:Ljava/lang/String;

    goto :goto_2

    .line 75
    :catchall_2
    move-exception v2

    iget-object v3, p0, Lcom/worklight/utils/WLAlertDialog;->positiveButtonText:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 76
    iput-object p3, p0, Lcom/worklight/utils/WLAlertDialog;->positiveButtonText:Ljava/lang/String;

    :cond_5
    throw v2
    :try_end_7
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_7} :catch_1
.end method


# virtual methods
.method public getClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/worklight/utils/WLAlertDialog;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/worklight/utils/WLAlertDialog;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/worklight/utils/WLAlertDialog;->positiveButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/worklight/utils/WLAlertDialog;->title:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 102
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/worklight/wlclient/api/WLClient;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 103
    .local v1, context:Landroid/app/Activity;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/worklight/utils/WLAlertDialog;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 106
    iget-object v2, p0, Lcom/worklight/utils/WLAlertDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    iget-object v2, p0, Lcom/worklight/utils/WLAlertDialog;->positiveButtonText:Ljava/lang/String;

    iget-object v3, p0, Lcom/worklight/utils/WLAlertDialog;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 109
    return-void
.end method

.method public setClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "_clickListener"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/worklight/utils/WLAlertDialog;->clickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/worklight/utils/WLAlertDialog;->message:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0
    .parameter "_positiveButtonText"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/worklight/utils/WLAlertDialog;->positiveButtonText:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/worklight/utils/WLAlertDialog;->title:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lcom/worklight/wlclient/api/WLClient;->getInstance()Lcom/worklight/wlclient/api/WLClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/worklight/wlclient/api/WLClient;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 89
    .local v0, context:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 98
    .end local v0           #context:Landroid/app/Activity;
    :goto_0
    return-void

    .line 93
    .restart local v0       #context:Landroid/app/Activity;
    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v0           #context:Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
