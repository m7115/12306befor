.class public Lcom/worklight/common/WLPreferences;
.super Landroid/preference/PreferenceActivity;
.source "WLPreferences.java"


# static fields
.field public static final APP_ID_PREF_KEY:Ljava/lang/String; = "appIdPref"

.field public static final APP_VERSION_PREF_KEY:Ljava/lang/String; = "appVersionPref"

.field public static final EDIT_WL_SERVER_URL_PREF_KEY:Ljava/lang/String; = "editWLServerURLPref"

.field public static final LAST_SETTINGS_URL_STATE_PREF_KEY:Ljava/lang/String; = "lastSettingsUrlStatePref"

.field public static final MODIFY_WL_SERVER_URL_PREF_KEY:Ljava/lang/String; = "resetWLServerURLPref"

.field private static final NEW_APP_ID_PREF_KEY:Ljava/lang/String; = "newAppIdPref"

.field private static final NEW_APP_VERSION_PREF_KEY:Ljava/lang/String; = "newAppVersionPref"

.field private static final NEW_LINE:Ljava/lang/String; = "\n"

.field public static final SHOULD_MODIFY_URL_PREF_KEY:Ljava/lang/String; = "shouldModifyUrlPref"

.field public static final WL_SERVER_URL:Ljava/lang/String; = "WLServerURL"


# instance fields
.field private appIdEditTextPreference:Landroid/preference/EditTextPreference;

.field private appVersionEditTextPreference:Landroid/preference/EditTextPreference;

.field private modifyServerURLCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private serverURLEditTextPreference:Landroid/preference/EditTextPreference;

.field private serverURLafter:Ljava/lang/String;

.field private serverURLbefore:Ljava/lang/String;

.field private wlConfig:Lcom/worklight/common/WLConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->serverURLbefore:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    .line 103
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->modifyServerURLCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 107
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->appIdEditTextPreference:Landroid/preference/EditTextPreference;

    .line 109
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->appVersionEditTextPreference:Landroid/preference/EditTextPreference;

    .line 119
    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->wlConfig:Lcom/worklight/common/WLConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/worklight/common/WLPreferences;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/worklight/common/WLPreferences;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/worklight/common/WLPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/worklight/common/WLPreferences;)Lcom/worklight/common/WLConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->wlConfig:Lcom/worklight/common/WLConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/worklight/common/WLPreferences;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/worklight/common/WLPreferences;->setServerURLFieldSummary()V

    return-void
.end method

.method static synthetic access$400(Lcom/worklight/common/WLPreferences;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->appIdEditTextPreference:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/worklight/common/WLPreferences;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->appVersionEditTextPreference:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private createModifyServerCheckbox()V
    .locals 2

    .prologue
    .line 369
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-direct {v0, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/worklight/common/WLPreferences;->modifyServerURLCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 371
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->modifyServerURLCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const-string v1, "serverAddress"

    invoke-static {v1, p0}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->modifyServerURLCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const-string v1, "changeServerAddress"

    invoke-static {v1, p0}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->modifyServerURLCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const-string v1, "resetWLServerURLPref"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/worklight/common/WLPreferences;->modifyServerURLCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 379
    return-void
.end method

.method private createServerURLTextField()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 329
    const-string v3, "summaryWLServerUrl"

    invoke-static {v3, p0}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, description:Ljava/lang/String;
    new-instance v3, Landroid/preference/EditTextPreference;

    invoke-direct {v3, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    .line 333
    invoke-virtual {p0}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "WLServerURL"

    invoke-static {v3, v5}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLbefore:Ljava/lang/String;

    .line 337
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLbefore:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLbefore:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    :cond_0
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v3}, Lcom/worklight/common/WLConfig;->getRootURL()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLbefore:Ljava/lang/String;

    .line 345
    :cond_1
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    const-string v5, "titleWLServerUrl"

    invoke-static {v5, p0}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    const-string v5, "editWLServerURLPref"

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 349
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    iget-object v5, p0, Lcom/worklight/common/WLPreferences;->serverURLbefore:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p0}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "lastSettingsUrlStatePref"

    invoke-static {v3, v5}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, lastSavedUrl:Ljava/lang/String;
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    if-nez v1, :cond_3

    .end local v0           #description:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p0}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "shouldModifyUrlPref"

    invoke-static {v3, v5}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, modifyCheckState:Ljava/lang/String;
    iget-object v5, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5, v3}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 359
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setPersistent(Z)V

    .line 361
    return-void

    .line 353
    .end local v2           #modifyCheckState:Ljava/lang/String;
    .restart local v0       #description:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local v0           #description:Ljava/lang/String;
    .restart local v2       #modifyCheckState:Ljava/lang/String;
    :cond_4
    move v3, v4

    .line 357
    goto :goto_1
.end method

.method private createTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/EditTextPreference;
    .locals 6
    .parameter "titleKey"
    .parameter "prefKey"
    .parameter "defaultValue"

    .prologue
    .line 453
    new-instance v1, Landroid/preference/EditTextPreference;

    invoke-direct {v1, p0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 455
    .local v1, pref:Landroid/preference/EditTextPreference;
    invoke-static {p1, p0}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 457
    invoke-virtual {p0}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 461
    move-object v3, p3

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2, v3}, Lcom/worklight/common/WLUtils;->writeWLPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 471
    invoke-virtual {v1, p2}, Landroid/preference/EditTextPreference;->setKey(Ljava/lang/String;)V

    .line 473
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setPersistent(Z)V

    .line 481
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 483
    .local v0, displaymetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/worklight/common/WLPreferences;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 487
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 489
    .local v2, screenWidth:I
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    add-int/lit8 v5, v2, -0x14

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setWidth(I)V

    .line 493
    return-object v1
