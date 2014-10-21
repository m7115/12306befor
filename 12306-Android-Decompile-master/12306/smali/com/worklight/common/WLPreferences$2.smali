.class Lcom/worklight/common/WLPreferences$2;
.super Ljava/lang/Object;
.source "WLPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/common/WLPreferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/common/WLPreferences;


# direct methods
.method constructor <init>(Lcom/worklight/common/WLPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 231
    iget-object v1, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    check-cast p2, Ljava/lang/String;

    .end local p2
    #setter for: Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/worklight/common/WLPreferences;->access$102(Lcom/worklight/common/WLPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    #getter for: Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;
    invoke-static {v2}, Lcom/worklight/common/WLPreferences;->access$100(Lcom/worklight/common/WLPreferences;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    iget-object v1, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-virtual {v1}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "WLServerURL"

    iget-object v3, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    #getter for: Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;
    invoke-static {v3}, Lcom/worklight/common/WLPreferences;->access$100(Lcom/worklight/common/WLPreferences;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-virtual {v1}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "lastSettingsUrlStatePref"

    iget-object v3, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    #getter for: Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;
    invoke-static {v3}, Lcom/worklight/common/WLPreferences;->access$100(Lcom/worklight/common/WLPreferences;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    #calls: Lcom/worklight/common/WLPreferences;->setServerURLFieldSummary()V
    invoke-static {v1}, Lcom/worklight/common/WLPreferences;->access$300(Lcom/worklight/common/WLPreferences;)V

    .line 267
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 239
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "titleInvalidWLServerUrl"

    iget-object v3, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-static {v2, v3}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    #getter for: Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;
    invoke-static {v3}, Lcom/worklight/common/WLPreferences;->access$100(Lcom/worklight/common/WLPreferences;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "errorInvalidWLServerUrl"

    iget-object v4, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-static {v3, v4}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OKTitleWLServerUrl"

    iget-object v3, p0, Lcom/worklight/common/WLPreferences$2;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-static {v2, v3}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/worklight/common/WLPreferences$2$1;

    invoke-direct {v3, p0}, Lcom/worklight/common/WLPreferences$2$1;-><init>(Lcom/worklight/common/WLPreferences$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 257
    const/4 v1, 0x0

    goto :goto_0
.end method
