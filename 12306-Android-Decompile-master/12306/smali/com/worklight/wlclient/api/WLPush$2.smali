.class Lcom/worklight/wlclient/api/WLPush$2;
.super Ljava/lang/Object;
.source "WLPush.java"

# interfaces
.implements Lcom/worklight/wlclient/api/WLResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/wlclient/api/WLPush;->unsubscribe(Ljava/lang/String;Lcom/worklight/wlclient/api/WLResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/wlclient/api/WLPush;


# direct methods
.method constructor <init>(Lcom/worklight/wlclient/api/WLPush;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$2;->this$0:Lcom/worklight/wlclient/api/WLPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/worklight/wlclient/api/WLFailResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 281
    const-string v0, "WLPush.unsubscribe: error unsubscribing from notifications"

    invoke-static {v0}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public onSuccess(Lcom/worklight/wlclient/api/WLResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 278
    return-void
.end method
