.class Lcn/domob/wall/core/a/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/wall/core/a/b;->g()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/a/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    const/4 v5, -0x1

    .line 301
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {}, Lcn/domob/wall/core/a/b;->b()Lcn/domob/wall/core/p;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "----on Download start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/wall/core/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcn/domob/wall/core/a/b;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v1}, Lcn/domob/wall/core/a/b;->e(Lcn/domob/wall/core/a/b;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 310
    iget-object v0, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->e(Lcn/domob/wall/core/a/b;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 312
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 313
    :cond_1
    iget-object v0, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/wall/core/a/b;->a(Lcn/domob/wall/core/a/b;Z)Z

    .line 314
    iget-object v0, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->f(Lcn/domob/wall/core/a/b;)V

    .line 315
    iget-object v0, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->e(Lcn/domob/wall/core/a/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Loading video..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 318
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v1}, Lcn/domob/wall/core/a/b;->e(Lcn/domob/wall/core/a/b;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030007

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 320
    new-instance v1, Lcn/domob/wall/core/a/b$7$1;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/a/b$7$1;-><init>(Lcn/domob/wall/core/a/b$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 340
    new-instance v1, Landroid/widget/VideoView;

    iget-object v2, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v2}, Lcn/domob/wall/core/a/b;->e(Lcn/domob/wall/core/a/b;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 341
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 342
    new-instance v2, Landroid/widget/MediaController;

    iget-object v3, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v3}, Lcn/domob/wall/core/a/b;->e(Lcn/domob/wall/core/a/b;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-virtual {v2, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 344
    invoke-virtual {v2, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 345
    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 346
    new-instance v2, Lcn/domob/wall/core/a/b$7$2;

    invoke-direct {v2, p0}, Lcn/domob/wall/core/a/b$7$2;-><init>(Lcn/domob/wall/core/a/b$7;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 356
    new-instance v2, Lcn/domob/wall/core/a/b$7$3;

    invoke-direct {v2, p0, v0}, Lcn/domob/wall/core/a/b$7$3;-><init>(Lcn/domob/wall/core/a/b$7;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 364
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v3}, Lcn/domob/wall/core/a/b;->e(Lcn/domob/wall/core/a/b;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 365
    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 366
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 373
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 375
    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 378
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 379
    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 380
    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 393
    :cond_2
    :goto_0
    return-void

    .line 382
    :cond_3
    invoke-static {}, Lcn/domob/wall/core/a/b;->b()Lcn/domob/wall/core/p;

    move-result-object v0

    const-string v1, "should not alert a dialog now"

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_4
    iget-object v0, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v0}, Lcn/domob/wall/core/a/b;->c(Lcn/domob/wall/core/a/b;)Lcn/domob/wall/core/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    invoke-static {v1}, Lcn/domob/wall/core/a/b;->h(Lcn/domob/wall/core/a/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/wall/core/a/b$7;->a:Lcn/domob/wall/core/a/b;

    iget-object v2, v2, Lcn/domob/wall/core/a/b;->a:Lcn/domob/wall/core/AdInfo;

    invoke-interface {v0, p1, v1, v2}, Lcn/domob/wall/core/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;Lcn/domob/wall/core/AdInfo;)V

    goto :goto_0
.end method
