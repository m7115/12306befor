.class public Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "AnalyticsConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$1;,
        Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;,
        Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;
    }
.end annotation


# static fields
.field private static final CONFIGURATIONUTIL_CLASS:Ljava/lang/String; = "com.tl.uic.util.ConfigurationUtil"

.field private static final CONFIGURATIONUTIL_CLASS_METHOD_GETSTRING:Ljava/lang/String; = "getString"

.field private static final CONFIGURATIONUTIL_CLASS_METHOD_SETPROPERTY:Ljava/lang/String; = "setProperty"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final TEALEAF_CLASS:Ljava/lang/String; = "com.tl.uic.Tealeaf"

.field private static final TEALEAF_CLASS_METHOD_DISABLE:Ljava/lang/String; = "disable"

.field private static final TEALEAF_CLASS_METHOD_ENABLE:Ljava/lang/String; = "enable"

.field private static final TEALEAF_CLASS_METHOD_GETADDITIONALCOOKIE:Ljava/lang/String; = "getAdditionalCookie"

.field private static final TEALEAF_CLASS_METHOD_GETADDITIONALHEADERS:Ljava/lang/String; = "getAdditionalHeaders"

.field private static final TEALEAF_CLASS_METHOD_ISENABLED:Ljava/lang/String; = "isEnabled"

.field private static final TEALEAF_CLASS_METHOD_REQUESTMANUALSERVERPOST:Ljava/lang/String; = "requestManualServerPost"

.field private static final TEALEAF_CLASS_METHOD_SETADDITIONALCOOKIE:Ljava/lang/String; = "setAdditionalCookie"

.field private static final TEALEAF_CLASS_METHOD_SETADDITIONALHEADERS:Ljava/lang/String; = "setAdditionalHeaders"

.field private static final TEALEAF_CONFIGURABLE_ITEMS_KEY_POSTMESSAGEURL:Ljava/lang/String; = "PostMessageUrl"

.field private static final X_WL_TLT_FORWARD_COOKIES_HEADER:Ljava/lang/String; = "x-wl-tlt-forward-cookies"

.field protected static droidGap:Lorg/apache/cordova/DroidGap;

.field protected static prefs:Landroid/content/SharedPreferences;

.field private static wlUEH:Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const-class v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->LOG_TAG:Ljava/lang/String;

    .line 71
    sput-object v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->droidGap:Lorg/apache/cordova/DroidGap;

    .line 72
    sput-object v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->wlUEH:Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;)Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->wlUEH:Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;

    return-object p0
.end method

.method public static setDroidGapObject(Lorg/apache/cordova/DroidGap;)V
    .locals 3
    .parameter "dg"

    .prologue
    .line 362
    sget-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->droidGap:Lorg/apache/cordova/DroidGap;

    if-nez v0, :cond_0

    .line 363
    sput-object p0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->droidGap:Lorg/apache/cordova/DroidGap;

    .line 364
    sget-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->droidGap:Lorg/apache/cordova/DroidGap;

    const-class v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/DroidGap;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    .line 367
    :cond_0
    return-void
.end method


# virtual methods
.method public enable()V
    .locals 4

    .prologue
    .line 404
    sget-object v2, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->enable:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    invoke-virtual {v2}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    move-result-object v0

    .line 406
    .local v0, actionConfigure:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v2}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v1

    .line 409
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Unexpected Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 5
    .parameter "action"
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 372
    :try_start_0
    invoke-static {p1}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    move-result-object v0

    .line 373
    .local v0, actionConfigure:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
    if-nez v0, :cond_0

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 399
    .end local v0           #actionConfigure:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
    :goto_0
    return v2

    .line 379
    .restart local v0       #actionConfigure:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$1;->$SwitchMap$com$worklight$androidgap$plugin$AnalyticsConfigurator$ACTIONS:[I

    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    packed-switch v3, :pswitch_data_0

    .line 394
    :goto_1
    :try_start_2
    invoke-virtual {p3}, Lorg/apache/cordova/api/CallbackContext;->success()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 395
    const/4 v2, 0x1

    goto :goto_0

    .line 383
    :pswitch_0
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v0, p0, v3}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, e:Ljava/net/MalformedURLException;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid URL."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 396
    .end local v0           #actionConfigure:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 397
    .local v1, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed. JSON Error is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #actionConfigure:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
    :pswitch_1
    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isEnabledSharedPref()Z
    .locals 3

    .prologue
    .line 415
    sget-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->ENABLED:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-virtual {v1}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
