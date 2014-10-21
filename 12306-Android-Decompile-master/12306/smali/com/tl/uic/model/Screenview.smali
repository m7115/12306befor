.class public Lcom/tl/uic/model/Screenview;
.super Lcom/tl/uic/model/ClientMessageHeader;
.source "Screenview.java"

# interfaces
.implements Lcom/tl/uic/model/JsonBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6700b639974f07d1L


# instance fields
.field private logicalPageName:Ljava/lang/String;

.field private referringLogicalPageName:Ljava/lang/String;

.field private screenviewType:Lcom/tl/uic/model/ScreenviewType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 30
    invoke-direct {p0}, Lcom/tl/uic/model/Screenview;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tl/uic/model/ScreenviewType;Ljava/lang/String;)V
    .locals 0
    .parameter "logicalPageName"
    .parameter "screenviewType"
    .parameter "referrer"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tl/uic/model/ClientMessageHeader;-><init>()V

    .line 42
    invoke-direct {p0}, Lcom/tl/uic/model/Screenview;->init()V

    .line 43
    iput-object p1, p0, Lcom/tl/uic/model/Screenview;->logicalPageName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/tl/uic/model/Screenview;->screenviewType:Lcom/tl/uic/model/ScreenviewType;

    .line 45
    iput-object p3, p0, Lcom/tl/uic/model/Screenview;->referringLogicalPageName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/tl/uic/model/MessageType;->SCREENVIEW:Lcom/tl/uic/model/MessageType;

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/Screenview;->setMessageType(Lcom/tl/uic/model/MessageType;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tl/uic/model/Screenview;->setLogLevel(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->clean()Ljava/lang/Boolean;

    .line 133
    iput-object v0, p0, Lcom/tl/uic/model/Screenview;->logicalPageName:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/tl/uic/model/Screenview;->screenviewType:Lcom/tl/uic/model/ScreenviewType;

    .line 135
    iput-object v0, p0, Lcom/tl/uic/model/Screenview;->referringLogicalPageName:Ljava/lang/String;

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, jsonObject:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .local v1, jsonInnerObject:Lorg/json/JSONObject;
    :try_start_0
    invoke-super {p0}, Lcom/tl/uic/model/ClientMessageHeader;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 114
    const-string v3, "type"

    invoke-virtual {p0}, Lcom/tl/uic/model/Screenview;->getScreenviewType()Lcom/tl/uic/model/ScreenviewType;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v3, "name"

    invoke-virtual {p0}, Lcom/tl/uic/model/Screenview;->getLogicalPageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {p0}, Lcom/tl/uic/model/Screenview;->getScreenviewType()Lcom/tl/uic/model/ScreenviewType;

    move-result-object v3

    sget-object v4, Lcom/tl/uic/model/ScreenviewType;->LOAD:Lcom/tl/uic/model/ScreenviewType;

    invoke-virtual {v3, v4}, Lcom/tl/uic/model/ScreenviewType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/tl/uic/model/Screenview;->getReferringLogicalPageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 118
    const-string v3, "referrer"

    invoke-virtual {p0}, Lcom/tl/uic/model/Screenview;->getReferringLogicalPageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_0
    const-string v3, "screenview"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-object v2

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getLogicalPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tl/uic/model/Screenview;->logicalPageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferringLogicalPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tl/uic/model/Screenview;->referringLogicalPageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenviewType()Lcom/tl/uic/model/ScreenviewType;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tl/uic/model/Screenview;->screenviewType:Lcom/tl/uic/model/ScreenviewType;

    return-object v0
.end method

.method public final setLogicalPageName(Ljava/lang/String;)V
    .locals 0
    .parameter "logicalPageName"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tl/uic/model/Screenview;->logicalPageName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public final setReferringLogicalPageName(Ljava/lang/String;)V
    .locals 0
    .parameter "referringLogicalPageName"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tl/uic/model/Screenview;->referringLogicalPageName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public final setScreenviewType(Lcom/tl/uic/model/ScreenviewType;)V
    .locals 0
    .parameter "screenviewType"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tl/uic/model/Screenview;->screenviewType:Lcom/tl/uic/model/ScreenviewType;

    .line 103
    return-void
.end method
