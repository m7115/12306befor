.class public Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "ForegroundBinderPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$2;,
        Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WLForegroundBinder"


# instance fields
.field private ctx:Landroid/content/Context;

.field private notificationIdentifier:Ljava/lang/Integer;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->cancelNotification()V

    return-void
.end method

.method static synthetic access$102(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private bindService(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 18
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 98
    const-string v1, "WLForegroundBinder"

    const-string v2, "trying to bind service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v15, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 102
    .local v10, appCtx:Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ForegroundService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v10, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "already bound to service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, appDisplayName:Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, popupText:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, titleText:Ljava/lang/String;
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, explainText:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 114
    .local v14, iconFieldName:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    .line 115
    .local v8, notificationId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 118
    .local v9, activityClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    .line 119
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 125
    :cond_1
    :goto_1
    move-object v5, v9

    .line 128
    .local v5, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const v13, 0x108004b

    .line 130
    .local v13, icon:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->notificationIdentifier:Ljava/lang/Integer;

    .line 132
    :try_start_1
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v14, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v13

    .line 137
    :goto_2
    move v3, v13

    .line 140
    .local v3, iconId:I
    :try_start_2
    new-instance v1, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$1;-><init>(Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x1

    invoke-virtual {v10, v15, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v16

    .line 168
    .local v16, successful:Z
    if-eqz v16, :cond_2

    .line 169
    invoke-virtual/range {p2 .. p2}, Lorg/apache/cordova/api/CallbackContext;->success()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 173
    .end local v16           #successful:Z
    :catch_0
    move-exception v12

    .line 174
    .local v12, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not bind to foreground service, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    .end local v3           #iconId:I
    .end local v5           #activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v12           #e:Ljava/lang/Exception;
    .end local v13           #icon:I
    :catch_1
    move-exception v12

    .line 121
    .local v12, e:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Using default."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 133
    .end local v12           #e:Ljava/lang/ClassNotFoundException;
    .restart local v5       #activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v13       #icon:I
    :catch_2
    move-exception v12

    .line 134
    .local v12, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Icon not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 171
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v3       #iconId:I
    .restart local v16       #successful:Z
    :cond_2
    :try_start_3
    const-string v1, "Could not bind to foreground service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private cancelNotification()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->notificationIdentifier:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->ctx:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->notificationIdentifier:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->notificationIdentifier:Ljava/lang/Integer;

    .line 183
    return-void
.end method

.method private static toAllCaps(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "camelcase"

    .prologue
    .line 55
    const-string v1, "[A-Z]?[a-z]*"

    .line 56
    .local v1, pattern:Ljava/lang/String;
    const-string v3, "[A-Z]?[a-z]*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 57
    .local v0, m:Ljava/util/regex/Matcher;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v2, sb:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private unbindService(Lorg/apache/cordova/api/CallbackContext;)V
    .locals 2
    .parameter "callbackContext"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 189
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->cancelNotification()V

    .line 190
    invoke-virtual {p1}, Lorg/apache/cordova/api/CallbackContext;->success()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->serviceConnection:Landroid/content/ServiceConnection;

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string v0, "no connection to service exists"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
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

    .line 79
    const-string v3, "WLForegroundBinder"

    const-string v4, "execute called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->ctx:Landroid/content/Context;

    .line 82
    :try_start_0
    invoke-static {p1}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->toAllCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;->valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

    move-result-object v0

    .line 83
    .local v0, act:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;
    sget-object v3, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$2;->$SwitchMap$com$worklight$androidgap$plugin$ForegroundBinderPlugin$Action:[I

    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 93
    .end local v0           #act:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;
    :goto_0
    return v2

    .line 85
    .restart local v0       #act:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->bindService(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)V

    .line 86
    const/4 v2, 0x1

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->unbindService(Lorg/apache/cordova/api/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v0           #act:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;->cancelNotification()V

    .line 72
    return-void
.end method
