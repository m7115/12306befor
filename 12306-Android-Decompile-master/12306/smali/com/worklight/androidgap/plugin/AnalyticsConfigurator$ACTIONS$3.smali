.class final enum Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$3;
.super Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
.source "AnalyticsConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;-><init>(Ljava/lang/String;ILcom/worklight/androidgap/plugin/AnalyticsConfigurator$1;)V

    return-void
.end method


# virtual methods
.method public doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    .locals 18
    .parameter "configurator"
    .parameter "value"

    .prologue
    .line 250
    const/4 v3, 0x0

    .line 252
    .local v3, enable:Z
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    sget-object v13, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    sget-object v14, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->TEALEAF_PROPS:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-virtual {v14}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "{}"

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 253
    .local v7, tealeafPrefs:Lorg/json/JSONObject;
    const-string v13, "com.tl.uic.util.ConfigurationUtil"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v14, "setProperty"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 254
    .local v11, tlMethodSet:Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 256
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    new-instance v12, Lcom/worklight/common/WLConfig;

    sget-object v13, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->droidGap:Lorg/apache/cordova/DroidGap;

    invoke-virtual {v13}, Lorg/apache/cordova/DroidGap;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/worklight/common/WLConfig;-><init>(Landroid/content/Context;)V

    .line 259
    .local v12, wlConfig:Lcom/worklight/common/WLConfig;
    const/4 v6, 0x0

    .line 262
    .local v6, postMessageUrl:Ljava/lang/String;
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 264
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 265
    .local v5, key:Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v15, v13

    const/16 v16, 0x1

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v15, v16

    invoke-virtual {v11, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v13, "PostMessageUrl"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 267
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #postMessageUrl:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6       #postMessageUrl:Ljava/lang/String;
    goto :goto_0

    .line 270
    .end local v5           #key:Ljava/lang/String;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    if-nez v6, :cond_3

    .line 274
    :try_start_2
    const-string v13, "com.tl.uic.util.ConfigurationUtil"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getString"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Ljava/lang/String;

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 275
    .local v10, tlMethodGet:Ljava/lang/reflect/Method;
    const/4 v14, 0x0

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v13, "com.tl.uic.Tealeaf"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v17, "TLF_POST_MESSAGE_URL"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v15, v16

    invoke-virtual {v10, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #postMessageUrl:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 277
    .restart local v6       #postMessageUrl:Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v13, "@USE_WORKLIGHT_DEFAULT@"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 279
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/worklight/common/WLConfig;->getAppURL()Ljava/net/URL;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/analytics"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 281
    :cond_2
    const-string v13, "PostMessageUrl"

    invoke-virtual {v7, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    sget-object v13, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    sget-object v14, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->TEALEAF_PROPS:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-virtual {v14}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    const/4 v14, 0x0

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v13, "com.tl.uic.Tealeaf"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v17, "TLF_POST_MESSAGE_URL"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v15, v16

    const/4 v13, 0x1

    aput-object v6, v15, v13

    invoke-virtual {v11, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .end local v10           #tlMethodGet:Ljava/lang/reflect/Method;
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 290
    .local v1, defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;
    const-string v13, "com.tl.uic.Tealeaf"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 291
    .local v8, tlClass:Ljava/lang/Class;
    const-string v13, "isEnabled"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v8, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 292
    .local v9, tlIsEnabled:Z
    if-nez v9, :cond_4

    .line 293
    const-string v13, "enable"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v8, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 298
    new-instance v13, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;

    invoke-direct {v13, v12}, Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;-><init>(Lcom/worklight/common/WLConfig;)V

    invoke-static {v13}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->access$202(Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;)Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;

    .line 299
    invoke-static {}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->access$200()Lcom/worklight/androidgap/analytics/AnalyticsUncaughtExceptionHandler;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 303
    :cond_4
    const/4 v3, 0x1

    .line 308
    .end local v1           #defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v6           #postMessageUrl:Ljava/lang/String;
    .end local v7           #tealeafPrefs:Lorg/json/JSONObject;
    .end local v8           #tlClass:Ljava/lang/Class;
    .end local v9           #tlIsEnabled:Z
    .end local v11           #tlMethodSet:Ljava/lang/reflect/Method;
    .end local v12           #wlConfig:Lcom/worklight/common/WLConfig;
    :goto_1
    sget-object v13, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    sget-object v14, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->ENABLED:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-virtual {v14}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    return-void

    .line 270
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v7       #tealeafPrefs:Lorg/json/JSONObject;
    .restart local v11       #tlMethodSet:Ljava/lang/reflect/Method;
    .restart local v12       #wlConfig:Lcom/worklight/common/WLConfig;
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 304
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v7           #tealeafPrefs:Lorg/json/JSONObject;
    .end local v11           #tlMethodSet:Ljava/lang/reflect/Method;
    .end local v12           #wlConfig:Lcom/worklight/common/WLConfig;
    :catch_0
    move-exception v2

    .line 306
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->access$100()Ljava/lang/String;

    move-result-object v13

    const-string v14, "enable was called, but the required Tealeaf libraries are not present in the classpath."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
