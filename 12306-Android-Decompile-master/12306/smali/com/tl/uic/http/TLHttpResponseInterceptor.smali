.class public Lcom/tl/uic/http/TLHttpResponseInterceptor;
.super Ljava/lang/Object;
.source "TLHttpResponseInterceptor.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# instance fields
.field private final initTime:J

.field private final startTime:Ljava/util/Date;

.field private final tlHttpRequestInterceptor:Lcom/tl/uic/http/TLHttpRequestInterceptor;


# direct methods
.method public constructor <init>(Lcom/tl/uic/http/TLHttpRequestInterceptor;)V
    .locals 2
    .parameter "tlHttpRequestInterceptor"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/tl/uic/http/TLHttpResponseInterceptor;->tlHttpRequestInterceptor:Lcom/tl/uic/http/TLHttpRequestInterceptor;

    .line 31
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/tl/uic/http/TLHttpResponseInterceptor;->startTime:Ljava/util/Date;

    .line 32
    invoke-static {}, Lcom/tl/uic/TLFCache;->timestampFromSession()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tl/uic/http/TLHttpResponseInterceptor;->initTime:J

    .line 33
    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 11
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 41
    .local v9, endTime:Ljava/util/Date;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 42
    .local v10, startLoad:Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 43
    .local v4, loadTime:J
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tl/uic/http/TLHttpResponseInterceptor;->startTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 44
    .local v6, responseTime:J
    iget-object v0, p0, Lcom/tl/uic/http/TLHttpResponseInterceptor;->tlHttpRequestInterceptor:Lcom/tl/uic/http/TLHttpRequestInterceptor;

    invoke-virtual {v0}, Lcom/tl/uic/http/TLHttpRequestInterceptor;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/tl/uic/http/TLHttpResponseInterceptor;->initTime:J

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/tl/uic/Tealeaf;->logConnection(Ljava/lang/String;Lorg/apache/http/HttpResponse;JJJ)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v4           #loadTime:J
    .end local v6           #responseTime:J
    .end local v9           #endTime:Ljava/util/Date;
    .end local v10           #startLoad:Ljava/util/Date;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v8

    .line 46
    .local v8, e:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
