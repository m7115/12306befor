.class public Lcom/tl/uic/util/TLUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "TLUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/util/TLUncaughtExceptionHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 19
    return-void
.end method


# virtual methods
.method public final setDefaultUncaughtExceptionHandler()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tl/uic/util/TLUncaughtExceptionHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 35
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"
    .parameter "e"

    .prologue
    .line 26
    invoke-static {p2}, Lcom/tl/uic/Tealeaf;->logException(Ljava/lang/Throwable;)Ljava/lang/Boolean;

    .line 27
    iget-object v0, p0, Lcom/tl/uic/util/TLUncaughtExceptionHandler;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method
