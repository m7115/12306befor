.class public Lcom/tl/uic/webkit/UICWebView;
.super Landroid/webkit/WebView;
.source "UICWebView.java"


# instance fields
.field private connectionInitFromSession:J

.field private endLoad:Ljava/util/Date;

.field private httpResponse:Lorg/apache/http/HttpResponse;

.field private initTime:Ljava/util/Date;

.field private responseTime:J

.field private startLoad:Ljava/util/Date;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/tl/uic/webkit/UICWebView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/tl/uic/webkit/UICWebView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0}, Lcom/tl/uic/webkit/UICWebView;->init()V

    .line 55
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/tl/uic/webkit/UICWebViewClient;

    invoke-direct {v0}, Lcom/tl/uic/webkit/UICWebViewClient;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tl/uic/webkit/UICWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 186
    new-instance v1, Lcom/tl/uic/webkit/UICWebChromeClient;

    invoke-virtual {p0}, Lcom/tl/uic/webkit/UICWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tl/uic/app/UICActivity;

    invoke-direct {v1, v0}, Lcom/tl/uic/webkit/UICWebChromeClient;-><init>(Lcom/tl/uic/app/UICActivity;)V

    invoke-virtual {p0, v1}, Lcom/tl/uic/webkit/UICWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 187
    new-instance v0, Lcom/tl/uic/javascript/JavaScriptInterface;

    invoke-virtual {p0}, Lcom/tl/uic/webkit/UICWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tl/uic/javascript/JavaScriptInterface;-><init>(Landroid/content/Context;)V

    const-string v1, "tlBridge"

    invoke-virtual {p0, v0, v1}, Lcom/tl/uic/webkit/UICWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    return-void
.end method


# virtual methods
.method public final getEndLoad()Ljava/util/Date;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tl/uic/webkit/UICWebView;->endLoad:Ljava/util/Date;

    return-object v0
.end method

.method public final getHttpResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tl/uic/webkit/UICWebView;->httpResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public final getInitTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tl/uic/webkit/UICWebView;->initTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getResponseTime()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/tl/uic/webkit/UICWebView;->responseTime:J

    return-wide v0
.end method

.method public final getStartLoad()Ljava/util/Date;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tl/uic/webkit/UICWebView;->startLoad:Ljava/util/Date;

    return-object v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/tl/uic/webkit/UICWebView;->url:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/tl/uic/webkit/UICWebView;->initTime:Ljava/util/Date;

    .line 156
    iput-wide v1, p0, Lcom/tl/uic/webkit/UICWebView;->connectionInitFromSession:J

    .line 157
    iput-wide v1, p0, Lcom/tl/uic/webkit/UICWebView;->responseTime:J

    .line 158
    iput-object v0, p0, Lcom/tl/uic/webkit/UICWebView;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 159
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/tl/uic/webkit/UICWebView;->startLoad:Ljava/util/Date;

    .line 160
    iget-object v1, p0, Lcom/tl/uic/webkit/UICWebView;->url:Ljava/lang/String;

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tl/uic/webkit/UICWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 170
    return-void
.end method

.method public final loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tl/uic/webkit/UICWebView;->url:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/tl/uic/webkit/UICWebView;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/tl/uic/Tealeaf;->setTLCookie(Ljava/lang/String;)V

    .line 178
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 179
    return-void
.end method

.method public final logConnection()V
    .locals 8

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/tl/uic/webkit/UICWebView;->getEndLoad()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/tl/uic/webkit/UICWebView;->getStartLoad()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 195
    .local v4, loadTime:J
    iget-object v0, p0, Lcom/tl/uic/webkit/UICWebView;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/tl/uic/webkit/UICWebView;->httpResponse:Lorg/apache/http/HttpResponse;

    iget-wide v2, p0, Lcom/tl/uic/webkit/UICWebView;->connectionInitFromSession:J

    iget-wide v6, p0, Lcom/tl/uic/webkit/UICWebView;->responseTime:J

    invoke-static/range {v0 .. v7}, Lcom/tl/uic/Tealeaf;->logConnection(Ljava/lang/String;Lorg/apache/http/HttpResponse;JJJ)Ljava/lang/Boolean;

    .line 196
    return-void
.end method

.method public final setEndLoad(Ljava/util/Date;)V
    .locals 0
    .parameter "endLoad"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tl/uic/webkit/UICWebView;->endLoad:Ljava/util/Date;

    .line 73
    return-void
.end method

.method public final setHttpResponse(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .parameter "httpResponse"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/tl/uic/webkit/UICWebView;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 109
    return-void
.end method

.method public final setInitTime(Ljava/util/Date;)V
    .locals 2
    .parameter "initTime"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/tl/uic/webkit/UICWebView;->initTime:Ljava/util/Date;

    .line 127
    invoke-static {}, Lcom/tl/uic/TLFCache;->timestampFromSession()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tl/uic/webkit/UICWebView;->connectionInitFromSession:J

    .line 128
    return-void
.end method

.method public final setResponseTime(J)V
    .locals 0
    .parameter "responseTime"

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/tl/uic/webkit/UICWebView;->responseTime:J

    .line 146
    return-void
.end method

.method public final setStartLoad(Ljava/util/Date;)V
    .locals 0
    .parameter "startLoad"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tl/uic/webkit/UICWebView;->startLoad:Ljava/util/Date;

    .line 91
    return-void
.end method
