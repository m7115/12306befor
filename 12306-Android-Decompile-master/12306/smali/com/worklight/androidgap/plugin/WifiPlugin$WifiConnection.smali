.class Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;
.super Ljava/lang/Object;
.source "WifiPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/WifiPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiConnection"
.end annotation


# instance fields
.field private MAC:Ljava/lang/String;

.field private SSID:Ljava/lang/String;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/WifiPlugin;


# direct methods
.method public constructor <init>(Lcom/worklight/androidgap/plugin/WifiPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "sSID"
    .parameter "mAC"

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->this$0:Lcom/worklight/androidgap/plugin/WifiPlugin;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->SSID:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->MAC:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->SSID:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->MAC:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public getMAC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->MAC:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$WifiConnection;->SSID:Ljava/lang/String;

    return-object v0
.end method
