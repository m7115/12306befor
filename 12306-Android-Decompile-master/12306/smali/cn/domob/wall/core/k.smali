.class Lcn/domob/wall/core/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/i$a;


# static fields
.field private static a:Lcn/domob/wall/core/p; = null

.field private static b:Landroid/content/Context; = null

.field private static m:Ljava/lang/Boolean; = null

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:I = 0x3

.field private static final q:I = 0x4

.field private static final r:I = 0x5


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcn/domob/wall/core/DService$ReceiveDataListener;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/Thread;

.field private j:Ljava/util/concurrent/ExecutorService;

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/k;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/k;->a:Lcn/domob/wall/core/p;

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/wall/core/k;->b:Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/domob/wall/core/k;->m:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcn/domob/wall/core/k;->e:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcn/domob/wall/core/k;->f:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcn/domob/wall/core/k;->g:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/wall/core/k;->h:Z

    .line 25
    iput-object v1, p0, Lcn/domob/wall/core/k;->i:Ljava/lang/Thread;

    .line 27
    const v0, 0x493e0

    iput v0, p0, Lcn/domob/wall/core/k;->k:I

    .line 28
    const/16 v0, 0xa

    iput v0, p0, Lcn/domob/wall/core/k;->l:I

    .line 39
    iput-object p1, p0, Lcn/domob/wall/core/k;->c:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcn/domob/wall/core/k;->f:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcn/domob/wall/core/k;->e:Ljava/lang/String;

    .line 42
    sget-object v0, Lcn/domob/wall/core/k;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/domob/wall/core/k;->b:Landroid/content/Context;

    .line 45
    :cond_0
    invoke-static {p1}, Lcn/domob/wall/core/h;->a(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/k;->j:Ljava/util/concurrent/ExecutorService;

    .line 48
    sget-object v0, Lcn/domob/wall/core/k;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-static {}, Lcn/domob/wall/core/t;->a()Lcn/domob/wall/core/t;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/t;->b()V

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/domob/wall/core/k;->m:Ljava/lang/Boolean;

    .line 53
    :cond_1
    return-void
.end method

.method static synthetic a(Lcn/domob/wall/core/k;)I
    .locals 1
    .parameter

    .prologue
    .line 13
    iget v0, p0, Lcn/domob/wall/core/k;->k:I

    return v0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcn/domob/wall/core/k;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/wall/core/k;)Lcn/domob/wall/core/DService$ReceiveDataListener;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcn/domob/wall/core/k;->d:Lcn/domob/wall/core/DService$ReceiveDataListener;

    return-object v0
.end method

