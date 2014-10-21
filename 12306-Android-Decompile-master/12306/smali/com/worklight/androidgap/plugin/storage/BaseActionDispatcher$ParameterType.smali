.class public final enum Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
.super Ljava/lang/Enum;
.source "BaseActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParameterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

.field public static final enum ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

.field public static final enum BOOLEAN:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

.field public static final enum DOUBLE:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

.field public static final enum INTEGER:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

.field public static final enum LONG:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

.field public static final enum OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

.field public static final enum STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const-string v1, "ARRAY"

    invoke-direct {v0, v1, v3}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    .line 260
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v4}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->BOOLEAN:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    .line 261
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v5}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->DOUBLE:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    .line 262
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v6}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->INTEGER:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    .line 263
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v7}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->LONG:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    .line 264
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const-string v1, "OBJECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    .line 265
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    const-string v1, "STRING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    .line 258
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v1, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->ARRAY:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->BOOLEAN:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->DOUBLE:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->INTEGER:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->LONG:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->$VALUES:[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
    .locals 1
    .parameter "name"

    .prologue
    .line 258
    const-class v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    return-object v0
.end method

.method public static values()[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->$VALUES:[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    invoke-virtual {v0}, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    return-object v0
.end method
