.class public Lcom/worklight/common/SSLConfig;
.super Ljava/lang/Object;
.source "SSLConfig.java"


# static fields
.field public static final WL_CLIENT_PROPS_NAME:Ljava/lang/String; = "wlclient.properties"

.field public static final WL_HTTPS_PORT:Ljava/lang/String; = "wlServerHttpsPort"

.field public static final WL_SSL_IGNORE_CERTIFICATE:Ljava/lang/String; = "ignoreSSLCertificate"


# instance fields
.field private context:Landroid/content/Context;

.field private httpsPort:I

.field private isIgnoreSSLCertificate:Z

.field private isPrivateCA:Z

.field private keystore:Ljava/lang/String;

.field private keystorePassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcom/worklight/common/SSLConfig;->isPrivateCA:Z

    .line 19
    iput-boolean v0, p0, Lcom/worklight/common/SSLConfig;->isIgnoreSSLCertificate:Z

    .line 23
    const/16 v0, 0x1bb

    iput v0, p0, Lcom/worklight/common/SSLConfig;->httpsPort:I

    .line 28
    const-string v0, "server_trust2"

    iput-object v0, p0, Lcom/worklight/common/SSLConfig;->keystore:Ljava/lang/String;

    .line 32
    const-string v0, "passw0rd"

    iput-object v0, p0, Lcom/worklight/common/SSLConfig;->keystorePassword:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/worklight/common/SSLConfig;->context:Landroid/content/Context;

    .line 62
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/worklight/common/SSLConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getHttpsPort()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/worklight/common/SSLConfig;->httpsPort:I

    return v0
.end method

.method public getKeystore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/worklight/common/SSLConfig;->keystore:Ljava/lang/String;

    return-object v0
.end method

.method public getKeystorePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/worklight/common/SSLConfig;->keystorePassword:Ljava/lang/String;

    return-object v0
.end method

.method public isIgnoreSSLCertificate()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/worklight/common/SSLConfig;->isIgnoreSSLCertificate:Z

    return v0
.end method

.method public isPrivateCA()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/worklight/common/SSLConfig;->isPrivateCA:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/worklight/common/SSLConfig;->context:Landroid/content/Context;

    .line 58
    return-void
.end method

.method public setHttpsPort(I)V
    .locals 0
    .parameter "httpsPort"

    .prologue
    .line 69
    iput p1, p0, Lcom/worklight/common/SSLConfig;->httpsPort:I

    .line 70
    return-void
.end method

.method public setIgnoreSSLCertificate(Z)V
    .locals 0
    .parameter "isIgnoreSSLCertificate"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/worklight/common/SSLConfig;->isIgnoreSSLCertificate:Z

    .line 66
    return-void
.end method

.method public setKeystore(Ljava/lang/String;)V
    .locals 0
    .parameter "keystore"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/worklight/common/SSLConfig;->keystore:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setKeystorePassword(Ljava/lang/String;)V
    .locals 0
    .parameter "keystorePassword"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/worklight/common/SSLConfig;->keystorePassword:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPrivateCA(Z)V
    .locals 0
    .parameter "isPrivateCA"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/worklight/common/SSLConfig;->isPrivateCA:Z

    .line 50
    return-void
.end method
