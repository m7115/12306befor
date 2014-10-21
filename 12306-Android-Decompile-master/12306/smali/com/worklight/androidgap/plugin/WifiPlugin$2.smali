.class synthetic Lcom/worklight/androidgap/plugin/WifiPlugin$2;
.super Ljava/lang/Object;
.source "WifiPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/WifiPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$worklight$androidgap$plugin$WifiPlugin$Action:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;->values()[Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin$2;->$SwitchMap$com$worklight$androidgap$plugin$WifiPlugin$Action:[I

    :try_start_0
    sget-object v0, Lcom/worklight/androidgap/plugin/WifiPlugin$2;->$SwitchMap$com$worklight$androidgap$plugin$WifiPlugin$Action:[I

    sget-object v1, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;->ACQUIRE_WIFI:Lcom/worklight/androidgap/plugin/WifiPlugin$Action;

    invoke-virtual {v1}, Lcom/worklight/androidgap/plugin/WifiPlugin$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
