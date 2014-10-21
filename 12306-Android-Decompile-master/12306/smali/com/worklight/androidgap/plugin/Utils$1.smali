.class Lcom/worklight/androidgap/plugin/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/Utils;->webViewReload()Ljava/lang/String;
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
    .line 145
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/Utils$1;->this$0:Lcom/worklight/androidgap/plugin/Utils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Utils$1;->this$0:Lcom/worklight/androidgap/plugin/Utils;

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/Utils;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->reload()V

    .line 148
    return-void
.end method
