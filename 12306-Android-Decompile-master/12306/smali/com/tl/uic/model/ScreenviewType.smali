.class public final enum Lcom/tl/uic/model/ScreenviewType;
.super Ljava/lang/Enum;
.source "ScreenviewType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tl/uic/model/ScreenviewType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tl/uic/model/ScreenviewType;

.field public static final enum LOAD:Lcom/tl/uic/model/ScreenviewType;

.field public static final enum UNLOAD:Lcom/tl/uic/model/ScreenviewType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/tl/uic/model/ScreenviewType;

    const-string v1, "LOAD"

    invoke-direct {v0, v1, v2, v2}, Lcom/tl/uic/model/ScreenviewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/ScreenviewType;->LOAD:Lcom/tl/uic/model/ScreenviewType;

    .line 11
    new-instance v0, Lcom/tl/uic/model/ScreenviewType;

    const-string v1, "UNLOAD"

    invoke-direct {v0, v1, v3, v3}, Lcom/tl/uic/model/ScreenviewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/ScreenviewType;->UNLOAD:Lcom/tl/uic/model/ScreenviewType;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tl/uic/model/ScreenviewType;

    sget-object v1, Lcom/tl/uic/model/ScreenviewType;->LOAD:Lcom/tl/uic/model/ScreenviewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tl/uic/model/ScreenviewType;->UNLOAD:Lcom/tl/uic/model/ScreenviewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tl/uic/model/ScreenviewType;->ENUM$VALUES:[Lcom/tl/uic/model/ScreenviewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/tl/uic/model/ScreenviewType;->value:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tl/uic/model/ScreenviewType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tl/uic/model/ScreenviewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tl/uic/model/ScreenviewType;

    return-object v0
.end method

.method public static values()[Lcom/tl/uic/model/ScreenviewType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tl/uic/model/ScreenviewType;->ENUM$VALUES:[Lcom/tl/uic/model/ScreenviewType;

    array-length v1, v0

    new-array v2, v1, [Lcom/tl/uic/model/ScreenviewType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/tl/uic/model/ScreenviewType;->value:I

    return v0
.end method
