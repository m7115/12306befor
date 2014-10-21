.class Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;
.super Ljava/lang/Object;
.source "MyBusyIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/MyBusyIndicator;->show(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/MyBusyIndicator;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/plugin/MyBusyIndicator;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/MyBusyIndicator;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->val$text:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 38
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/MyBusyIndicator;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/MyBusyIndicator;

    iget-object v2, v2, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->access$0(Lcom/worklight/androidgap/plugin/MyBusyIndicator;Landroid/app/ProgressDialog;)V

    .line 39
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/MyBusyIndicator;

    #getter for: Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->access$1(Lcom/worklight/androidgap/plugin/MyBusyIndicator;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 40
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/MyBusyIndicator;

    #getter for: Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->access$1(Lcom/worklight/androidgap/plugin/MyBusyIndicator;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/MyBusyIndicator;

    #getter for: Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->access$1(Lcom/worklight/androidgap/plugin/MyBusyIndicator;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 52
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/MyBusyIndicator;

    #getter for: Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->access$1(Lcom/worklight/androidgap/plugin/MyBusyIndicator;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->val$text:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/MyBusyIndicator;

    #getter for: Lcom/worklight/androidgap/plugin/MyBusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->access$1(Lcom/worklight/androidgap/plugin/MyBusyIndicator;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 54
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/MyBusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/MyBusyIndicator;

    #setter for: Lcom/worklight/androidgap/plugin/MyBusyIndicator;->isShowing:Z
    invoke-static {v0, v3}, Lcom/worklight/androidgap/plugin/MyBusyIndicator;->access$2(Lcom/worklight/androidgap/plugin/MyBusyIndicator;Z)V

    .line 55
    return-void
.end method
