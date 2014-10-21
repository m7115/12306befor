.class public final enum Lcom/tl/uic/model/KeyboardType;
.super Ljava/lang/Enum;
.source "KeyboardType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tl/uic/model/KeyboardType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tl/uic/model/KeyboardType;

.field public static final enum NO_KEYS:Lcom/tl/uic/model/KeyboardType;

.field public static final enum QWERTY:Lcom/tl/uic/model/KeyboardType;

.field public static final enum TWELVE_KEYS:Lcom/tl/uic/model/KeyboardType;

.field public static final enum UNDEFINED:Lcom/tl/uic/model/KeyboardType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/tl/uic/model/KeyboardType;

    const-string v1, "TWELVE_KEYS"

    invoke-direct {v0, v1, v2, v2}, Lcom/tl/uic/model/KeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/KeyboardType;->TWELVE_KEYS:Lcom/tl/uic/model/KeyboardType;

    .line 11
    new-instance v0, Lcom/tl/uic/model/KeyboardType;

    const-string v1, "NO_KEYS"

    invoke-direct {v0, v1, v3, v3}, Lcom/tl/uic/model/KeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/KeyboardType;->NO_KEYS:Lcom/tl/uic/model/KeyboardType;

    .line 12
    new-instance v0, Lcom/tl/uic/model/KeyboardType;

    const-string v1, "QWERTY"

    invoke-direct {v0, v1, v4, v4}, Lcom/tl/uic/model/KeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/KeyboardType;->QWERTY:Lcom/tl/uic/model/KeyboardType;

    .line 13
    new-instance v0, Lcom/tl/uic/model/KeyboardType;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v5, v5}, Lcom/tl/uic/model/KeyboardType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/KeyboardType;->UNDEFINED:Lcom/tl/uic/model/KeyboardType;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tl/uic/model/KeyboardType;

    sget-object v1, Lcom/tl/uic/model/KeyboardType;->TWELVE_KEYS:Lcom/tl/uic/model/KeyboardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tl/uic/model/KeyboardType;->NO_KEYS:Lcom/tl/uic/model/KeyboardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tl/uic/model/KeyboardType;->QWERTY:Lcom/tl/uic/model/KeyboardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tl/uic/model/KeyboardType;->UNDEFINED:Lcom/tl/uic/model/KeyboardType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tl/uic/model/KeyboardType;->ENUM$VALUES:[Lcom/tl/uic/model/KeyboardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/tl/uic/model/KeyboardType;->value:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tl/uic/model/KeyboardType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tl/uic/model/KeyboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tl/uic/model/KeyboardType;

    return-object v0
.end method

.method public static values()[Lcom/tl/uic/model/KeyboardType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tl/uic/model/KeyboardType;->ENUM$VALUES:[Lcom/tl/uic/model/KeyboardType;

    array-length v1, v0

    new-array v2, v1, [Lcom/tl/uic/model/KeyboardType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/tl/uic/model/KeyboardType;->value:I

    return v0
.end method
