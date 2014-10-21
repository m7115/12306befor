.class public Lcom/worklight/androidgap/analytics/WLAnalytics;
.super Ljava/lang/Object;
.source "WLAnalytics.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final TEALEAF_CLASS:Ljava/lang/String; = "com.tl.uic.Tealeaf"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/worklight/androidgap/analytics/WLAnalytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/analytics/WLAnalytics;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeTealeaf(Lcom/worklight/androidgap/WLDroidGap;)V
    .locals 10
    .parameter "gapObj"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->setDroidGapObject(Lorg/apache/cordova/DroidGap;)V

    .line 32
    new-instance v6, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;

    invoke-direct {v6}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;-><init>()V

    .line 40
    .local v6, tlf_configurator:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;
    :try_start_0
    const-string v7, "com.tl.uic.Tealeaf"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 41
    .local v1, tlClass:Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/worklight/androidgap/WLDroidGap;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 42
    .local v3, tlCons:Ljava/lang/reflect/Constructor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/worklight/androidgap/WLDroidGap;->getApplication()Landroid/app/Application;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 49
    .local v5, tlObj:Ljava/lang/Object;
    const-string v7, "com.tl.uic.javascript.JavaScriptInterface"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 50
    .local v2, tlClassJS:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 51
    .local v4, tlConsJS:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Lcom/worklight/androidgap/WLDroidGap;->getCurrentFocus()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lorg/apache/cordova/CordovaWebView;

    check-cast v7, Lorg/apache/cordova/CordovaWebView;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "tlBridge"

    invoke-virtual {v7, v8, v9}, Lorg/apache/cordova/CordovaWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v6}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->isEnabledSharedPref()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 54
    invoke-virtual {v6}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->enable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1           #tlClass:Ljava/lang/Class;
    .end local v2           #tlClassJS:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #tlCons:Ljava/lang/reflect/Constructor;
    .end local v4           #tlConsJS:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v5           #tlObj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    sget-object v7, Lcom/worklight/androidgap/analytics/WLAnalytics;->LOG_TAG:Ljava/lang/String;

    const-string v8, "TLF_configurator.enable was called, but the required Tealeaf libraries are not present in the classpath."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
