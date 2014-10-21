.class public Lcom/MobileTicket/CheckCodeUtil;
.super Ljava/lang/Object;
.source "CheckCodeUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "checkcode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkcode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 11
    const-string v1, ""

    invoke-static {v1, p0}, Lcom/MobileTicket/CheckCodeUtil;->checkcode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    .local v0, str2:Ljava/lang/String;
    return-object v0
.end method

.method public static native checkcode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
