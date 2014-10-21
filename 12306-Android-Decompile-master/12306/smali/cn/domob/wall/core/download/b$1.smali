.class Lcn/domob/wall/core/download/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/download/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/download/b;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/download/b;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x64

    const/4 v3, 0x0

    .line 295
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 297
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->a(Lcn/domob/wall/core/download/b;)I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v7, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Lcn/domob/wall/core/download/b;->a(Lcn/domob/wall/core/download/b;I)I

    .line 301
    iget-object v0, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Lcn/domob/wall/core/download/b;->b(Lcn/domob/wall/core/download/b;I)I

    .line 302
    invoke-static {}, Lcn/domob/wall/core/download/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->d(Lcn/domob/wall/core/download/b;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {}, Lcn/domob/wall/core/download/b;->d()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v5}, Lcn/domob/wall/core/download/b;->b(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v6}, Lcn/domob/wall/core/download/b;->c(Lcn/domob/wall/core/download/b;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 305
    iget-object v0, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->f(Lcn/domob/wall/core/download/b;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->e(Lcn/domob/wall/core/download/b;)I

    move-result v2

    iget-object v4, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v4}, Lcn/domob/wall/core/download/b;->d(Lcn/domob/wall/core/download/b;)Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 308
    :cond_2
    iget-object v0, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->g(Lcn/domob/wall/core/download/b;)I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 309
    invoke-static {}, Lcn/domob/wall/core/download/b;->e()Lcn/domob/wall/core/p;

    move-result-object v0

    const-class v2, Lcn/domob/wall/core/download/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v5}, Lcn/domob/wall/core/download/b;->b(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " download success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcn/domob/wall/core/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->h(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->h(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".temp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    iget-object v0, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->h(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v4}, Lcn/domob/wall/core/download/b;->h(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v6, ".temp"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/domob/wall/core/download/b;->a(Lcn/domob/wall/core/download/b;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->h(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcn/domob/wall/core/download/b;->e()Lcn/domob/wall/core/p;

    move-result-object v2

    const-class v4, Lcn/domob/wall/core/download/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v7}, Lcn/domob/wall/core/download/b;->b(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "FileName change to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcn/domob/wall/core/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 322
    :cond_3
    iget-object v0, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->i(Lcn/domob/wall/core/download/b;)I

    move-result v0

    if-nez v0, :cond_c

    .line 323
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    move v2, v3

    move-object v0, v1

    .line 327
    :goto_1
    const/4 v4, 0x2

    if-ge v2, v4, :cond_4

    if-nez v0, :cond_4

    .line 328
    invoke-static {}, Lcn/domob/wall/core/download/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v4, v7}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 330
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v4

    goto :goto_1

    .line 333
    :cond_4
    invoke-static {}, Lcn/domob/wall/core/download/b;->e()Lcn/domob/wall/core/p;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetch picture ablum path "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 334
    if-nez v0, :cond_5

    .line 335
    invoke-static {}, Lcn/domob/wall/core/download/b;->e()Lcn/domob/wall/core/p;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed, change the resType to other"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcn/domob/wall/core/download/b;->c(Lcn/domob/wall/core/download/b;I)I

    .line 342
    :cond_5
    :goto_2
    sget-object v2, Lcn/domob/wall/core/download/b;->a:Ljava/util/Hashtable;

    iget-object v4, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v4}, Lcn/domob/wall/core/download/b;->j(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->k(Lcn/domob/wall/core/download/b;)Lcn/domob/wall/core/download/c;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 344
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->k(Lcn/domob/wall/core/download/b;)Lcn/domob/wall/core/download/c;

    move-result-object v2

    iget-object v4, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v4}, Lcn/domob/wall/core/download/b;->h(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcn/domob/wall/core/download/c;->a(Ljava/lang/String;)V

    .line 346
    :cond_6
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2, v3}, Lcn/domob/wall/core/download/b;->b(Lcn/domob/wall/core/download/b;I)I

    .line 347
    invoke-static {}, Lcn/domob/wall/core/download/b;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->d(Lcn/domob/wall/core/download/b;)Landroid/app/Notification;

    move-result-object v2

    const v3, 0x1080082

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 349
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->d(Lcn/domob/wall/core/download/b;)Landroid/app/Notification;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v4}, Lcn/domob/wall/core/download/b;->b(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e0b\u8f7d\u5b8c\u6bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 350
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->d(Lcn/domob/wall/core/download/b;)Landroid/app/Notification;

    move-result-object v2

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 352
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->l(Lcn/domob/wall/core/download/b;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 353
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->i(Lcn/domob/wall/core/download/b;)I

    move-result v2

    if-nez v2, :cond_7

    .line 354
    invoke-static {v0}, Lcn/domob/wall/core/download/b;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 363
    :goto_3
    iget-object v3, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {}, Lcn/domob/wall/core/download/b;->d()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v5}, Lcn/domob/wall/core/download/b;->e(Lcn/domob/wall/core/download/b;)I

    move-result v5

    const/high16 v6, 0x800

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/domob/wall/core/download/b;->a(Lcn/domob/wall/core/download/b;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 365
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->d(Lcn/domob/wall/core/download/b;)Landroid/app/Notification;

    move-result-object v2

    invoke-static {}, Lcn/domob/wall/core/download/b;->d()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v5}, Lcn/domob/wall/core/download/b;->b(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4e0b\u8f7d\u5b8c\u6bd5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-object v6, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v6}, Lcn/domob/wall/core/download/b;->c(Lcn/domob/wall/core/download/b;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 366
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->f(Lcn/domob/wall/core/download/b;)Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v3}, Lcn/domob/wall/core/download/b;->e(Lcn/domob/wall/core/download/b;)I

    move-result v3

    iget-object v4, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v4}, Lcn/domob/wall/core/download/b;->d(Lcn/domob/wall/core/download/b;)Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 367
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->m(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 369
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->m(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v3}, Lcn/domob/wall/core/download/b;->h(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/domob/wall/core/v;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 371
    invoke-static {}, Lcn/domob/wall/core/download/b;->e()Lcn/domob/wall/core/p;

    move-result-object v0

    invoke-static {}, Lcn/domob/wall/core/download/b;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "md5 authorized failed"

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->f(Lcn/domob/wall/core/download/b;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v1}, Lcn/domob/wall/core/download/b;->e(Lcn/domob/wall/core/download/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 356
    :cond_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    goto/16 :goto_3

    .line 360
    :cond_8
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->h(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_3

    .line 377
    :cond_9
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->l(Lcn/domob/wall/core/download/b;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 378
    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->i(Lcn/domob/wall/core/download/b;)I

    move-result v2

    if-nez v2, :cond_a

    .line 379
    invoke-static {v0}, Lcn/domob/wall/core/download/b;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 397
    :goto_4
    if-eqz v1, :cond_0

    .line 398
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 399
    invoke-static {}, Lcn/domob/wall/core/download/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 382
    :cond_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcn/domob/wall/core/download/b;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u786e\u8ba4"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v3}, Lcn/domob/wall/core/download/b;->b(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5df2\u88ab\u4e0b\u8f7d\u5230\u8def\u5f84:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v3}, Lcn/domob/wall/core/download/b;->h(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcn/domob/wall/core/download/b$1$1;

    invoke-direct {v3, p0}, Lcn/domob/wall/core/download/b$1$1;-><init>(Lcn/domob/wall/core/download/b$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 390
    iget-object v0, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->f(Lcn/domob/wall/core/download/b;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v2}, Lcn/domob/wall/core/download/b;->e(Lcn/domob/wall/core/download/b;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4

    .line 395
    :cond_b
    iget-object v0, p0, Lcn/domob/wall/core/download/b$1;->a:Lcn/domob/wall/core/download/b;

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->h(Lcn/domob/wall/core/download/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/wall/core/download/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_4

    :cond_c
    move-object v0, v1

    goto/16 :goto_2
.end method
