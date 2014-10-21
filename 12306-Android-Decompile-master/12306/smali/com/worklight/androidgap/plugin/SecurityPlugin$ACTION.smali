.class public abstract enum Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
.super Ljava/lang/Enum;
.source "SecurityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/SecurityPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

.field public static final enum decrypt:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

.field public static final enum encrypt:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

.field public static final enum hashData:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

.field public static final enum keygen:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$1;

    const-string v1, "keygen"

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->keygen:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    .line 52
    new-instance v0, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$2;

    const-string v1, "encrypt"

    invoke-direct {v0, v1, v3}, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->encrypt:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    .line 64
    new-instance v0, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$3;

    const-string v1, "decrypt"

    invoke-direct {v0, v1, v4}, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->decrypt:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    .line 76
    new-instance v0, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$4;

    const-string v1, "hashData"

    invoke-direct {v0, v1, v5}, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->hashData:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    sget-object v1, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->keygen:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->encrypt:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->decrypt:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->hashData:Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    aput-object v1, v0, v5

    sput-object v0, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->$VALUES:[Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/worklight/androidgap/plugin/SecurityPlugin$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
    .locals 2
    .parameter "action"

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 101
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    return-object v0
.end method

.method public static values()[Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->$VALUES:[Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    invoke-virtual {v0}, [Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;

    return-object v0
.end method


# virtual methods
.method protected abstract execute(Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;Landroid/content/Context;)Z
.end method

.method protected executeError(Lcom/worklight/androidgap/plugin/SecurityPlugin$ACTION;Lorg/apache/cordova/api/CallbackContext;Ljava/lang/String;)Z
    .locals 2
    .parameter "action"
    .parameter "callbackCtx"
    .parameter "err"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method
