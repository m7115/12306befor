.class Lcom/worklight/wlclient/api/WLClient$HeartbeatListener;
.super Ljava/lang/Object;
.source "WLClient.java"

# interfaces
.implements Lcom/worklight/wlclient/WLRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/api/WLClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeartbeatListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/api/WLClient;


# direct methods
.method constructor <init>(Lcom/worklight/wlclient/api/WLClient;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLClient$HeartbeatListener;->this$0:Lcom/worklight/wlclient/api/WLClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V
    .locals 1
    .parameter "failResponse"

    .prologue
    .line 791
    const-string v0, "Failed to send heartbeat."

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method public onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 795
    const-string v0, "Heartbeat sent successfully"

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->debug(Ljava/lang/String;)V

    .line 796
    return-void
.end method
