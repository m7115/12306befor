.class public Lcom/tl/uic/util/ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenReceiver.java"


# static fields
.field private static final ROTATION_18O:I = 0xb4

.field private static final ROTATION_9O:I = 0x5a

.field private static final ROTATION_NEGATIVE_9O:I = -0x5a

.field private static final ROTATION_O:I


# instance fields
.field private height:I

.field private rotation:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/tl/uic/util/ScreenReceiver;->rotation:I

    .line 55
    invoke-direct {p0}, Lcom/tl/uic/util/ScreenReceiver;->screenUpdate()Landroid/view/Display;

    .line 56
    return-void
.end method

.method private screenUpdate()Landroid/view/Display;
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/tl/uic/Tealeaf;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    check-cast v1, Landroid/view/WindowManager;

    .line 63
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 64
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/tl/uic/util/ScreenReceiver;->height:I

    .line 65
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/tl/uic/util/ScreenReceiver;->width:I

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Screen height:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tl/uic/util/ScreenReceiver;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Screen width"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tl/uic/util/ScreenReceiver;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/tl/uic/util/ScreenReceiver;->height:I

    return v0
.end method

.method public final getRotation()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/tl/uic/util/ScreenReceiver;->rotation:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/tl/uic/util/ScreenReceiver;->width:I

    return v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 75
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/tl/uic/util/ScreenReceiver;->screenUpdate()Landroid/view/Display;

    move-result-object v0

    .line 79
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 95
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Screen change:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tl/uic/util/ScreenReceiver;->rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tl/uic/EnvironmentalData;->hasClientStateChanged()Ljava/lang/Boolean;

    .line 101
    .end local v0           #display:Landroid/view/Display;
    :cond_0
    return-void

    .line 81
    .restart local v0       #display:Landroid/view/Display;
    :pswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/tl/uic/util/ScreenReceiver;->rotation:I

    goto :goto_0

    .line 84
    :pswitch_1
    const/16 v1, 0x5a

    iput v1, p0, Lcom/tl/uic/util/ScreenReceiver;->rotation:I

    goto :goto_0

    .line 87
    :pswitch_2
    const/16 v1, 0xb4

    iput v1, p0, Lcom/tl/uic/util/ScreenReceiver;->rotation:I

    goto :goto_0

    .line 90
    :pswitch_3
    const/16 v1, -0x5a

    iput v1, p0, Lcom/tl/uic/util/ScreenReceiver;->rotation:I

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
