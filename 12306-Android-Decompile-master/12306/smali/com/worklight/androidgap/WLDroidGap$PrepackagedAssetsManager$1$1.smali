.class Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1$1;
.super Ljava/lang/Object;
.source "WLDroidGap.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1$1;->this$2:Lcom/worklight/androidgap/WLDroidGap$PrepackagedAssetsManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 544
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 547
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 548
    return-void
.end method
