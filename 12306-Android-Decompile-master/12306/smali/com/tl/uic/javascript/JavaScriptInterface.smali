.class public Lcom/tl/uic/javascript/JavaScriptInterface;
.super Ljava/lang/Object;
.source "JavaScriptInterface.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    move-object v0, p1

    .line 19
    .local v0, _context:Landroid/content/Context;
    return-void
.end method


# virtual methods
.method public final addMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 27
    invoke-static {p1}, Lcom/tl/uic/TLFCache;->addMessage(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 28
    return-void
.end method