.end method

.method private isUrlChanged()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 417
    iget-object v2, p0, Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;

    if-nez v2, :cond_1

    move v0, v1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/worklight/common/WLPreferences;->serverURLbefore:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 427
    iget-object v2, p0, Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 433
    :cond_2
    iget-object v2, p0, Lcom/worklight/common/WLPreferences;->serverURLbefore:Ljava/lang/String;

    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isWebResourcesChanged()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 501
    iget-object v4, p0, Lcom/worklight/common/WLPreferences;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v4}, Lcom/worklight/common/WLConfig;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "newAppIdPref"

    invoke-static {v5, v6}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 503
    .local v0, appIdChanged:Z
    :goto_0
    iget-object v4, p0, Lcom/worklight/common/WLPreferences;->wlConfig:Lcom/worklight/common/WLConfig;

    invoke-virtual {v4}, Lcom/worklight/common/WLConfig;->getApplicationVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "newAppVersionPref"

    invoke-static {v5, v6}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 505
    .local v1, appVersionChanged:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #appIdChanged:Z
    .end local v1           #appVersionChanged:Z
    :cond_2
    move v0, v3

    .line 501
    goto :goto_0

    .restart local v0       #appIdChanged:Z
    :cond_3
    move v1, v3

    .line 503
    goto :goto_1
.end method

.method private setServerURLFieldSummary()V
    .locals 4

    .prologue
    .line 385
    iget-object v1, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 387
    .local v0, summary:Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLbefore:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 409
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 515
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 520
    .local v0, settings:Landroid/content/Intent;
    const-string v1, "isServerURLChanged"

    invoke-direct {p0}, Lcom/worklight/common/WLPreferences;->isUrlChanged()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    const-string v1, "serverURL"

    iget-object v2, p0, Lcom/worklight/common/WLPreferences;->serverURLafter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const-string v1, "isWebResourcesChanged"

    invoke-direct {p0}, Lcom/worklight/common/WLPreferences;->isWebResourcesChanged()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 528
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/worklight/common/WLPreferences;->setResult(ILandroid/content/Intent;)V

    .line 530
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 532
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    new-instance v3, Lcom/worklight/common/WLConfig;

    invoke-virtual {p0}, Lcom/worklight/common/WLPreferences;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/worklight/common/WLConfig;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/worklight/common/WLPreferences;->wlConfig:Lcom/worklight/common/WLConfig;

    .line 131
    invoke-virtual {p0}, Lcom/worklight/common/WLPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 137
    .local v1, root:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, networkSettingsCategory:Landroid/preference/PreferenceCategory;
    const-string v3, "networkSettingsTitleWLServerUrl"

    invoke-static {v3, p0}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 145
    invoke-virtual {p0}, Lcom/worklight/common/WLPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "WLServerURL"

    invoke-static {v3, v4}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLbefore:Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Lcom/worklight/common/WLPreferences;->createModifyServerCheckbox()V

    .line 153
    invoke-direct {p0}, Lcom/worklight/common/WLPreferences;->createServerURLTextField()V

    .line 157
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->modifyServerURLCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 159
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 165
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 167
    .local v2, webResourcesCategory:Landroid/preference/PreferenceCategory;
    const-string v3, "wlWebResourcesCategory"

    invoke-static {v3, p0}, Lcom/worklight/common/WLUtils;->getResourceString(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 171
    const-string v3, "wlAppIdTitle"

    const-string v4, "newAppIdPref"

    invoke-static {}, Lcom/worklight/androidgap/WLDroidGap;->getWLConfig()Lcom/worklight/common/WLConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/worklight/common/WLConfig;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/worklight/common/WLPreferences;->createTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/EditTextPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/worklight/common/WLPreferences;->appIdEditTextPreference:Landroid/preference/EditTextPreference;

    .line 173
    const-string v3, "wlAppVersionTitle"

    const-string v4, "newAppVersionPref"

    const-string v5, "1.0"

    invoke-direct {p0, v3, v4, v5}, Lcom/worklight/common/WLPreferences;->createTextField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/EditTextPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/worklight/common/WLPreferences;->appVersionEditTextPreference:Landroid/preference/EditTextPreference;

    .line 177
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->appIdEditTextPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 179
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->appVersionEditTextPreference:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 183
    invoke-virtual {p0, v1}, Lcom/worklight/common/WLPreferences;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 187
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->modifyServerURLCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    new-instance v4, Lcom/worklight/common/WLPreferences$1;

    invoke-direct {v4, p0}, Lcom/worklight/common/WLPreferences$1;-><init>(Lcom/worklight/common/WLPreferences;)V

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 225
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->serverURLEditTextPreference:Landroid/preference/EditTextPreference;

    new-instance v4, Lcom/worklight/common/WLPreferences$2;

    invoke-direct {v4, p0}, Lcom/worklight/common/WLPreferences$2;-><init>(Lcom/worklight/common/WLPreferences;)V

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->appIdEditTextPreference:Landroid/preference/EditTextPreference;

    new-instance v4, Lcom/worklight/common/WLPreferences$3;

    invoke-direct {v4, p0}, Lcom/worklight/common/WLPreferences$3;-><init>(Lcom/worklight/common/WLPreferences;)V

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 295
    iget-object v3, p0, Lcom/worklight/common/WLPreferences;->appVersionEditTextPreference:Landroid/preference/EditTextPreference;

    new-instance v4, Lcom/worklight/common/WLPreferences$4;

    invoke-direct {v4, p0}, Lcom/worklight/common/WLPreferences$4;-><init>(Lcom/worklight/common/WLPreferences;)V

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 313
    return-void
.end method
