.class Lcn/domob/android/offerwall/a$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/offerwall/a;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/offerwall/a;


# direct methods
.method constructor <init>(Lcn/domob/android/offerwall/a;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/a$1;->a:Lcn/domob/android/offerwall/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lcn/domob/android/offerwall/a;->a()Lcn/domob/android/offerwall/m;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/a$1;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->a(Lcn/domob/android/offerwall/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/a$1;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->b(Lcn/domob/android/offerwall/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/domob/android/offerwall/a$1;->a:Lcn/domob/android/offerwall/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/offerwall/a;->a(Lcn/domob/android/offerwall/a;Z)Z

    iget-object v0, p0, Lcn/domob/android/offerwall/a$1;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->c(Lcn/domob/android/offerwall/a;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcn/domob/android/offerwall/a;->a()Lcn/domob/android/offerwall/m;

    move-result-object v0

    const-string v1, "onPageStarted"

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/domob/android/offerwall/a;->a()Lcn/domob/android/offerwall/m;

    move-result-object v0

    const-string v1, "onReceivedError"

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/a$1;->a:Lcn/domob/android/offerwall/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/offerwall/a;->b(Lcn/domob/android/offerwall/a;Z)Z

    iget-object v0, p0, Lcn/domob/android/offerwall/a$1;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->b(Lcn/domob/android/offerwall/a;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcn/domob/android/offerwall/a$1;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->d(Lcn/domob/android/offerwall/a;)Lcn/domob/android/offerwall/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/a$1;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->d(Lcn/domob/android/offerwall/a;)Lcn/domob/android/offerwall/a$a;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcn/domob/android/offerwall/a;

    invoke-interface {v1, v0, p2}, Lcn/domob/android/offerwall/a$a;->a(Lcn/domob/android/offerwall/a;Ljava/lang/String;)V

    :cond_0
    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
