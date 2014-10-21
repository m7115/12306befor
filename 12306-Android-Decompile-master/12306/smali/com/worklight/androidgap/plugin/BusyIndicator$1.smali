.class Lcom/worklight/androidgap/plugin/BusyIndicator$1;
.super Ljava/lang/Object;
.source "BusyIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/BusyIndicator;->show(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/BusyIndicator;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/plugin/BusyIndicator;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/BusyIndicator;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/BusyIndicator;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/BusyIndicator;

    iget-object v2, v2, Lcom/worklight/androidgap/plugin/BusyIndicator;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/worklight/androidgap/plugin/BusyIndicator;->access$002(Lcom/worklight/androidgap/plugin/BusyIndicator;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 44
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/BusyIndicator;

    #getter for: Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/BusyIndicator;->access$000(Lcom/worklight/androidgap/plugin/BusyIndicator;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 45
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/BusyIndicator;

    #getter for: Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/BusyIndicator;->access$000(Lcom/worklight/androidgap/plugin/BusyIndicator;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 46
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/BusyIndicator;

    #getter for: Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/BusyIndicator;->access$000(Lcom/worklight/androidgap/plugin/BusyIndicator;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 47
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/BusyIndicator;

    #getter for: Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/BusyIndicator;->access$000(Lcom/worklight/androidgap/plugin/BusyIndicator;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->val$text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/BusyIndicator;

    #getter for: Lcom/worklight/androidgap/plugin/BusyIndicator;->spinnerDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/worklight/androidgap/plugin/BusyIndicator;->access$000(Lcom/worklight/androidgap/plugin/BusyIndicator;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 49
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/BusyIndicator$1;->this$0:Lcom/worklight/androidgap/plugin/BusyIndicator;

    #setter for: Lcom/worklight/androidgap/plugin/BusyIndicator;->isShowing:Z
    invoke-static {v0, v4}, Lcom/worklight/androidgap/plugin/BusyIndicator;->access$102(Lcom/worklight/androidgap/plugin/BusyIndicator;Z)Z

    .line 50
    return-void
.end method
