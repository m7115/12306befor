.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$4;
.super Landroid/webkit/WebChromeClient;
.source "ChildBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;


# direct methods
.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$4;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;

    .line 411
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "title"

    .prologue
    .line 414
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/epayPage/epay?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    const-string v2, "childbrowser"

    const-string v3, "payment done /epayPage/epay"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 418
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 419
    .local v1, obj:Lorg/json/JSONObject;
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$11(I)V

    .line 420
    const-string v2, "type"

    invoke-static {}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$8()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 421
    iget-object v2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$4;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    invoke-static {v2}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V
    invoke-static {v2, v1, v3}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$1(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v1           #obj:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ChildBrowser"

    const-string v3, "Should never happen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
