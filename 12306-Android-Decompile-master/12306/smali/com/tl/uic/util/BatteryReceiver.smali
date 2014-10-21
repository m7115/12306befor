.class public Lcom/tl/uic/util/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# instance fields
.field private health:I

.field private plugged:I

.field private present:Z

.field private scale:I

.field private status:I

.field private technology:Ljava/lang/String;

.field private temperature:I

.field private value:I

.field private voltage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 15
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->value:I

    .line 16
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->health:I

    .line 17
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->plugged:I

    .line 18
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->status:I

    .line 19
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->temperature:I

    .line 20
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->voltage:I

    .line 21
    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->scale:I

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tl/uic/util/BatteryReceiver;->present:Z

    .line 14
    return-void
.end method


# virtual methods
.method public final getHealth()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/tl/uic/util/BatteryReceiver;->health:I

    return v0
.end method

.method public final getPlugged()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/tl/uic/util/BatteryReceiver;->plugged:I

    return v0
.end method

.method public final getScale()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/tl/uic/util/BatteryReceiver;->scale:I

    return v0
.end method

.method public final getStatus()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/tl/uic/util/BatteryReceiver;->status:I

    return v0
.end method

.method public final getTechnology()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tl/uic/util/BatteryReceiver;->technology:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "NA"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tl/uic/util/BatteryReceiver;->technology:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getTemperature()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/tl/uic/util/BatteryReceiver;->temperature:I

    return v0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/tl/uic/util/BatteryReceiver;->value:I

    return v0
.end method

.method public final getVoltage()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/tl/uic/util/BatteryReceiver;->voltage:I

    return v0
.end method

.method public final isPresent()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/tl/uic/util/BatteryReceiver;->present:Z

    return v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 96
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "level"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->value:I

    .line 98
    const-string v0, "health"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->health:I

    .line 99
    const-string v0, "plugged"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->plugged:I

    .line 100
    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->status:I

    .line 101
    const-string v0, "temperature"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->temperature:I

    .line 102
    const-string v0, "voltage"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->voltage:I

    .line 103
    const-string v0, "scale"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tl/uic/util/BatteryReceiver;->scale:I

    .line 104
    const-string v0, "present"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tl/uic/util/BatteryReceiver;->present:Z

    .line 105
    const-string v0, "technology"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/util/BatteryReceiver;->technology:Ljava/lang/String;

    .line 107
    :cond_0
    return-void
.end method
