.class Lcn/domob/wall/core/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/wall/core/f$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "GET"

.field static final b:Ljava/lang/String; = "POST"

.field static final c:I = 0x4e20

.field private static d:Lcn/domob/wall/core/p; = null

.field private static final t:I = 0x1000

.field private static final u:Ljava/lang/String; = "ctwap"


# instance fields
.field private e:Ljava/net/HttpURLConnection;

.field private f:Landroid/content/Context;

.field private g:Ljava/net/URL;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/net/Proxy;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Lcn/domob/wall/core/f$a;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcn/domob/wall/core/p;

    const-class v1, Lcn/domob/wall/core/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/wall/core/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/wall/core/f$a;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 70
    const-string v5, "GET"

    const/16 v7, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/f$a;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/wall/core/f$a;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 84
    const-string v5, "POST"

    const/16 v7, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcn/domob/wall/core/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/f$a;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;ILcn/domob/wall/core/f$a;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcn/domob/wall/core/f$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcn/domob/wall/core/f;->f:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lcn/domob/wall/core/f;->i:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcn/domob/wall/core/f;->j:Ljava/util/HashMap;

    .line 109
    iput-object p5, p0, Lcn/domob/wall/core/f;->h:Ljava/lang/String;

    .line 110
    iput-object p6, p0, Lcn/domob/wall/core/f;->l:Ljava/lang/String;

    .line 111
    iput p7, p0, Lcn/domob/wall/core/f;->m:I

    .line 112
    iput-object p8, p0, Lcn/domob/wall/core/f;->n:Lcn/domob/wall/core/f$a;

    .line 114
    iget-object v0, p0, Lcn/domob/wall/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 122
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/domob/wall/core/f;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 123
    const-string v0, "GET"

    iput-object v0, p0, Lcn/domob/wall/core/f;->h:Ljava/lang/String;

    .line 126
    :cond_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    iget-object v0, p0, Lcn/domob/wall/core/f;->h:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p6, :cond_4

    .line 129
    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 130
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/wall/core/f;->g:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iget-object v0, p0, Lcn/domob/wall/core/f;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 147
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcn/domob/wall/core/f;->o:Ljava/lang/String;

    .line 153
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcn/domob/wall/core/f;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 162
    :goto_1
    return-void

    .line 132
    :cond_3
    :try_start_2
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/wall/core/f;->g:Ljava/net/URL;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    sget-object v0, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL string:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Failed to init connector."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_4
    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/wall/core/f;->g:Ljava/net/URL;

    goto :goto_0

    .line 139
    :cond_5
    sget-object v0, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    const-string v1, "Request URL is null or empty."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    .line 155
    sget-object v1, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    const-string v2, "get error when dealing with apn"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 157
    :catch_2
    move-exception v0

    .line 158
    sget-object v1, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    const-string v2, "get error when dealing with apn"

    invoke-virtual {v1, v2}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 159
    sget-object v1, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private final a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 205
    sget-object v0, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProxy -- proxy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "| port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcn/domob/wall/core/f;->k:Ljava/net/Proxy;

    .line 207
    return-void
.end method

