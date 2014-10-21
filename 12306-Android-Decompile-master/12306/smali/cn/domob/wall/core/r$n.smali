.class final enum Lcn/domob/wall/core/r$n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/wall/core/r$n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/wall/core/r$n;

.field public static final enum b:Lcn/domob/wall/core/r$n;

.field public static final enum c:Lcn/domob/wall/core/r$n;

.field public static final enum d:Lcn/domob/wall/core/r$n;

.field public static final enum e:Lcn/domob/wall/core/r$n;

.field public static final enum f:Lcn/domob/wall/core/r$n;

.field public static final enum g:Lcn/domob/wall/core/r$n;

.field private static final synthetic h:[Lcn/domob/wall/core/r$n;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    new-instance v0, Lcn/domob/wall/core/r$n;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcn/domob/wall/core/r$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$n;->a:Lcn/domob/wall/core/r$n;

    new-instance v0, Lcn/domob/wall/core/r$n;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcn/domob/wall/core/r$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$n;->b:Lcn/domob/wall/core/r$n;

    new-instance v0, Lcn/domob/wall/core/r$n;

    const-string v1, "LANDINGPAGE"

    invoke-direct {v0, v1, v5}, Lcn/domob/wall/core/r$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$n;->c:Lcn/domob/wall/core/r$n;

    new-instance v0, Lcn/domob/wall/core/r$n;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v6}, Lcn/domob/wall/core/r$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$n;->d:Lcn/domob/wall/core/r$n;

    new-instance v0, Lcn/domob/wall/core/r$n;

    const-string v1, "IMPRESSION"

    invoke-direct {v0, v1, v7}, Lcn/domob/wall/core/r$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$n;->e:Lcn/domob/wall/core/r$n;

    new-instance v0, Lcn/domob/wall/core/r$n;

    const-string v1, "USER_ACTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/r$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$n;->f:Lcn/domob/wall/core/r$n;

    new-instance v0, Lcn/domob/wall/core/r$n;

    const-string v1, "LAUNCH_APP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/r$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$n;->g:Lcn/domob/wall/core/r$n;

    .line 75
    const/4 v0, 0x7

    new-array v0, v0, [Lcn/domob/wall/core/r$n;

    sget-object v1, Lcn/domob/wall/core/r$n;->a:Lcn/domob/wall/core/r$n;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/wall/core/r$n;->b:Lcn/domob/wall/core/r$n;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/wall/core/r$n;->c:Lcn/domob/wall/core/r$n;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/wall/core/r$n;->d:Lcn/domob/wall/core/r$n;

    aput-object v1, v0, v6

    sget-object v1, Lcn/domob/wall/core/r$n;->e:Lcn/domob/wall/core/r$n;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/domob/wall/core/r$n;->f:Lcn/domob/wall/core/r$n;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/domob/wall/core/r$n;->g:Lcn/domob/wall/core/r$n;

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/wall/core/r$n;->h:[Lcn/domob/wall/core/r$n;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/wall/core/r$n;
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    const-class v0, Lcn/domob/wall/core/r$n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/r$n;

    return-object v0
.end method

.method public static values()[Lcn/domob/wall/core/r$n;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcn/domob/wall/core/r$n;->h:[Lcn/domob/wall/core/r$n;

    invoke-virtual {v0}, [Lcn/domob/wall/core/r$n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/wall/core/r$n;

    return-object v0
.end method
