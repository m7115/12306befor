.class Lcn/domob/android/offerwall/a;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/offerwall/a$d;,
        Lcn/domob/android/offerwall/a$c;,
        Lcn/domob/android/offerwall/a$b;,
        Lcn/domob/android/offerwall/a$a;
    }
.end annotation


# static fields
.field protected static final a:I = -0x1

.field private static b:Lcn/domob/android/offerwall/m; = null

.field private static final k:I = 0xa


# instance fields
.field private c:Lcn/domob/android/offerwall/a$a;

.field private d:Lcn/domob/android/offerwall/a$b;

.field private e:Lcn/domob/android/offerwall/a$c;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/offerwall/a;->b:Lcn/domob/android/offerwall/m;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcn/domob/android/offerwall/a;->g:Z

    iput-boolean v0, p0, Lcn/domob/android/offerwall/a;->h:Z

    iput-boolean v0, p0, Lcn/domob/android/offerwall/a;->i:Z

    iput-boolean v0, p0, Lcn/domob/android/offerwall/a;->j:Z

    invoke-direct {p0}, Lcn/domob/android/offerwall/a;->b()V

    invoke-virtual {p0}, Lcn/domob/android/offerwall/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcn/domob/android/offerwall/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    invoke-virtual {p0}, Lcn/domob/android/offerwall/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/16 v0, 0xa

    iput v0, p0, Lcn/domob/android/offerwall/a;->f:I

    if-eq p2, v1, :cond_0

    sget-object v0, Lcn/domob/android/offerwall/a;->b:Lcn/domob/android/offerwall/m;

    const-string v1, "Init DomobWebView with custom background color."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcn/domob/android/offerwall/a;->setBackgroundColor(I)V

    :cond_0
    new-instance v0, Lcn/domob/android/offerwall/a$1;

    invoke-direct {v0, p0}, Lcn/domob/android/offerwall/a$1;-><init>(Lcn/domob/android/offerwall/a;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/offerwall/a;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcn/domob/android/offerwall/a$2;

    invoke-direct {v0, p0}, Lcn/domob/android/offerwall/a$2;-><init>(Lcn/domob/android/offerwall/a;)V

    invoke-virtual {p0, v0}, Lcn/domob/android/offerwall/a;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method static synthetic a()Lcn/domob/android/offerwall/m;
    .locals 1

    sget-object v0, Lcn/domob/android/offerwall/a;->b:Lcn/domob/android/offerwall/m;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/offerwall/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/domob/android/offerwall/a;->h:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/offerwall/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/domob/android/offerwall/a;->i:Z

    return p1
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/domob/android/offerwall/a;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Lcn/domob/android/offerwall/a;->setHorizontalScrollbarOverlay(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/domob/android/offerwall/a;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {p0}, Lcn/domob/android/offerwall/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/offerwall/a;)V
    .locals 0

    invoke-direct {p0}, Lcn/domob/android/offerwall/a;->d()V

    return-void
.end method

.method static synthetic b(Lcn/domob/android/offerwall/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/domob/android/offerwall/a;->h:Z

    return p1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcn/domob/android/offerwall/a;->d:Lcn/domob/android/offerwall/a$b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/offerwall/a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/offerwall/a;->j:Z

    sget-object v0, Lcn/domob/android/offerwall/a;->b:Lcn/domob/android/offerwall/m;

    const-string v1, "WebView finish callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/a;->d:Lcn/domob/android/offerwall/a$b;

    invoke-interface {v0, p0}, Lcn/domob/android/offerwall/a$b;->a(Lcn/domob/android/offerwall/a;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/domob/android/offerwall/a;)V
    .locals 0

    invoke-direct {p0}, Lcn/domob/android/offerwall/a;->c()V

    return-void
.end method

.method static synthetic d(Lcn/domob/android/offerwall/a;)Lcn/domob/android/offerwall/a$a;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/a;->c:Lcn/domob/android/offerwall/a$a;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcn/domob/android/offerwall/a;->d:Lcn/domob/android/offerwall/a$b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/offerwall/a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/offerwall/a;->j:Z

    sget-object v0, Lcn/domob/android/offerwall/a;->b:Lcn/domob/android/offerwall/m;

    const-string v1, "WebView failed callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/a;->d:Lcn/domob/android/offerwall/a$b;

    invoke-interface {v0, p0}, Lcn/domob/android/offerwall/a$b;->b(Lcn/domob/android/offerwall/a;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcn/domob/android/offerwall/a;)Lcn/domob/android/offerwall/a$c;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/a;->e:Lcn/domob/android/offerwall/a$c;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcn/domob/android/offerwall/a;->d:Lcn/domob/android/offerwall/a$b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/offerwall/a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/offerwall/a;->j:Z

    sget-object v0, Lcn/domob/android/offerwall/a;->b:Lcn/domob/android/offerwall/m;

    const-string v1, "WebView timeout callback."

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/a;->d:Lcn/domob/android/offerwall/a$b;

    invoke-interface {v0, p0}, Lcn/domob/android/offerwall/a$b;->c(Lcn/domob/android/offerwall/a;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcn/domob/android/offerwall/a;)I
    .locals 1

    iget v0, p0, Lcn/domob/android/offerwall/a;->f:I

    return v0
.end method

.method static synthetic g(Lcn/domob/android/offerwall/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/domob/android/offerwall/a;->i:Z

    return v0
.end method

.method static synthetic h(Lcn/domob/android/offerwall/a;)V
    .locals 0

    invoke-direct {p0}, Lcn/domob/android/offerwall/a;->e()V

    return-void
.end method

.method static synthetic i(Lcn/domob/android/offerwall/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/domob/android/offerwall/a;->g:Z

    return v0
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    sget-object v0, Lcn/domob/android/offerwall/a;->b:Lcn/domob/android/offerwall/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView\'s timeout is set as :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    iput p1, p0, Lcn/domob/android/offerwall/a;->f:I

    return-void
.end method

.method protected a(Lcn/domob/android/offerwall/a$a;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/a;->c:Lcn/domob/android/offerwall/a$a;

    return-void
.end method

.method protected a(Lcn/domob/android/offerwall/a$b;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/a;->d:Lcn/domob/android/offerwall/a$b;

    return-void
.end method

.method protected a(Lcn/domob/android/offerwall/a$c;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/a;->e:Lcn/domob/android/offerwall/a$c;

    return-void
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcn/domob/android/offerwall/a;->b:Lcn/domob/android/offerwall/m;

    const-string v2, "BaseWebView instance executes js: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/domob/android/offerwall/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcn/domob/android/offerwall/a$3;

    invoke-direct {v2, p0, v1}, Lcn/domob/android/offerwall/a$3;-><init>(Lcn/domob/android/offerwall/a;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/domob/android/offerwall/a;->g:Z

    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lcn/domob/android/offerwall/a;->b:Lcn/domob/android/offerwall/m;

    const-string v2, "loadData() is called with data = %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/offerwall/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
