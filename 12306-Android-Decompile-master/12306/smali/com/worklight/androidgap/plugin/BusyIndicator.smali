.class public Lcom/worklight/androidgap/plugin/BusyIndicator;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "BusyIndicator.java"


# static fields
.field public static final ACTION_HIDE:Ljava/lang/String; = "hide"

.field public static final ACTION_SHOW:Ljava/lang/String; = "show"


# instance fields
.field private isShowing:Z

.field private spinnerDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->isShowing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/worklight/androidgap/plugin/BusyIndicator;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/worklight/androidgap/plugin/BusyIndicator;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/worklight/androidgap/plugin/BusyIndicator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->isShowing:Z

    return p1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 4
    .parameter "action"
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 66
    :try_start_0
    const-string v1, "show"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/worklight/androidgap/plugin/BusyIndicator;->show(Ljava/lang/String;)V

    .line 68
    const-string v1, "true"

    invoke-virtual {p3, v1}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V

    .line 80
    :goto_0
    return v3

    .line 70
    :cond_0
    const-string v1, "hide"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/worklight/androidgap/plugin/BusyIndicator;->hide()V

    .line 72
    const-string v1, "true"

    invoke-virtual {p3, v1}, Lorg/apache/cordova/api/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed. JSON Error is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->isShowing:Z

    .line 61
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->isShowing:Z

    return v0
.end method

.method public show(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 41
    :cond_0
    new-instance v0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;

    invoke-direct {v0, p0, p1}, Lcom/worklight/androidgap/plugin/BusyIndicator$1;-><init>(Lcom/worklight/androidgap/plugin/BusyIndicator;Ljava/lang/String;)V

    .line 52
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/BusyIndicator;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method