.method private c(Lcn/domob/wall/core/k;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcn/domob/wall/core/k;->i:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/wall/core/k;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/domob/wall/core/k$1;

    invoke-direct {v1, p0}, Lcn/domob/wall/core/k$1;-><init>(Lcn/domob/wall/core/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/domob/wall/core/k;->i:Ljava/lang/Thread;

    .line 79
    iget-object v0, p0, Lcn/domob/wall/core/k;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    :cond_1
    return-void
.end method

.method static synthetic i()Lcn/domob/wall/core/p;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcn/domob/wall/core/k;->a:Lcn/domob/wall/core/p;

    return-object v0
.end method

.method private j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 124
    iget-boolean v1, p0, Lcn/domob/wall/core/k;->h:Z

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcn/domob/wall/core/k;->e:Ljava/lang/String;

    invoke-static {v1}, Lcn/domob/wall/core/v;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/domob/wall/core/k;->f:Ljava/lang/String;

    invoke-static {v1}, Lcn/domob/wall/core/v;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    iget-object v1, p0, Lcn/domob/wall/core/k;->c:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/wall/core/v;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iput-boolean v0, p0, Lcn/domob/wall/core/k;->h:Z

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    const-string v0, "DrwSDK"

    const-string v1, "Permission denied."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_2
    const-string v0, "DrwSDK"

    const-string v1, "Please set your publisherID and placementID first."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcn/domob/wall/core/k;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcn/domob/wall/core/k$2;

    invoke-direct {v0, p0}, Lcn/domob/wall/core/k$2;-><init>(Lcn/domob/wall/core/k;)V

    invoke-virtual {v0}, Lcn/domob/wall/core/k$2;->start()V

    goto :goto_0
.end method

.method protected a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 222
    sget-object v0, Lcn/domob/wall/core/k;->a:Lcn/domob/wall/core/p;

    const-string v1, "failed to load data."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->d(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcn/domob/wall/core/k;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/wall/core/k$3;

    invoke-direct {v1, p0, p1, p2}, Lcn/domob/wall/core/k$3;-><init>(Lcn/domob/wall/core/k;Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method public a(Lcn/domob/wall/core/DService$ReceiveDataListener;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcn/domob/wall/core/k;->d:Lcn/domob/wall/core/DService$ReceiveDataListener;

    .line 86
    return-void
.end method

.method protected a(Lcn/domob/wall/core/j;)V
    .locals 4
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcn/domob/wall/core/k;->d:Lcn/domob/wall/core/DService$ReceiveDataListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/domob/wall/core/k;->d:Lcn/domob/wall/core/DService$ReceiveDataListener;

    invoke-virtual {p1}, Lcn/domob/wall/core/j;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/wall/core/j;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcn/domob/wall/core/j;->c()Lcn/domob/wall/core/ControlInfo;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcn/domob/wall/core/DService$ReceiveDataListener;->onSuccessReceiveData(Ljava/util/List;Ljava/util/List;Lcn/domob/wall/core/ControlInfo;)V

    .line 208
    invoke-virtual {p1}, Lcn/domob/wall/core/j;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/k;->g:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Lcn/domob/wall/core/j;->c()Lcn/domob/wall/core/ControlInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->c()I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/k;->k:I

    .line 211
    invoke-virtual {p1}, Lcn/domob/wall/core/j;->c()Lcn/domob/wall/core/ControlInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/ControlInfo;->b()I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/k;->l:I

    .line 215
    :cond_0
    return-void
.end method

.method public a(Lcn/domob/wall/core/j;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 145
    if-eqz p1, :cond_2

    .line 146
    invoke-virtual {p1}, Lcn/domob/wall/core/j;->b()Lcn/domob/wall/core/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lcn/domob/wall/core/j;->b()Lcn/domob/wall/core/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/wall/core/j$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Lcn/domob/wall/core/j;->b()Lcn/domob/wall/core/j$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/j$a;->a()I

    move-result v1

    .line 150
    invoke-virtual {p1}, Lcn/domob/wall/core/j;->a()Ljava/lang/String;

    move-result-object v2

    .line 151
    const-string v3, "error"

    const-string v4, "Response contains error info. Error code is [%d-%s] and error content is [%s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    div-int/lit16 v1, v1, 0x3e8

    packed-switch v1, :pswitch_data_0

    .line 177
    :goto_0
    sget-object v1, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    invoke-virtual {p0, v1, v0}, Lcn/domob/wall/core/k;->a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    .line 198
    :goto_1
    return-void

    .line 158
    :pswitch_0
    sget-object v1, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    invoke-virtual {p0, v1, v0}, Lcn/domob/wall/core/k;->a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :pswitch_1
    sget-object v1, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    invoke-virtual {p0, v1, v0}, Lcn/domob/wall/core/k;->a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 166
    :pswitch_2
    sget-object v1, Lcn/domob/wall/core/DService$ErrorCode;->INVALID_REQUEST:Lcn/domob/wall/core/DService$ErrorCode;

    invoke-virtual {p0, v1, v0}, Lcn/domob/wall/core/k;->a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 170
    :pswitch_3
    sget-object v1, Lcn/domob/wall/core/DService$ErrorCode;->NO_FILL:Lcn/domob/wall/core/DService$ErrorCode;

    invoke-virtual {p0, v1, v0}, Lcn/domob/wall/core/k;->a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :pswitch_4
    sget-object v1, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    invoke-virtual {p0, v1, v0}, Lcn/domob/wall/core/k;->a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcn/domob/wall/core/j;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/domob/wall/core/j;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0, p1}, Lcn/domob/wall/core/k;->a(Lcn/domob/wall/core/j;)V

    .line 187
    sget-object v0, Lcn/domob/wall/core/k;->a:Lcn/domob/wall/core/p;

    const-string v1, "Get data response successfully."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :cond_1
    sget-object v0, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcn/domob/wall/core/k;->a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_2
    sget-object v0, Lcn/domob/wall/core/k;->a:Lcn/domob/wall/core/p;

    const-string v1, "AdResponse instance is null. Try to request again after refresh interval."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcn/domob/wall/core/DService$ErrorCode;->INTERNAL_ERROR:Lcn/domob/wall/core/DService$ErrorCode;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcn/domob/wall/core/k;->a(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcn/domob/wall/core/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcn/domob/wall/core/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcn/domob/wall/core/k;->l:I

    return v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcn/domob/wall/core/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcn/domob/wall/core/k;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected h()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcn/domob/wall/core/k;->j:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
