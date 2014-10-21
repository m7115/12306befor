.class public final enum Lcom/tl/uic/model/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tl/uic/model/MessageType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final enum CLIENT_STATE:Lcom/tl/uic/model/MessageType;

.field public static final enum CONNECTION:Lcom/tl/uic/model/MessageType;

.field public static final enum CONTROL:Lcom/tl/uic/model/MessageType;

.field public static final enum CUSTOM_EVENT:Lcom/tl/uic/model/MessageType;

.field private static final synthetic ENUM$VALUES:[Lcom/tl/uic/model/MessageType;

.field public static final enum EXCEPTION:Lcom/tl/uic/model/MessageType;

.field public static final enum SCREENVIEW:Lcom/tl/uic/model/MessageType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10
    new-instance v0, Lcom/tl/uic/model/MessageType;

    const-string v1, "CLIENT_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tl/uic/model/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/MessageType;->CLIENT_STATE:Lcom/tl/uic/model/MessageType;

    .line 11
    new-instance v0, Lcom/tl/uic/model/MessageType;

    const-string v1, "SCREENVIEW"

    invoke-direct {v0, v1, v3, v4}, Lcom/tl/uic/model/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/MessageType;->SCREENVIEW:Lcom/tl/uic/model/MessageType;

    .line 12
    new-instance v0, Lcom/tl/uic/model/MessageType;

    const-string v1, "CONNECTION"

    invoke-direct {v0, v1, v4, v5}, Lcom/tl/uic/model/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/MessageType;->CONNECTION:Lcom/tl/uic/model/MessageType;

    .line 13
    new-instance v0, Lcom/tl/uic/model/MessageType;

    const-string v1, "CONTROL"

    invoke-direct {v0, v1, v5, v6}, Lcom/tl/uic/model/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/MessageType;->CONTROL:Lcom/tl/uic/model/MessageType;

    .line 14
    new-instance v0, Lcom/tl/uic/model/MessageType;

    const-string v1, "CUSTOM_EVENT"

    invoke-direct {v0, v1, v6, v7}, Lcom/tl/uic/model/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/MessageType;->CUSTOM_EVENT:Lcom/tl/uic/model/MessageType;

    .line 15
    new-instance v0, Lcom/tl/uic/model/MessageType;

    const-string v1, "EXCEPTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/tl/uic/model/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/MessageType;->EXCEPTION:Lcom/tl/uic/model/MessageType;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tl/uic/model/MessageType;

    const/4 v1, 0x0

    sget-object v2, Lcom/tl/uic/model/MessageType;->CLIENT_STATE:Lcom/tl/uic/model/MessageType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/tl/uic/model/MessageType;->SCREENVIEW:Lcom/tl/uic/model/MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tl/uic/model/MessageType;->CONNECTION:Lcom/tl/uic/model/MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tl/uic/model/MessageType;->CONTROL:Lcom/tl/uic/model/MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tl/uic/model/MessageType;->CUSTOM_EVENT:Lcom/tl/uic/model/MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tl/uic/model/MessageType;->EXCEPTION:Lcom/tl/uic/model/MessageType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/tl/uic/model/MessageType;->ENUM$VALUES:[Lcom/tl/uic/model/MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/tl/uic/model/MessageType;->value:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tl/uic/model/MessageType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tl/uic/model/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tl/uic/model/MessageType;

    return-object v0
.end method

.method public static values()[Lcom/tl/uic/model/MessageType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tl/uic/model/MessageType;->ENUM$VALUES:[Lcom/tl/uic/model/MessageType;

    array-length v1, v0

    new-array v2, v1, [Lcom/tl/uic/model/MessageType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/tl/uic/model/MessageType;->value:I

    return v0
.end method
