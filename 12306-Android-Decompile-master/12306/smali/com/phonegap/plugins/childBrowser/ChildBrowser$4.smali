.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser;->showWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iput-object p2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->val$url:Ljava/lang/String;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    .locals 1
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 307
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    new-instance v11, Landroid/app/Dialog;

    iget-object v12, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v12, v12, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v12}, Lorg/apache/cordova/api/LegacyContext;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x1030006

    invoke-direct {v11, v12, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #setter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v10, v11}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$4(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/app/Dialog;)V

    .line 308
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    const v11, 0x1030002

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 309
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 310
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 311
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v10

    new-instance v11, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$1;

    invoke-direct {v11, p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$1;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;)V

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 329
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v10, v10, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v10}, Lorg/apache/cordova/api/LegacyContext;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 330
    .local v5, mContentLayoutInflater:Landroid/view/LayoutInflater;
    const v10, 0x7f030010

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 333
    .local v6, main:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    const v10, 0x7f080049

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    #setter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v11, v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$9(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/webkit/WebView;)V

    .line 335
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    .line 336
    .local v8, settings:Landroid/webkit/WebSettings;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 337
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 338
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 339
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 340
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 343
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v10

    new-instance v11, Lcom/phonegap/plugins/childBrowser/ChildBrowser$DemoJavaScriptInterface;

    iget-object v12, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    invoke-direct {v11, v12}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$DemoJavaScriptInterface;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V

    const-string v12, "Merchants"

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v10

    new-instance v11, Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;

    iget-object v12, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 347
    const v10, 0x7f080045

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 348
    .local v0, back:Landroid/widget/Button;
    new-instance v10, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$2;

    invoke-direct {v10, p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$2;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    new-instance v11, Landroid/widget/EditText;

    iget-object v12, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v12, v12, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v12}, Lorg/apache/cordova/api/LegacyContext;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v10, v11}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$12(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/widget/EditText;)V

    .line 368
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 369
    .local v9, textLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 370
    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 371
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 372
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setId(I)V

    .line 374
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 375
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v10

    iget-object v11, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->val$url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v10

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 377
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 378
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 392
    const v10, 0x7f080048

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 393
    .local v2, close:Landroid/widget/Button;
    new-instance v10, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$3;

    invoke-direct {v10, p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$3;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v10

    new-instance v11, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$4;

    invoke-direct {v11, p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4$4;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 430
    new-instance v1, Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;

    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    iget-object v11, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v11

    invoke-direct {v1, v10, v11}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/widget/EditText;)V

    .line 431
    .local v1, client:Landroid/webkit/WebViewClient;
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 442
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "interfaceName="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceName:Ljava/lang/String;
    invoke-static {v11}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$14(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 443
    const-string v11, "&interfaceVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceVersion:Ljava/lang/String;
    invoke-static {v11}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$15(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 444
    const-string v11, "&tranData="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->tranData:Ljava/lang/String;
    invoke-static {v11}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$16(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 445
    const-string v11, "&merSignMsg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->merSignMsg:Ljava/lang/String;
    invoke-static {v11}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$17(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 446
    const-string v11, "&appId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->appId:Ljava/lang/String;
    invoke-static {v11}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$18(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 447
    const-string v11, "&transType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->transType:Ljava/lang/String;
    invoke-static {v11}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$19(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 442
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, postData:Ljava/lang/String;
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v10

    iget-object v11, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->val$url:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v7           #postData:Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v10

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setId(I)V

    .line 459
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 460
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 461
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebView;->requestFocus()Z

    .line 462
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 465
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 466
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 467
    const/4 v10, -0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 468
    const/4 v10, -0x1

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 470
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 471
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 472
    iget-object v10, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;
    invoke-static {v10}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 473
    return-void

    .line 452
    .end local v4           #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v3

    .line 453
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "childbrowser"

    const-string v11, "error when post payment url"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
