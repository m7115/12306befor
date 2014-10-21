.class public Lcom/tl/uic/model/TLFCacheFile;
.super Ljava/lang/Object;
.source "TLFCacheFile.java"

# interfaces
.implements Lcom/tl/uic/model/ModelBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x606fd8b96a0aef31L


# instance fields
.field private _isImage:Ljava/lang/Boolean;

.field private data:Ljava/lang/Object;

.field private directory:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/model/TLFCacheFile;->_isImage:Ljava/lang/Boolean;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "sessionId"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/model/TLFCacheFile;->_isImage:Ljava/lang/Boolean;

    .line 34
    iput-object p1, p0, Lcom/tl/uic/model/TLFCacheFile;->data:Ljava/lang/Object;

    .line 35
    iput-object p2, p0, Lcom/tl/uic/model/TLFCacheFile;->sessionId:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final clean()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/model/TLFCacheFile;->_isImage:Ljava/lang/Boolean;

    .line 134
    iget-object v0, p0, Lcom/tl/uic/model/TLFCacheFile;->data:Ljava/lang/Object;

    invoke-static {v0}, Lcom/tl/uic/util/GCUtil;->clean(Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 135
    iput-object v1, p0, Lcom/tl/uic/model/TLFCacheFile;->data:Ljava/lang/Object;

    .line 136
    iput-object v1, p0, Lcom/tl/uic/model/TLFCacheFile;->sessionId:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/tl/uic/model/TLFCacheFile;->directory:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/tl/uic/model/TLFCacheFile;->fileName:Ljava/lang/String;

    .line 139
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tl/uic/model/TLFCacheFile;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tl/uic/model/TLFCacheFile;->directory:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tl/uic/model/TLFCacheFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tl/uic/model/TLFCacheFile;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final isImage()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tl/uic/model/TLFCacheFile;->_isImage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isImage(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "isImage"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tl/uic/model/TLFCacheFile;->_isImage:Ljava/lang/Boolean;

    .line 54
    return-void
.end method

.method public final setData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tl/uic/model/TLFCacheFile;->data:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public final setDirectory(Ljava/lang/String;)V
    .locals 0
    .parameter "directory"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/tl/uic/model/TLFCacheFile;->directory:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tl/uic/model/TLFCacheFile;->fileName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public final setSessionId(Ljava/lang/String;)V
    .locals 0
    .parameter "sessionId"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/tl/uic/model/TLFCacheFile;->sessionId:Ljava/lang/String;

    .line 90
    return-void
.end method
