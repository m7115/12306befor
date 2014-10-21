.class public final enum Lcom/worklight/androidgap/plugin/Utils$ACTION;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/worklight/androidgap/plugin/Utils$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum clearHistory:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum clearSessionCookies:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum copyToClipboard:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum getAvailableSpace:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum getDeviceLocale:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum getInitParameters:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum getScreenHeight:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum getScreenSize:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum getScreenWidth:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum loadSkin:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum openURL:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum readPref:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum reload:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum reloadApp:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum toast:Lcom/worklight/androidgap/plugin/Utils$ACTION;

.field public static final enum writePref:Lcom/worklight/androidgap/plugin/Utils$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "writePref"

    invoke-direct {v0, v1, v3}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->writePref:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "readPref"

    invoke-direct {v0, v1, v4}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->readPref:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "loadSkin"

    invoke-direct {v0, v1, v5}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->loadSkin:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "getScreenHeight"

    invoke-direct {v0, v1, v6}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->getScreenHeight:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "getScreenWidth"

    invoke-direct {v0, v1, v7}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->getScreenWidth:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "getScreenSize"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->getScreenSize:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "openURL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->openURL:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "getDeviceLocale"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->getDeviceLocale:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "clearSessionCookies"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->clearSessionCookies:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "copyToClipboard"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->copyToClipboard:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    .line 51
    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "toast"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->toast:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "clearHistory"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->clearHistory:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "reload"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->reload:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "getAvailableSpace"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->getAvailableSpace:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "getInitParameters"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->getInitParameters:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    new-instance v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    const-string v1, "reloadApp"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/Utils$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->reloadApp:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    .line 49
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/worklight/androidgap/plugin/Utils$ACTION;

    sget-object v1, Lcom/worklight/androidgap/plugin/Utils$ACTION;->writePref:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/worklight/androidgap/plugin/Utils$ACTION;->readPref:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/worklight/androidgap/plugin/Utils$ACTION;->loadSkin:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/worklight/androidgap/plugin/Utils$ACTION;->getScreenHeight:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/worklight/androidgap/plugin/Utils$ACTION;->getScreenWidth:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/worklight/androidgap/plugin/Utils$ACTION;->getScreenSize:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/worklight/androidgap/plugin/Utils$ACTION;->openURL:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/worklight/androidgap/plugin/Utils$ACTION;->getDeviceLocale:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/worklight/androidgap/plugin/Utils$ACTION;->clearSessionCookies:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/worklight/androidgap/plugin/Utils$ACTION;->copyToClipboard:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/worklight/androidgap/plugin/Utils$ACTION;->toast:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/worklight/androidgap/plugin/Utils$ACTION;->clearHistory:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/worklight/androidgap/plugin/Utils$ACTION;->reload:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/worklight/androidgap/plugin/Utils$ACTION;->getAvailableSpace:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/worklight/androidgap/plugin/Utils$ACTION;->getInitParameters:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/worklight/androidgap/plugin/Utils$ACTION;->reloadApp:Lcom/worklight/androidgap/plugin/Utils$ACTION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->$VALUES:[Lcom/worklight/androidgap/plugin/Utils$ACTION;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/Utils$ACTION;
    .locals 2
    .parameter "Str"

    .prologue
    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/worklight/androidgap/plugin/Utils$ACTION;->valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/Utils$ACTION;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/Utils$ACTION;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;

    return-object v0
.end method

.method public static values()[Lcom/worklight/androidgap/plugin/Utils$ACTION;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/worklight/androidgap/plugin/Utils$ACTION;->$VALUES:[Lcom/worklight/androidgap/plugin/Utils$ACTION;

    invoke-virtual {v0}, [Lcom/worklight/androidgap/plugin/Utils$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/worklight/androidgap/plugin/Utils$ACTION;

    return-object v0
.end method
