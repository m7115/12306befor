.class public Lcom/tl/uic/webkit/UICWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "UICWebChromeClient.java"


# static fields
.field private static final PROGRESS_100_PERCENT:I = 0x64

.field private static final PROGRESS_CONVERTER_TO_100:I = 0x3e8


# instance fields
.field private final uicActivity:Lcom/tl/uic/app/UICActivity;


# direct methods
.method public constructor <init>(Lcom/tl/uic/app/UICActivity;)V
    .locals 0
    .parameter "uicActivity"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/tl/uic/webkit/UICWebChromeClient;->uicActivity:Lcom/tl/uic/app/UICActivity;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/tl/uic/webkit/UICWebChromeClient;)Lcom/tl/uic/app/UICActivity;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tl/uic/webkit/UICWebChromeClient;->uicActivity:Lcom/tl/uic/app/UICActivity;

    return-object v0
.end method


# virtual methods
.method public final onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- From line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .parameter "view"
    .parameter "progress"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/tl/uic/webkit/UICWebChromeClient;->uicActivity:Lcom/tl/uic/app/UICActivity;

    mul-int/lit16 v2, p2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/tl/uic/app/UICActivity;->setProgress(I)V

    .line 38
    instance-of v1, p1, Lcom/tl/uic/webkit/UICWebView;

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    move-object v1, p1

    .line 39
    check-cast v1, Lcom/tl/uic/webkit/UICWebView;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tl/uic/webkit/UICWebView;->setEndLoad(Ljava/util/Date;)V

    .line 42
    iget-object v1, p0, Lcom/tl/uic/webkit/UICWebChromeClient;->uicActivity:Lcom/tl/uic/app/UICActivity;

    invoke-virtual {v1}, Lcom/tl/uic/app/UICActivity;->getTakeSnapshotAfterCreate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tl/uic/webkit/UICWebChromeClient;->uicActivity:Lcom/tl/uic/app/UICActivity;

    invoke-virtual {v1}, Lcom/tl/uic/app/UICActivity;->getTookImage()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    new-instance v0, Lcom/tl/uic/webkit/UICWebChromeClient$1;

    invoke-direct {v0, p0, p1}, Lcom/tl/uic/webkit/UICWebChromeClient$1;-><init>(Lcom/tl/uic/webkit/UICWebChromeClient;Landroid/webkit/WebView;)V

    .line 55
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    .end local v0           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method
