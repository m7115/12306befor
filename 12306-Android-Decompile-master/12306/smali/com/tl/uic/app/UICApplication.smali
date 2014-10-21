.class public Lcom/tl/uic/app/UICApplication;
.super Landroid/app/Application;
.source "UICApplication.java"


# instance fields
.field private tealeaf:Lcom/tl/uic/Tealeaf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTealeaf()Lcom/tl/uic/Tealeaf;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tl/uic/app/UICApplication;->tealeaf:Lcom/tl/uic/Tealeaf;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 30
    new-instance v0, Lcom/tl/uic/Tealeaf;

    invoke-direct {v0, p0}, Lcom/tl/uic/Tealeaf;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/tl/uic/app/UICApplication;->tealeaf:Lcom/tl/uic/Tealeaf;

    .line 31
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/tl/uic/Tealeaf;->onLowMemory()Ljava/lang/Boolean;

    .line 39
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 40
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 47
    invoke-static {}, Lcom/tl/uic/Tealeaf;->disable()Ljava/lang/Boolean;

    .line 48
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 49
    return-void
.end method
