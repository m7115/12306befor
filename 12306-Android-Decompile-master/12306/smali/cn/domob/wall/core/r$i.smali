.class final enum Lcn/domob/wall/core/r$i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/wall/core/r$i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/wall/core/r$i;

.field public static final enum b:Lcn/domob/wall/core/r$i;

.field public static final enum c:Lcn/domob/wall/core/r$i;

.field public static final enum d:Lcn/domob/wall/core/r$i;

.field public static final enum e:Lcn/domob/wall/core/r$i;

.field public static final enum f:Lcn/domob/wall/core/r$i;

.field private static final synthetic g:[Lcn/domob/wall/core/r$i;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcn/domob/wall/core/r$i;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcn/domob/wall/core/r$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$i;->a:Lcn/domob/wall/core/r$i;

    new-instance v0, Lcn/domob/wall/core/r$i;

    const-string v1, "LOAD_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcn/domob/wall/core/r$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$i;->b:Lcn/domob/wall/core/r$i;

    new-instance v0, Lcn/domob/wall/core/r$i;

    const-string v1, "LOAD_FAILED"

    invoke-direct {v0, v1, v5}, Lcn/domob/wall/core/r$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$i;->c:Lcn/domob/wall/core/r$i;

    new-instance v0, Lcn/domob/wall/core/r$i;

    const-string v1, "LOAD_CANCEL"

    invoke-direct {v0, v1, v6}, Lcn/domob/wall/core/r$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$i;->d:Lcn/domob/wall/core/r$i;

    new-instance v0, Lcn/domob/wall/core/r$i;

    const-string v1, "CLOSE_LP"

    invoke-direct {v0, v1, v7}, Lcn/domob/wall/core/r$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$i;->e:Lcn/domob/wall/core/r$i;

    new-instance v0, Lcn/domob/wall/core/r$i;

    const-string v1, "LP_URL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/r$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$i;->f:Lcn/domob/wall/core/r$i;

    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [Lcn/domob/wall/core/r$i;

    sget-object v1, Lcn/domob/wall/core/r$i;->a:Lcn/domob/wall/core/r$i;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/wall/core/r$i;->b:Lcn/domob/wall/core/r$i;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/wall/core/r$i;->c:Lcn/domob/wall/core/r$i;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/wall/core/r$i;->d:Lcn/domob/wall/core/r$i;

    aput-object v1, v0, v6

    sget-object v1, Lcn/domob/wall/core/r$i;->e:Lcn/domob/wall/core/r$i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/domob/wall/core/r$i;->f:Lcn/domob/wall/core/r$i;

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/wall/core/r$i;->g:[Lcn/domob/wall/core/r$i;

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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/wall/core/r$i;
    .locals 1
    .parameter "name"

    .prologue
    .line 95
    const-class v0, Lcn/domob/wall/core/r$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/r$i;

    return-object v0
.end method

.method public static values()[Lcn/domob/wall/core/r$i;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcn/domob/wall/core/r$i;->g:[Lcn/domob/wall/core/r$i;

    invoke-virtual {v0}, [Lcn/domob/wall/core/r$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/wall/core/r$i;

    return-object v0
.end method