.method private h()V
    .locals 7

    .prologue
    .line 168
    iget-object v0, p0, Lcn/domob/wall/core/f;->f:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const/4 v1, 0x0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcn/domob/wall/core/f;->f:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/wall/core/l;->t(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 177
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 178
    const-string v0, "proxy"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v2, "port"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 183
    const-string v3, "apn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    sget-object v4, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current apnType is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    sget-object v4, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "proxy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "| port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    const-string v4, "ctwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    sget-object v3, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    const-string v4, "ad request use proxy"

    invoke-virtual {v3, p0, v4}, Lcn/domob/wall/core/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, v0, v2}, Lcn/domob/wall/core/f;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_2
    if-eqz v1, :cond_0

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    :try_start_1
    sget-object v2, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    const-string v3, "\u83b7\u53d6APN\u5931\u8d25"

    invoke-virtual {v2, p0, v3}, Lcn/domob/wall/core/p;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v2, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    if-eqz v1, :cond_0

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 198
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcn/domob/wall/core/f;->p:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcn/domob/wall/core/f;->p:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 229
    sget-object v0, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    const-string v1, "Do HTTP connection."

    invoke-virtual {v0, p0, v1}, Lcn/domob/wall/core/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 231
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 238
    .line 242
    :try_start_0
    iget-object v0, p0, Lcn/domob/wall/core/f;->g:Ljava/net/URL;

    if-eqz v0, :cond_f

    .line 243
    sget-object v0, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection URL = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/wall/core/f;->g:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 246
    iget-object v0, p0, Lcn/domob/wall/core/f;->k:Ljava/net/Proxy;

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lcn/domob/wall/core/f;->g:Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/wall/core/f;->k:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    .line 253
    :goto_0
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_f

    .line 254
    iget-object v0, p0, Lcn/domob/wall/core/f;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/wall/core/f;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    iget-object v3, p0, Lcn/domob/wall/core/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 262
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/domob/wall/core/f;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 263
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/domob/wall/core/f;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 265
    iget-object v0, p0, Lcn/domob/wall/core/f;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    .line 266
    iget-object v0, p0, Lcn/domob/wall/core/f;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcn/domob/wall/core/f;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 268
    if-eqz v1, :cond_1

    .line 269
    iget-object v4, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 339
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 340
    :goto_2
    :try_start_1
    sget-object v3, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    const-string v4, "Error happened in connection."

    invoke-virtual {v3, p0, v4}, Lcn/domob/wall/core/p;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    sget-object v3, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v3, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 345
    if-eqz v2, :cond_2

    .line 346
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 353
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 354
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 360
    :cond_3
    :goto_4
    return-void

    .line 250
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcn/domob/wall/core/f;->g:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 345
    :goto_5
    if-eqz v3, :cond_5

    .line 346
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 353
    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    .line 354
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 358
    :cond_6
    :goto_7
    throw v0

    .line 274
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcn/domob/wall/core/f;->h:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/domob/wall/core/f;->l:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 276
    sget-object v0, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    const-string v1, "Connector do HTTP POST."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 279
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    iget-object v3, p0, Lcn/domob/wall/core/f;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    iget-object v3, p0, Lcn/domob/wall/core/f;->l:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x1000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 289
    if-eqz v1, :cond_8

    .line 290
    iget-object v3, p0, Lcn/domob/wall/core/f;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 292
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 293
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 304
    :cond_8
    :goto_8
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/f;->q:I

    .line 307
    :goto_9
    iget v0, p0, Lcn/domob/wall/core/f;->q:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcn/domob/wall/core/f;->q:I

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_b

    .line 308
    :cond_9
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    .line 311
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 312
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/f;->q:I

    goto :goto_9

    .line 298
    :cond_a
    sget-object v0, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    const-string v1, "Connector do HTTP GET."

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto :goto_8

    .line 315
    :cond_b
    iget v0, p0, Lcn/domob/wall/core/f;->q:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lcn/domob/wall/core/f;->q:I

    const/16 v1, 0x130

    if-gt v0, v1, :cond_e

    .line 317
    sget-object v0, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL after connection/redirection:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/wall/core/p;->b(Ljava/lang/String;)V

    .line 320
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 322
    const/16 v0, 0x1000

    :try_start_8
    new-array v0, v0, [B

    .line 324
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 326
    :goto_a
    :try_start_9
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_c

    .line 327
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 339
    :catch_1
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2

    .line 330
    :cond_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/f;->s:[B

    .line 332
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/wall/core/f;->s:[B

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcn/domob/wall/core/f;->r:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object v2, v3

    .line 336
    :goto_b
    :try_start_a
    iget-object v0, p0, Lcn/domob/wall/core/f;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    move-object v0, v2

    move-object v2, v1

    .line 345
    :goto_c
    if-eqz v0, :cond_d

    .line 346
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 353
    :cond_d
    :goto_d
    if-eqz v2, :cond_3

    .line 354
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_4

    .line 356
    :catch_2
    move-exception v0

    .line 357
    sget-object v1, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 348
    :catch_3
    move-exception v0

    .line 349
    sget-object v1, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto :goto_d

    .line 348
    :catch_4
    move-exception v0

    .line 349
    sget-object v2, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 356
    :catch_5
    move-exception v0

    .line 357
    sget-object v1, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v1, v0}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 348
    :catch_6
    move-exception v1

    .line 349
    sget-object v3, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v3, v1}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 356
    :catch_7
    move-exception v1

    .line 357
    sget-object v2, Lcn/domob/wall/core/f;->d:Lcn/domob/wall/core/p;

    invoke-virtual {v2, v1}, Lcn/domob/wall/core/p;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 344
    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_5

    .line 339
    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :cond_e
    move-object v1, v2

    goto :goto_b

    :cond_f
    move-object v0, v2

    goto :goto_c
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcn/domob/wall/core/f;->s:[B

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcn/domob/wall/core/f;->r:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcn/domob/wall/core/f;->q:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcn/domob/wall/core/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcn/domob/wall/core/f;->c()V

    .line 382
    iget-object v0, p0, Lcn/domob/wall/core/f;->n:Lcn/domob/wall/core/f$a;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcn/domob/wall/core/f;->n:Lcn/domob/wall/core/f$a;

    invoke-interface {v0, p0}, Lcn/domob/wall/core/f$a;->a(Lcn/domob/wall/core/f;)V

    .line 386
    :cond_0
    return-void
.end method
