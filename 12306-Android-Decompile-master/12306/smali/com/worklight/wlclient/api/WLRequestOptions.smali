.class public Lcom/worklight/wlclient/api/WLRequestOptions;
.super Ljava/lang/Object;
.source "WLRequestOptions.java"


# instance fields
.field private fromChallenge:Z

.field private headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private invocationContext:Ljava/lang/Object;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseListener:Lcom/worklight/wlclient/api/WLResponseListener;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->parameters:Ljava/util/Map;

    .line 34
    const/16 v0, 0x2710

    iput v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->timeout:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->headers:Ljava/util/ArrayList;

    .line 46
    return-void
.end method


# virtual methods
.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 122
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/worklight/wlclient/api/WLRequestOptions;->addHeader(Lorg/apache/http/Header;)V

    .line 123
    return-void
.end method

.method addHeader(Lorg/apache/http/Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method addParameters(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 104
    return-void
.end method

.method public getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->headers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInvocationContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->invocationContext:Ljava/lang/Object;

    return-object v0
.end method

.method getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->parameters:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method getResponseListener()Lcom/worklight/wlclient/api/WLResponseListener;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->responseListener:Lcom/worklight/wlclient/api/WLResponseListener;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->timeout:I

    return v0
.end method

.method public isFromChallenge()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->fromChallenge:Z

    return v0
.end method

.method public setFromChallenge(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->fromChallenge:Z

    .line 145
    return-void
.end method

.method setHeaders(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, extraHeaders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/Header;>;"
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->headers:Ljava/util/ArrayList;

    .line 127
    return-void
.end method

.method public setInvocationContext(Ljava/lang/Object;)V
    .locals 0
    .parameter "invocationContext"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->invocationContext:Ljava/lang/Object;

    .line 86
    return-void
.end method

.method setResponseListener(Lcom/worklight/wlclient/api/WLResponseListener;)V
    .locals 0
    .parameter "responseListener"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->responseListener:Lcom/worklight/wlclient/api/WLResponseListener;

    .line 100
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 64
    iput p1, p0, Lcom/worklight/wlclient/api/WLRequestOptions;->timeout:I

    .line 65
    return-void
.end method
