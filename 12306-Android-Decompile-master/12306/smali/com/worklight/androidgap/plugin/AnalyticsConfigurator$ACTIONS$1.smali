.class final enum Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$1;
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
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;-><init>(Ljava/lang/String;ILcom/worklight/androidgap/plugin/AnalyticsConfigurator$1;)V

    return-void
.end method


# virtual methods
.method public doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    .locals 15
    .parameter "configurator"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 91
    .local v2, ex:Ljava/lang/Exception;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    .local v6, passedPrefs:Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONObject;

    sget-object v10, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    sget-object v11, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->TEALEAF_PROPS:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-virtual {v11}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "{}"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    .local v7, tealeafPrefs:Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 98
    .local v4, itCompare:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 99
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 100
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .local v5, key:Ljava/lang/String;
    const/4 v9, 0x0

    .line 103
    .local v9, val:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v9, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6

    .line 107
    :goto_1
    if-eqz v9, :cond_0

    :try_start_3
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 109
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #val:Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    .line 152
    .end local v4           #itCompare:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v6           #passedPrefs:Lorg/json/JSONObject;
    .end local v7           #tealeafPrefs:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/ClassNotFoundException;
    move-object v2, v1

    .line 163
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 164
    invoke-static {}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->access$100()Ljava/lang/String;

    move-result-object v10

    const-string v11, "configureTealeaf was called, but the required Tealeaf libraries are not present on the classpath."

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :cond_2
    return-void

    .line 112
    .restart local v4       #itCompare:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v6       #passedPrefs:Lorg/json/JSONObject;
    .restart local v7       #tealeafPrefs:Lorg/json/JSONObject;
    :cond_3
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 114
    :try_start_6
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v10

    if-eqz v10, :cond_2

    .line 121
    :try_start_7
    sget-object v10, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$1;->disable:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    invoke-virtual {v10}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4

    .line 127
    :goto_3
    :try_start_8
    const-string v10, "com.tl.uic.util.ConfigurationUtil"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "setProperty"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 128
    .local v8, tlMethod:Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 130
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    monitor-enter v3
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_4

    .line 131
    :goto_4
    :try_start_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 133
    .restart local v5       #key:Ljava/lang/String;
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 134
    .restart local v9       #val:Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v7, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 137
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #val:Ljava/lang/String;
    :catchall_1
    move-exception v10

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v10
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_4

    .line 154
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v4           #itCompare:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v6           #passedPrefs:Lorg/json/JSONObject;
    .end local v7           #tealeafPrefs:Lorg/json/JSONObject;
    .end local v8           #tlMethod:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 155
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    move-object v2, v1

    .line 160
    goto :goto_2

    .line 137
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v4       #itCompare:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v6       #passedPrefs:Lorg/json/JSONObject;
    .restart local v7       #tealeafPrefs:Lorg/json/JSONObject;
    .restart local v8       #tlMethod:Ljava/lang/reflect/Method;
    :cond_4
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 139
    :try_start_c
    sget-object v10, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    sget-object v11, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->TEALEAF_PROPS:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-virtual {v11}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    sget-object v10, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    sget-object v11, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->ENABLED:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-virtual {v11}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_4

    move-result v10

    if-eqz v10, :cond_1

    .line 145
    :try_start_d
    sget-object v10, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$1;->enable:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    invoke-virtual {v10}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_2

    .line 147
    :catch_2
    move-exception v10

    goto/16 :goto_2

    .line 156
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v4           #itCompare:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v6           #passedPrefs:Lorg/json/JSONObject;
    .end local v7           #tealeafPrefs:Lorg/json/JSONObject;
    .end local v8           #tlMethod:Ljava/lang/reflect/Method;
    :catch_3
    move-exception v1

    .line 157
    .local v1, e:Ljava/lang/NoSuchMethodException;
    move-object v2, v1

    .line 160
    goto/16 :goto_2

    .line 158
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 159
    .local v1, e:Ljava/lang/IllegalAccessException;
    move-object v2, v1

    goto/16 :goto_2

    .line 123
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .restart local v4       #itCompare:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v6       #passedPrefs:Lorg/json/JSONObject;
    .restart local v7       #tealeafPrefs:Lorg/json/JSONObject;
    :catch_5
    move-exception v10

    goto/16 :goto_3

    .line 104
    .restart local v5       #key:Ljava/lang/String;
    .restart local v9       #val:Ljava/lang/String;
    :catch_6
    move-exception v10

    goto/16 :goto_1
.end method
