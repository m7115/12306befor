.class final enum Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;
.super Ljava/lang/Enum;
.source "AnalyticsConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OPTIONS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

.field public static final enum ENABLED:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

.field public static final enum TEALEAF_PROPS:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->ENABLED:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    .line 65
    new-instance v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    const-string v1, "TEALEAF_PROPS"

    invoke-direct {v0, v1, v3}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->TEALEAF_PROPS:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    sget-object v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->ENABLED:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->TEALEAF_PROPS:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->$VALUES:[Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;
    .locals 1
    .parameter "name"

    .prologue
    .line 63
    const-class v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    return-object v0
.end method

.method public static values()[Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->$VALUES:[Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    invoke-virtual {v0}, [Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$OPTIONS;

    return-object v0
.end method
