.class final enum Lcn/domob/wall/core/ControlInfo$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/ControlInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/wall/core/ControlInfo$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/wall/core/ControlInfo$a;

.field public static final enum b:Lcn/domob/wall/core/ControlInfo$a;

.field public static final enum c:Lcn/domob/wall/core/ControlInfo$a;

.field private static final synthetic d:[Lcn/domob/wall/core/ControlInfo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    new-instance v0, Lcn/domob/wall/core/ControlInfo$a;

    const-string v1, "HOUSEAD_FIRST"

    invoke-direct {v0, v1, v2}, Lcn/domob/wall/core/ControlInfo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/ControlInfo$a;->a:Lcn/domob/wall/core/ControlInfo$a;

    new-instance v0, Lcn/domob/wall/core/ControlInfo$a;

    const-string v1, "XXRYM_FIRST"

    invoke-direct {v0, v1, v3}, Lcn/domob/wall/core/ControlInfo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/ControlInfo$a;->b:Lcn/domob/wall/core/ControlInfo$a;

    new-instance v0, Lcn/domob/wall/core/ControlInfo$a;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v4}, Lcn/domob/wall/core/ControlInfo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/wall/core/ControlInfo$a;->c:Lcn/domob/wall/core/ControlInfo$a;

    .line 196
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/domob/wall/core/ControlInfo$a;

    sget-object v1, Lcn/domob/wall/core/ControlInfo$a;->a:Lcn/domob/wall/core/ControlInfo$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/wall/core/ControlInfo$a;->b:Lcn/domob/wall/core/ControlInfo$a;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/wall/core/ControlInfo$a;->c:Lcn/domob/wall/core/ControlInfo$a;

    aput-object v1, v0, v4

    sput-object v0, Lcn/domob/wall/core/ControlInfo$a;->d:[Lcn/domob/wall/core/ControlInfo$a;

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
    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/wall/core/ControlInfo$a;
    .locals 1
    .parameter "name"

    .prologue
    .line 196
    const-class v0, Lcn/domob/wall/core/ControlInfo$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/wall/core/ControlInfo$a;

    return-object v0
.end method

.method public static values()[Lcn/domob/wall/core/ControlInfo$a;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcn/domob/wall/core/ControlInfo$a;->d:[Lcn/domob/wall/core/ControlInfo$a;

    invoke-virtual {v0}, [Lcn/domob/wall/core/ControlInfo$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/wall/core/ControlInfo$a;

    return-object v0
.end method
