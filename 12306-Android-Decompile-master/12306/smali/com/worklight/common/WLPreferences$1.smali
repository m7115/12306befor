.class Lcom/worklight/common/WLPreferences$1;
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
    .line 187
    iput-object p1, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 193
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 195
    .local v0, allowModifyURL:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-virtual {v1}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "shouldModifyUrlPref"

    const-string v3, "true"

    invoke-static {v1, v2, v3}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    #getter for: Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/worklight/common/WLPreferences;->access$000(Lcom/worklight/common/WLPreferences;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 201
    iget-object v1, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    iget-object v2, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    #getter for: Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/worklight/common/WLPreferences;->access$000(Lcom/worklight/common/WLPreferences;)Landroid/preference/EditTextPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/worklight/common/WLPreferences;->access$102(Lcom/worklight/common/WLPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-virtual {v1}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "WLServerURL"

    iget-object v3, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    #getter for: Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;
    invoke-static {v3}, Lcom/worklight/common/WLPreferences;->access$100(Lcom/worklight/common/WLPreferences;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    return v4

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-virtual {v1}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "shouldModifyUrlPref"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    iget-object v2, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    #getter for: Lcom/worklight/common/WLPreferences;->wlConfig:Lcom/worklight/common/WLConfig;
    invoke-static {v2}, Lcom/worklight/common/WLPreferences;->access$200(Lcom/worklight/common/WLPreferences;)Lcom/worklight/common/WLConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/worklight/common/WLConfig;->getRootURL()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/worklight/common/WLPreferences;->access$102(Lcom/worklight/common/WLPreferences;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    invoke-virtual {v1}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "WLServerURL"

    iget-object v3, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    #getter for: Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;
    invoke-static {v3}, Lcom/worklight/common/WLPreferences;->access$100(Lcom/worklight/common/WLPreferences;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/worklight/common/WLPreferences$1;->this$0:Lcom/worklight/common/WLPreferences;

    #getter for: Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/worklight/common/WLPreferences;->access$000(Lcom/worklight/common/WLPreferences;)Landroid/preference/EditTextPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_0
.end method
