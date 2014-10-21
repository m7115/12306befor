.class Lcn/domob/wall/core/download/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/download/f$a;
    }
.end annotation


# static fields
.field private static d:Lcn/domob/wall/core/p;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcn/domob/wall/core/download/e;

.field private k:Z

.field private l:J

.field private m:Lcn/domob/wall/core/download/f$a;

.field private n:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/download/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcn/domob/wall/core/download/e;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    iput v1, p0, Lcn/domob/wall/core/download/f;->e:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcn/domob/wall/core/download/f;->h:I

    .line 24
    iput v1, p0, Lcn/domob/wall/core/download/f;->i:I

    .line 25
    iput-object v2, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/wall/core/download/f;->l:J

    .line 30
    new-instance v0, Lcn/domob/wall/core/download/f$a;

    invoke-direct {v0, p0}, Lcn/domob/wall/core/download/f$a;-><init>(Lcn/domob/wall/core/download/f;)V

    iput-object v0, p0, Lcn/domob/wall/core/download/f;->m:Lcn/domob/wall/core/download/f$a;

    .line 31
    iput-object v2, p0, Lcn/domob/wall/core/download/f;->n:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcn/domob/wall/core/download/f;->a:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcn/domob/wall/core/download/f;->c:Ljava/lang/String;

    .line 38
    iput-wide p3, p0, Lcn/domob/wall/core/download/f;->l:J

    .line 39
    iput-object p5, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    .line 40
    iput-object p6, p0, Lcn/domob/wall/core/download/f;->n:Landroid/content/Context;

    .line 41
    sget-object v0, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/download/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build DownloadTask url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcn/domob/wall/core/download/f;->k:Z

    return v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->m:Lcn/domob/wall/core/download/f$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/domob/wall/core/download/f$a;->a:Z

    .line 145
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 47
    iget v0, p0, Lcn/domob/wall/core/download/f;->h:I

    new-array v12, v0, [Lcn/domob/wall/core/download/h;

    .line 49
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v0, p0, Lcn/domob/wall/core/download/f;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->n:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/wall/core/download/g;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    sget-object v2, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/p;

    const-string v3, "Use Proxy"

    invoke-virtual {v2, p0, v3}, Lcn/domob/wall/core/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 60
    :goto_0
    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 62
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_2

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_2

    .line 69
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/download/f;->e:I

    .line 70
    sget-object v0, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total file size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/domob/wall/core/download/f;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcn/domob/wall/core/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcn/domob/wall/core/download/f;->e:I

    if-gtz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    const-string v1, "\u4e0b\u8f7d\u8fde\u63a5\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/e;->a(Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_1
    return-void

    .line 57
    :cond_1
    sget-object v0, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/p;

    const-string v2, "Proxy is null"

    invoke-virtual {v0, p0, v2}, Lcn/domob/wall/core/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    const-string v1, "\u4e0b\u8f7d\u8fde\u63a5\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    sget-object v1, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    .line 133
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    const-string v1, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/e;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_3
    :try_start_1
    sget-object v0, Lcn/domob/wall/core/download/f;->d:Lcn/domob/wall/core/p;

    const-class v2, Lcn/domob/wall/core/download/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/domob/wall/core/download/f;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " downloadSizeMore:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/domob/wall/core/download/f;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcn/domob/wall/core/download/f;->e:I

    iget v2, p0, Lcn/domob/wall/core/download/f;->h:I

    div-int/2addr v0, v2

    iput v0, p0, Lcn/domob/wall/core/download/f;->f:I

    .line 82
    iget v0, p0, Lcn/domob/wall/core/download/f;->e:I

    iget v2, p0, Lcn/domob/wall/core/download/f;->h:I

    rem-int/2addr v0, v2

    iput v0, p0, Lcn/domob/wall/core/download/f;->g:I

    .line 84
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcn/domob/wall/core/download/f;->c:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v11, v10

    .line 85
    :goto_2
    iget v0, p0, Lcn/domob/wall/core/download/f;->h:I

    if-ge v11, v0, :cond_6

    .line 87
    iget v0, p0, Lcn/domob/wall/core/download/f;->h:I

    add-int/lit8 v0, v0, -0x1

    if-eq v11, v0, :cond_4

    .line 88
    iget v0, p0, Lcn/domob/wall/core/download/f;->f:I

    mul-int/2addr v0, v11

    int-to-long v3, v0

    iget-wide v5, p0, Lcn/domob/wall/core/download/f;->l:J

    add-long/2addr v3, v5

    .line 89
    add-int/lit8 v0, v11, 0x1

    iget v5, p0, Lcn/domob/wall/core/download/f;->f:I

    mul-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    int-to-long v5, v0

    .line 91
    new-instance v0, Lcn/domob/wall/core/download/h;

    iget-object v7, p0, Lcn/domob/wall/core/download/f;->m:Lcn/domob/wall/core/download/f$a;

    iget-object v8, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    iget-object v9, p0, Lcn/domob/wall/core/download/f;->n:Landroid/content/Context;

    invoke-direct/range {v0 .. v9}, Lcn/domob/wall/core/download/h;-><init>(Ljava/net/URL;Ljava/io/File;JJLcn/domob/wall/core/download/f$a;Lcn/domob/wall/core/download/e;Landroid/content/Context;)V

    .line 102
    :goto_3
    invoke-virtual {v0}, Lcn/domob/wall/core/download/h;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 103
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcn/domob/wall/core/download/e;->a(I)V

    goto/16 :goto_1

    .line 94
    :cond_4
    iget v0, p0, Lcn/domob/wall/core/download/f;->f:I

    mul-int/2addr v0, v11

    int-to-long v3, v0

    iget-wide v5, p0, Lcn/domob/wall/core/download/f;->l:J

    add-long/2addr v3, v5

    .line 95
    add-int/lit8 v0, v11, 0x1

    iget v5, p0, Lcn/domob/wall/core/download/f;->f:I

    mul-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    iget v5, p0, Lcn/domob/wall/core/download/f;->g:I

    add-int/2addr v0, v5

    int-to-long v5, v0

    .line 97
    new-instance v0, Lcn/domob/wall/core/download/h;

    iget-object v7, p0, Lcn/domob/wall/core/download/f;->m:Lcn/domob/wall/core/download/f$a;

    iget-object v8, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    iget-object v9, p0, Lcn/domob/wall/core/download/f;->n:Landroid/content/Context;

    invoke-direct/range {v0 .. v9}, Lcn/domob/wall/core/download/h;-><init>(Ljava/net/URL;Ljava/io/File;JJLcn/domob/wall/core/download/f$a;Lcn/domob/wall/core/download/e;Landroid/content/Context;)V

    goto :goto_3

    .line 106
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/wall/core/download/h;->setName(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lcn/domob/wall/core/download/h;->start()V

    .line 108
    aput-object v0, v12, v11

    .line 85
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_2

    .line 110
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/wall/core/download/f;->k:Z

    .line 111
    :goto_4
    iget-boolean v0, p0, Lcn/domob/wall/core/download/f;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/wall/core/download/f;->m:Lcn/domob/wall/core/download/f$a;

    iget-boolean v0, v0, Lcn/domob/wall/core/download/f$a;->a:Z

    if-nez v0, :cond_0

    .line 114
    iget v0, p0, Lcn/domob/wall/core/download/f;->g:I

    iput v0, p0, Lcn/domob/wall/core/download/f;->i:I

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/wall/core/download/f;->k:Z

    move v0, v10

    .line 116
    :goto_5
    array-length v1, v12

    if-ge v0, v1, :cond_8

    .line 117
    iget v1, p0, Lcn/domob/wall/core/download/f;->i:I

    int-to-long v1, v1

    aget-object v3, v12, v0

    invoke-virtual {v3}, Lcn/domob/wall/core/download/h;->b()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcn/domob/wall/core/download/f;->i:I

    .line 118
    aget-object v1, v12, v0

    invoke-virtual {v1}, Lcn/domob/wall/core/download/h;->a()Z

    move-result v1

    if-nez v1, :cond_7

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/domob/wall/core/download/f;->k:Z

    .line 116
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 122
    :cond_8
    iget-object v0, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/domob/wall/core/download/f;->m:Lcn/domob/wall/core/download/f$a;

    iget-boolean v0, v0, Lcn/domob/wall/core/download/f$a;->a:Z

    if-nez v0, :cond_9

    .line 123
    iget v0, p0, Lcn/domob/wall/core/download/f;->i:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    iget v2, p0, Lcn/domob/wall/core/download/f;->e:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    .line 125
    iget-object v1, p0, Lcn/domob/wall/core/download/f;->j:Lcn/domob/wall/core/download/e;

    invoke-interface {v1, v0}, Lcn/domob/wall/core/download/e;->a(I)V

    .line 128
    :cond_9
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcn/domob/wall/core/download/f;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method
