.class public final enum Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
.super Ljava/lang/Enum;
.source "DatabaseSchemaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

.field public static final enum BOOLEAN:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

.field public static final enum INTEGER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

.field public static final enum NUMBER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

.field public static final enum STRING:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;


# instance fields
.field private mappedType:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    const-string v1, "BOOLEAN"

    const-string v2, "boolean"

    const-string v3, "INTEGER"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->BOOLEAN:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    .line 16
    new-instance v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    const-string v1, "INTEGER"

    const-string v2, "integer"

    const-string v3, "INTEGER"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->INTEGER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    .line 17
    new-instance v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    const-string v1, "NUMBER"

    const-string v2, "number"

    const-string v3, "REAL"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->NUMBER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    .line 18
    new-instance v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    const-string v1, "STRING"

    const-string v2, "string"

    const-string v3, "TEXT"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->STRING:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->BOOLEAN:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->INTEGER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->NUMBER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->STRING:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->$VALUES:[Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "mappedType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->name:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->mappedType:Ljava/lang/String;

    .line 26
    return-void
.end method

.method protected static fromString(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    .locals 1
    .parameter "value"

    .prologue
    .line 29
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->BOOLEAN:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->BOOLEAN:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    .line 45
    :goto_0
    return-object v0

    .line 33
    :cond_0
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->INTEGER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->INTEGER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    goto :goto_0

    .line 37
    :cond_1
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->NUMBER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->NUMBER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    goto :goto_0

    .line 41
    :cond_2
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->STRING:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->STRING:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    goto :goto_0

    .line 45
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    return-object v0
.end method

.method public static values()[Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->$VALUES:[Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    invoke-virtual {v0}, [Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    return-object v0
.end method


# virtual methods
.method public getMappedType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->mappedType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->name:Ljava/lang/String;

    return-object v0
.end method
