.class final Lcom/phonegap/plugins/childBrowser/ChildBrowser$DemoJavaScriptInterface;
.super Ljava/lang/Object;
.source "ChildBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DemoJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;


# direct methods
.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$DemoJavaScriptInterface;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    return-void
.end method


# virtual methods
.method public isInstallCashier(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "merchantParameterStr"

    .prologue
    .line 697
    const-string v4, "ChildBrowser"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :try_start_0
    iget-object v4, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$DemoJavaScriptInterface;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v4, v4, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v4}, Lorg/apache/cordova/api/LegacyContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 701
    const-string v5, "com.unionpay.mobilepay.mpos.Activity"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 707
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_0

    .line 708
    const-string v4, "0"

    .line 715
    :goto_0
    return-object v4

    .line 702
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 703
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .line 704
    .restart local v3       #packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 705
    const-string v4, "0"

    goto :goto_0

    .line 710
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 711
    .local v0, aIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 713
    .local v1, content_url:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 714
    iget-object v4, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$DemoJavaScriptInterface;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v4, v4, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v4, v0}, Lorg/apache/cordova/api/LegacyContext;->startActivity(Landroid/content/Intent;)V

    .line 715
    const-string v4, "1"

    goto :goto_0
.end method
