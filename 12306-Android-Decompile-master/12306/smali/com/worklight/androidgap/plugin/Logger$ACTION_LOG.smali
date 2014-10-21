.class public abstract enum Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ACTION_LOG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

.field public static final enum DEBUG:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

.field public static final enum ERROR:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

.field public static final enum INFO:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

.field public static final enum LOG:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

.field public static final enum WARN:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG$1;

    const-string v1, "LOG"

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->LOG:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    .line 34
    new-instance v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG$2;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->INFO:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    .line 40
    new-instance v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG$3;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v4}, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->WARN:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    .line 46
    new-instance v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG$4;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->ERROR:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    .line 52
    new-instance v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG$5;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v6}, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->DEBUG:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    sget-object v1, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->LOG:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    aput-object v1, v0, v2

    sget-object v1, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->INFO:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    aput-object v1, v0, v3

    sget-object v1, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->WARN:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    aput-object v1, v0, v4

    sget-object v1, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->ERROR:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    aput-object v1, v0, v5

    sget-object v1, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->DEBUG:Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    aput-object v1, v0, v6

    sput-object v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->$VALUES:[Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/worklight/androidgap/plugin/Logger$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
    .locals 2
    .parameter "action"

    .prologue
    .line 63
    :try_start_0
    invoke-static {p0}, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    return-object v0
.end method

.method public static values()[Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->$VALUES:[Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    invoke-virtual {v0}, [Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/worklight/androidgap/plugin/Logger$ACTION_LOG;

    return-object v0
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;Ljava/lang/String;)V
.end method
