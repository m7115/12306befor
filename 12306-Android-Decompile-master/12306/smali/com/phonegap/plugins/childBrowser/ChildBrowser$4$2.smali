.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$2;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$2;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 352
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 353
    .local v1, obj:Lorg/json/JSONObject;
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$11(I)V

    .line 354
    const-string v2, "type"

    invoke-static {}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$7()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    iget-object v2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$2;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    invoke-static {v2}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V
    invoke-static {v2, v1, v3}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$1(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v1           #obj:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ChildBrowser"

    const-string v3, "Should never happen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
