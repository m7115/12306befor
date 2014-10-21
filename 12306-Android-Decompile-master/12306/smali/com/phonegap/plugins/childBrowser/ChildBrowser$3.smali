.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$3;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser;->updateDialog(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$3;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iput-object p2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$3;->val$msg:Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$3;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$3(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$3;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method
