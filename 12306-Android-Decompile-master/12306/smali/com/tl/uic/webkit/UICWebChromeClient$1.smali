.class Lcom/tl/uic/webkit/UICWebChromeClient$1;
.super Ljava/lang/Thread;
.source "UICWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/webkit/UICWebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tl/uic/webkit/UICWebChromeClient;

.field private final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/tl/uic/webkit/UICWebChromeClient;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/webkit/UICWebChromeClient$1;->this$0:Lcom/tl/uic/webkit/UICWebChromeClient;

    iput-object p2, p0, Lcom/tl/uic/webkit/UICWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    .line 43
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tl/uic/webkit/UICWebChromeClient$1;)Lcom/tl/uic/webkit/UICWebChromeClient;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tl/uic/webkit/UICWebChromeClient$1;->this$0:Lcom/tl/uic/webkit/UICWebChromeClient;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tl/uic/webkit/UICWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    new-instance v1, Lcom/tl/uic/webkit/UICWebChromeClient$1$1;

    iget-object v2, p0, Lcom/tl/uic/webkit/UICWebChromeClient$1;->val$view:Landroid/webkit/WebView;

    invoke-direct {v1, p0, v2}, Lcom/tl/uic/webkit/UICWebChromeClient$1$1;-><init>(Lcom/tl/uic/webkit/UICWebChromeClient$1;Landroid/webkit/WebView;)V

    .line 52
    iget-object v2, p0, Lcom/tl/uic/webkit/UICWebChromeClient$1;->this$0:Lcom/tl/uic/webkit/UICWebChromeClient;

    #getter for: Lcom/tl/uic/webkit/UICWebChromeClient;->uicActivity:Lcom/tl/uic/app/UICActivity;
    invoke-static {v2}, Lcom/tl/uic/webkit/UICWebChromeClient;->access$0(Lcom/tl/uic/webkit/UICWebChromeClient;)Lcom/tl/uic/app/UICActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tl/uic/app/UICActivity;->getMillisecondSnapshotDelay()J

    move-result-wide v2

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method
