.class final enum Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;
.super Ljava/lang/Enum;
.source "ForegroundBinderPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

.field public static final enum BIND_TO_SERVICE:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

.field public static final enum UNBIND_FROM_SERVICE:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

    const-string v1, "BIND_TO_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;->BIND_TO_SERVICE:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

    new-instance v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

    const-string v1, "UNBIND_FROM_SERVICE"

    invoke-direct {v0, v1, v3}, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;->UNBIND_FROM_SERVICE:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

    sget-object v1, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;->BIND_TO_SERVICE:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;->UNBIND_FROM_SERVICE:Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

    aput-object v1, v0, v3

    sput-object v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;->$VALUES:[Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

    return-object v0
.end method

.method public static values()[Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;->$VALUES:[Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

    invoke-virtual {v0}, [Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/worklight/androidgap/plugin/ForegroundBinderPlugin$Action;

    return-object v0
.end method
