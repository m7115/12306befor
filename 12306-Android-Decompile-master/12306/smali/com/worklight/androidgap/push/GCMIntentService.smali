.class public Lcom/worklight/androidgap/push/GCMIntentService;
.super Lcom/worklight/androidgap/push/WLGCMIntentService;
.source "GCMIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/worklight/androidgap/WLDroidGap;->getWLConfig()Lcom/worklight/common/WLConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/worklight/androidgap/WLDroidGap;->getWLConfig()Lcom/worklight/common/WLConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/worklight/common/WLConfig;->getGCMSender()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/worklight/androidgap/push/WLGCMIntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void

    .line 21
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
