.class Lcom/worklight/androidgap/plugin/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/Utils;->clearHistory()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/Utils;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/plugin/Utils;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/Utils$2;->this$0:Lcom/worklight/androidgap/plugin/Utils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Utils$2;->this$0:Lcom/worklight/androidgap/plugin/Utils;

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/Utils;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v0}, Lcom/worklight/androidgap/WLDroidGap;->clearHistory()V

    .line 158
    return-void
.end method
