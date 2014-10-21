.class Lcn/domob/android/offerwall/a$d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/offerwall/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/offerwall/a;

.field private b:I


# direct methods
.method constructor <init>(Lcn/domob/android/offerwall/a;)V
    .locals 1

    iput-object p1, p0, Lcn/domob/android/offerwall/a$d;->a:Lcn/domob/android/offerwall/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/offerwall/a$d;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget v0, p0, Lcn/domob/android/offerwall/a$d;->b:I

    iget-object v1, p0, Lcn/domob/android/offerwall/a$d;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v1}, Lcn/domob/android/offerwall/a;->f(Lcn/domob/android/offerwall/a;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/a$d;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->g(Lcn/domob/android/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget v0, p0, Lcn/domob/android/offerwall/a$d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/domob/android/offerwall/a$d;->b:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/domob/android/offerwall/a;->a()Lcn/domob/android/offerwall/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/domob/android/offerwall/a$d;->b:I

    iget-object v1, p0, Lcn/domob/android/offerwall/a$d;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v1}, Lcn/domob/android/offerwall/a;->f(Lcn/domob/android/offerwall/a;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/domob/android/offerwall/a$d;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->g(Lcn/domob/android/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/offerwall/a$d;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->a(Lcn/domob/android/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/domob/android/offerwall/a;->a()Lcn/domob/android/offerwall/m;

    move-result-object v0

    const-string v1, "WebView \u52a0\u8f7d\u8d85\u65f6"

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/a$d;->a:Lcn/domob/android/offerwall/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/offerwall/a;->b(Lcn/domob/android/offerwall/a;Z)Z

    iget-object v0, p0, Lcn/domob/android/offerwall/a$d;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->h(Lcn/domob/android/offerwall/a;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/a$d;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->i(Lcn/domob/android/offerwall/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/offerwall/a$d;->a:Lcn/domob/android/offerwall/a;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/offerwall/a$d$1;

    invoke-direct {v1, p0}, Lcn/domob/android/offerwall/a$d$1;-><init>(Lcn/domob/android/offerwall/a$d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
