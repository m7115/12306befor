.class final enum Lcom/worklight/androidgap/plugin/Push$ACTION;
.super Ljava/lang/Enum;
.source "Push.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/Push;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/worklight/androidgap/plugin/Push$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/worklight/androidgap/plugin/Push$ACTION;

.field public static final enum dispatch:Lcom/worklight/androidgap/plugin/Push$ACTION;

.field public static final enum subscribe:Lcom/worklight/androidgap/plugin/Push$ACTION;

.field public static final enum token:Lcom/worklight/androidgap/plugin/Push$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/worklight/androidgap/plugin/Push$ACTION;

    const-string v1, "subscribe"

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Push$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Push$ACTION;->subscribe:Lcom/worklight/androidgap/plugin/Push$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Push$ACTION;

    const-string v1, "dispatch"

    invoke-direct {v0, v1, v3}, Lcom/worklight/androidgap/plugin/Push$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Push$ACTION;->dispatch:Lcom/worklight/androidgap/plugin/Push$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Push$ACTION;

    const-string v1, "token"

    invoke-direct {v0, v1, v4}, Lcom/worklight/androidgap/plugin/Push$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Push$ACTION;->token:Lcom/worklight/androidgap/plugin/Push$ACTION;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/worklight/androidgap/plugin/Push$ACTION;

    sget-object v1, Lcom/worklight/androidgap/plugin/Push$ACTION;->subscribe:Lcom/worklight/androidgap/plugin/Push$ACTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/worklight/androidgap/plugin/Push$ACTION;->dispatch:Lcom/worklight/androidgap/plugin/Push$ACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/worklight/androidgap/plugin/Push$ACTION;->token:Lcom/worklight/androidgap/plugin/Push$ACTION;

    aput-object v1, v0, v4

    sput-object v0, Lcom/worklight/androidgap/plugin/Push$ACTION;->$VALUES:[Lcom/worklight/androidgap/plugin/Push$ACTION;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/Push$ACTION;
    .locals 2
    .parameter "Str"

    .prologue
    .line 61
    :try_start_0
    invoke-static {p0}, Lcom/worklight/androidgap/plugin/Push$ACTION;->valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/Push$ACTION;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/Push$ACTION;
    .locals 1
    .parameter "name"

    .prologue
    .line 57
    const-class v0, Lcom/worklight/androidgap/plugin/Push$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/Push$ACTION;

    return-object v0
.end method

.method public static values()[Lcom/worklight/androidgap/plugin/Push$ACTION;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/worklight/androidgap/plugin/Push$ACTION;->$VALUES:[Lcom/worklight/androidgap/plugin/Push$ACTION;

    invoke-virtual {v0}, [Lcom/worklight/androidgap/plugin/Push$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/worklight/androidgap/plugin/Push$ACTION;

    return-object v0
.end method
