.class abstract enum Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
.super Ljava/lang/Enum;
.source "AnalyticsConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "ACTIONS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

.field public static final enum configureTealeaf:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

.field public static final enum disable:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

.field public static final enum enable:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

.field public static final enum resetConfig:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

.field public static final enum send:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;


# instance fields
.field final configurator:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$1;

    const-string v1, "configureTealeaf"

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->configureTealeaf:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    .line 169
    new-instance v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$2;

    const-string v1, "send"

    invoke-direct {v0, v1, v3}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->send:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    .line 246
    new-instance v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$3;

    const-string v1, "enable"

    invoke-direct {v0, v1, v4}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->enable:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    .line 312
    new-instance v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$4;

    const-string v1, "disable"

    invoke-direct {v0, v1, v5}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->disable:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    .line 334
    new-instance v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$5;

    const-string v1, "resetConfig"

    invoke-direct {v0, v1, v6}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->resetConfig:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    sget-object v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->configureTealeaf:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->send:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->enable:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->disable:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->resetConfig:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    aput-object v1, v0, v6

    sput-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->$VALUES:[Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->configurator:Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/worklight/androidgap/plugin/AnalyticsConfigurator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
    .locals 2
    .parameter "action"

    .prologue
    .line 350
    :try_start_0
    invoke-static {p0}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 352
    :goto_0
    return-object v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
    .locals 1
    .parameter "name"

    .prologue
    .line 74
    const-class v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    return-object v0
.end method

.method public static values()[Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->$VALUES:[Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    invoke-virtual {v0}, [Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;

    return-object v0
.end method


# virtual methods
.method public abstract doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method
