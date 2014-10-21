.class public Lcom/MobileTicket/WebPayActivity;
.super Landroid/app/Activity;
.source "WebPayActivity.java"


# static fields
.field private static callJSFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/MobileTicket/WebPayActivity;->callJSFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isCallJSFlag()Z
    .locals 1

    .prologue
    .line 11
    sget-boolean v0, Lcom/MobileTicket/WebPayActivity;->callJSFlag:Z

    return v0
.end method

.method public static setCallJSFlag(Z)V
    .locals 0
    .parameter "callJSFlag"

    .prologue
    .line 14
    sput-boolean p0, Lcom/MobileTicket/WebPayActivity;->callJSFlag:Z

    .line 15
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/MobileTicket/MobileTicket;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/MobileTicket/WebPayActivity;->setCallJSFlag(Z)V

    .line 22
    invoke-super {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 23
    return-void
.end method
