.class final enum Lcn/domob/wall/core/r$l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/wall/core/r$l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/wall/core/r$l;

.field public static final enum b:Lcn/domob/wall/core/r$l;

.field public static final enum c:Lcn/domob/wall/core/r$l;

.field public static final enum d:Lcn/domob/wall/core/r$l;

.field public static final enum e:Lcn/domob/wall/core/r$l;

.field public static final enum f:Lcn/domob/wall/core/r$l;

.field public static final enum g:Lcn/domob/wall/core/r$l;

.field public static final enum h:Lcn/domob/wall/core/r$l;

.field private static final synthetic i:[Lcn/domob/wall/core/r$l;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    new-instance v0, Lcn/domob/wall/core/r$l;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcn/domob/wall/core/r$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$l;->a:Lcn/domob/wall/core/r$l;

    new-instance v0, Lcn/domob/wall/core/r$l;

    const-string v1, "DL_START"

    invoke-direct {v0, v1, v4}, Lcn/domob/wall/core/r$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$l;->b:Lcn/domob/wall/core/r$l;

    new-instance v0, Lcn/domob/wall/core/r$l;

    const-string v1, "DL_REPEAT"

    invoke-direct {v0, v1, v5}, Lcn/domob/wall/core/r$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$l;->c:Lcn/domob/wall/core/r$l;

    new-instance v0, Lcn/domob/wall/core/r$l;

    const-string v1, "DL_FINISH"

    invoke-direct {v0, v1, v6}, Lcn/domob/wall/core/r$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$l;->d:Lcn/domob/wall/core/r$l;

    new-instance v0, Lcn/domob/wall/core/r$l;

    const-string v1, "DL_FAILED"

    invoke-direct {v0, v1, v7}, Lcn/domob/wall/core/r$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$l;->e:Lcn/domob/wall/core/r$l;

    new-instance v0, Lcn/domob/wall/core/r$l;

    const-string v1, "DL_CANCEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/r$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$l;->f:Lcn/domob/wall/core/r$l;

    new-instance v0, Lcn/domob/wall/core/r$l;

    const-string v1, "INSTALL_SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/r$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$l;->g:Lcn/domob/wall/core/r$l;

    new-instance v0, Lcn/domob/wall/core/r$l;

    const-string v1, "AUTO_RUN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/r$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/r$l;->h:Lcn/domob/wall/core/r$l;

    .line 85
    const/16 v0, 0x8

    new-array v0, v0, [Lcn/domob/wall/core/r$l;

    sget-object v1, Lcn/domob/wall/core/r$l;->a:Lcn/domob/wall/core/r$l;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/wall/core/r$l;->b:Lcn/domob/wall/core/r$l;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/wall/core/r$l;->c:Lcn/domob/wall/core/r$l;

    aput-object v1, v0, v5

    sget-object v1, Lcn/domob/wall/core/r$l;->d:Lcn/domob/wall/core/r$l;

    aput-object v1, v0, v6

    sget-object v1, Lcn/domob/wall/core/r$l;->e:Lcn/domob/wall/core/r$l;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/domob/wall/core/r$l;->f:Lcn/domob/wall/core/r$l;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/domob/wall/core/r$l;->g:Lcn/domob/wall/core/r$l;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/domob/wall/core/r$l;->h:Lcn/domob/wall/core/r$l;

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/wall/core/r$l;->i:[Lcn/domob/wall/core/r$l;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/wall/core/r$l;
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    const-class v0, Lcn/domob/wall/core/r$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/r$l;

    return-object v0
.end method

.method public static values()[Lcn/domob/wall/core/r$l;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcn/domob/wall/core/r$l;->i:[Lcn/domob/wall/core/r$l;

    invoke-virtual {v0}, [Lcn/domob/wall/core/r$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/wall/core/r$l;

    return-object v0
.end method
