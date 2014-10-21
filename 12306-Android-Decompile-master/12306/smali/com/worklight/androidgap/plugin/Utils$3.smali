.class Lcom/worklight/androidgap/plugin/Utils$3;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/Utils;->loadSkin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/Utils;

.field final synthetic val$activity:Lcom/worklight/androidgap/WLDroidGap;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/plugin/Utils;Lcom/worklight/androidgap/WLDroidGap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/Utils$3;->this$0:Lcom/worklight/androidgap/plugin/Utils;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/Utils$3;->val$activity:Lcom/worklight/androidgap/WLDroidGap;

    iput-object p3, p0, Lcom/worklight/androidgap/plugin/Utils$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/Utils$3;->val$activity:Lcom/worklight/androidgap/WLDroidGap;

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/Utils$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/worklight/androidgap/WLDroidGap;->loadUrl(Ljava/lang/String;)V

    .line 283
    return-void
.end method
