.class public final enum Lcom/tl/uic/model/StorageType;
.super Ljava/lang/Enum;
.source "StorageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tl/uic/model/StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tl/uic/model/StorageType;

.field public static final enum PHONE_FREE:Lcom/tl/uic/model/StorageType;

.field public static final enum PHONE_TOTAL:Lcom/tl/uic/model/StorageType;

.field public static final enum PHONE_USED:Lcom/tl/uic/model/StorageType;

.field public static final enum SD_CARD_FREE:Lcom/tl/uic/model/StorageType;

.field public static final enum SD_CARD_TOTAL:Lcom/tl/uic/model/StorageType;

.field public static final enum SD_CARD_USED:Lcom/tl/uic/model/StorageType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/tl/uic/model/StorageType;

    const-string v1, "PHONE_FREE"

    invoke-direct {v0, v1, v4, v4}, Lcom/tl/uic/model/StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/StorageType;->PHONE_FREE:Lcom/tl/uic/model/StorageType;

    .line 9
    new-instance v0, Lcom/tl/uic/model/StorageType;

    const-string v1, "PHONE_USED"

    invoke-direct {v0, v1, v5, v5}, Lcom/tl/uic/model/StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/StorageType;->PHONE_USED:Lcom/tl/uic/model/StorageType;

    .line 10
    new-instance v0, Lcom/tl/uic/model/StorageType;

    const-string v1, "PHONE_TOTAL"

    invoke-direct {v0, v1, v6, v6}, Lcom/tl/uic/model/StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/StorageType;->PHONE_TOTAL:Lcom/tl/uic/model/StorageType;

    .line 11
    new-instance v0, Lcom/tl/uic/model/StorageType;

    const-string v1, "SD_CARD_FREE"

    invoke-direct {v0, v1, v7, v7}, Lcom/tl/uic/model/StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/StorageType;->SD_CARD_FREE:Lcom/tl/uic/model/StorageType;

    .line 12
    new-instance v0, Lcom/tl/uic/model/StorageType;

    const-string v1, "SD_CARD_USED"

    invoke-direct {v0, v1, v8, v8}, Lcom/tl/uic/model/StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/StorageType;->SD_CARD_USED:Lcom/tl/uic/model/StorageType;

    .line 13
    new-instance v0, Lcom/tl/uic/model/StorageType;

    const-string v1, "SD_CARD_TOTAL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/tl/uic/model/StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tl/uic/model/StorageType;->SD_CARD_TOTAL:Lcom/tl/uic/model/StorageType;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tl/uic/model/StorageType;

    sget-object v1, Lcom/tl/uic/model/StorageType;->PHONE_FREE:Lcom/tl/uic/model/StorageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tl/uic/model/StorageType;->PHONE_USED:Lcom/tl/uic/model/StorageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tl/uic/model/StorageType;->PHONE_TOTAL:Lcom/tl/uic/model/StorageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tl/uic/model/StorageType;->SD_CARD_FREE:Lcom/tl/uic/model/StorageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tl/uic/model/StorageType;->SD_CARD_USED:Lcom/tl/uic/model/StorageType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tl/uic/model/StorageType;->SD_CARD_TOTAL:Lcom/tl/uic/model/StorageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tl/uic/model/StorageType;->ENUM$VALUES:[Lcom/tl/uic/model/StorageType;

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
    iput p3, p0, Lcom/tl/uic/model/StorageType;->value:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tl/uic/model/StorageType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/tl/uic/model/StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tl/uic/model/StorageType;

    return-object v0
.end method

.method public static values()[Lcom/tl/uic/model/StorageType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/tl/uic/model/StorageType;->ENUM$VALUES:[Lcom/tl/uic/model/StorageType;

    array-length v1, v0

    new-array v2, v1, [Lcom/tl/uic/model/StorageType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/tl/uic/model/StorageType;->value:I

    return v0
.end method
