.class Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;
.super Ljava/lang/Object;
.source "WLDroidGap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->handleNotEnoughSpace(Ljava/lang/Long;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;

.field final synthetic val$decimalFormat:Ljava/text/DecimalFormat;

.field final synthetic val$spaceNeeded:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;Ljava/text/DecimalFormat;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;->this$1:Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;

    iput-object p2, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;->val$decimalFormat:Ljava/text/DecimalFormat;

    iput-object p3, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;->val$spaceNeeded:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 540
    iget-object v0, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;->this$1:Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;

    iget-object v0, v0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    const-string v1, "Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application installation failed because there is insufficient storage space available. Free "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;->val$decimalFormat:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;->val$spaceNeeded:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4130

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MB and try again."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exit"

    new-instance v4, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1$1;

    invoke-direct {v4, p0}, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1$1;-><init>(Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/worklight/common/WLUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 550
    return-void
.end method
