.class final enum Lcom/worklight/androidgap/plugin/WifiPlugin$Action;
.super Ljava/lang/Enum;
.source "WifiPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/WifiPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/worklight/androidgap/plugin/WifiPlugin$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

.field public static final enum ACQUIRE_WIFI:Lcom/worklight/androidgap/plugin/WifiPlugin$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

    const-string v1, "ACQUIRE_WIFI"

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;->ACQUIRE_WIFI:Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

    sget-object v1, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;->ACQUIRE_WIFI:Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

    aput-object v1, v0, v2

    sput-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;->$VALUES:[Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/WifiPlugin$Action;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

    return-object v0
.end method

.method public static values()[Lcom/worklight/androidgap/plugin/WifiPlugin$Action;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;->$VALUES:[Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

    invoke-virtual {v0}, [Lcom/worklight/androidgap/plugin/WifiPlugin$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

    return-object v0
.end method
