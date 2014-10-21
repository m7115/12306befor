.class public Lcom/worklight/androidgap/jsonstore/security/Keychain;
.super Ljava/lang/Object;
.source "Keychain.java"


# static fields
.field private static final PREFS_NAME_DPK:Ljava/lang/String; = "dpkPrefs"

.field private static final PREF_NAME_DPK:Ljava/lang/String; = "dpk"


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "dpkPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/Keychain;->prefs:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method

.method private buildTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 66
    const-string v0, "jsonstore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "dpk"

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dpk-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/security/Keychain;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    return-void
.end method

.method public getDPKBean(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/security/DPKBean;
    .locals 4
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v2, p0, Lcom/worklight/androidgap/jsonstore/security/Keychain;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/worklight/androidgap/jsonstore/security/Keychain;->buildTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, dpkJSON:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/worklight/androidgap/jsonstore/security/DPKBean;

    invoke-direct {v1, v0}, Lcom/worklight/androidgap/jsonstore/security/DPKBean;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isDPKAvailable(Ljava/lang/String;)Z
    .locals 3
    .parameter "username"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/security/Keychain;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/worklight/androidgap/jsonstore/security/Keychain;->buildTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDPKBean(Ljava/lang/String;Lcom/worklight/androidgap/jsonstore/security/DPKBean;)V
    .locals 3
    .parameter "username"
    .parameter "dpkBean"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/security/Keychain;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/jsonstore/security/Keychain;->buildTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/worklight/androidgap/jsonstore/security/DPKBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    return-void
.end method
