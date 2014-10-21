.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;


# direct methods
.method private constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 629
    const-string v2, "ChildBrowser"

    const-string v3, "***************onDownloadStart*************"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 631
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 632
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v2, v2, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v2, v0}, Lorg/apache/cordova/api/LegacyContext;->startActivity(Landroid/content/Intent;)V

    .line 633
    return-void
.end method
