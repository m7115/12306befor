.class Lcom/worklight/androidgap/WLDroidGap$1;
.super Ljava/lang/Object;
.source "WLDroidGap.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/WLDroidGap;->testResourcesChecksum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/WLDroidGap;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/WLDroidGap;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/worklight/androidgap/WLDroidGap$1;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 148
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 149
    return-void
.end method
