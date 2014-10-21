.class public Lcom/worklight/androidgap/plugin/MyBusyIndicator;
.super Lcom/worklight/androidgap/plugin/BusyIndicator;
.source "MyBusyIndicator.java"


# instance fields
.field private isShowing:Z

.field private spinnerDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/BusyIndicator;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->isShowing:Z

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/worklight/androidgap/plugin/MyBusyIndicator;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/worklight/androidgap/plugin/MyBusyIndicator;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/worklight/androidgap/plugin/MyBusyIndicator;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->isShowing:Z

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->isShowing:Z

    .line 67
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->isShowing:Z

    return v0
.end method

.method public show(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 32
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 36
    :cond_0
    new-instance v0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;

    invoke-direct {v0, p0, p1}, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;-><init>(Lcom/worklight/androidgap/plugin/MyBusyIndicator;Ljava/lang/String;)V

    .line 57
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method
